//
//  PrimeNumberCalculator.cpp
//  ThreadPoolExercise
//
//  Created by Logesh G on 26/02/21.
//

#include "PrimeNumberCalculator.h"

using namespace std;

bool prime_number_calculator::is_prime_num(int n)
{
    if (n < 0)
    {
        return false;
    }

    // 0 and 1 are not prime numbers
    if (n == 0 || n == 1) 
    {
        return false;
    }
    else 
    {
        for (int i = 2; i <= n / 2; ++i) 
        {
            if (n % i == 0) 
            {
                return false;
            }
        }
    }

    return true;
}

void prime_number_calculator::count_prime_numbers(int num)
{
    bool is_prime = is_prime_num(num);
    
    if (is_prime)
    {  
        std::scoped_lock<mutex> lock(m_monitor_mtx);
        m_prime_number_count++;
    }

    {
        std::scoped_lock<mutex> lock(m_monitor_mtx);
        m_processed_task_count++;
    }
}

void prime_number_calculator::print_thread_info(thread_status thread_status_info)
{
    cout<<"Total time taken by "<< (int)(thread_status_info.m_thread_info.size()) <<" worker threads is " << (thread_status_info.m_processed_time) << " seconds\n";

    cout<<"Status of each thread\n";
    
    for(auto map_itr=thread_status_info.m_thread_info.begin(); map_itr!=thread_status_info.m_thread_info.end();map_itr++)
    {
        cout<< map_itr->first << ". ThreadId: "<<map_itr->second.m_thread_id << " , Count: " << map_itr->second.m_processed_count << "\n";
    }
}

void prime_number_calculator::monitor_worker_status(int total_task_count)
{
    int cur_task_processed = 0;

    while (true)
    {
        {
            std::scoped_lock<mutex> lock(m_monitor_mtx);
            cur_task_processed = m_processed_task_count;
        }

        cout << "Processed till " << cur_task_processed << "\n";

        if (cur_task_processed >= total_task_count)
        {
            break;
        }
    }
    
    cout << "Total Prime Number count " << m_prime_number_count << "\n";
    
    m_thread_pool->end_thread_pool();

    thread_status thread_status_info = m_thread_pool->get_thread_status();

    print_thread_info(thread_status_info);
}

int prime_number_calculator::calculate_prime_number_in_range(int start_range, int end_range, int workers)
{
    if(workers <= 0)
    {
        workers = 1;
    }

    m_thread_pool = std::make_unique<thread_pool>(workers);
    
    m_thread_pool->execute();

    for (int i = start_range; i <= end_range; i++)
    {
        std::function<void(int)> func_address = std::bind(&prime_number_calculator::count_prime_numbers, this, i);
        
        task input_task;
        input_task.m_function = func_address;
        input_task.m_param = i;
        
        m_thread_pool->add_task_to_queue(input_task);
    }
    
    int total_task_count = end_range - start_range + 1;
    monitor_worker_status(total_task_count);
    
    //If sync, then we need to return the value;
    //In sync case, we need to add the thread pool joins here & wait for threads to finish and return the value.
    return m_prime_number_count;
}


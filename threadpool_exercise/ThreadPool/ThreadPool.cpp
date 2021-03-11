//
//  ThreadPool.cpp
//  ThreadPoolExercise
//
//  Created by Logesh G on 26/02/21.
//

#include "ThreadPool.h"

using namespace std;

thread_pool::thread_pool(int count): m_thread_count(count), m_can_end_worker_thread(false)
{
}

thread_pool::~thread_pool()
{
    end_thread_pool();
}

void thread_pool::handle_thread_info(int id, std::thread::id thread_id)
{
    if(m_thread_info_map.find(id) == m_thread_info_map.end())
    {
        thread_info thread_info;
        thread_info.m_thread_id = thread_id;
        thread_info.m_processed_count = 0;
        m_thread_info_map.insert({id, thread_info});
    }
    else
    {
        m_thread_info_map[id].m_processed_count++;
    }
}

void thread_pool::do_work(int id)
{
    const std::thread::id thread_id= std::this_thread::get_id();
    
    {
        std::scoped_lock<mutex> lock(m_mtx);
        handle_thread_info(id, thread_id);
    }

    while (!m_can_end_worker_thread)
    {
        std::unique_lock<mutex> lock(m_mtx);
        
        cv.wait(lock, [this]{return (m_task_queue.size() > 0 || m_can_end_worker_thread);} );

        if (m_task_queue.size() <= 0) 
        {
            continue;
        }
        
        task task = m_task_queue.front();
        m_task_queue.pop();
    
        handle_thread_info(id, thread_id);
    
        task.m_function(task.m_param);
    }
}

void thread_pool::execute()
{
    m_start_time = time(NULL);
     
    for (unsigned i = 0; i < m_thread_count; ++i) 
    {
        m_threads.push_back(std::thread(&thread_pool::do_work, this, i));
    }
} 

void thread_pool::add_task_to_queue(task input_task)
{   
    std::unique_lock<mutex> lock(m_mtx);
    m_task_queue.emplace(input_task);
    cv.notify_one();
}

void thread_pool::end_thread_pool()
{
    if(!m_can_end_worker_thread)
    {
        m_can_end_worker_thread = true;

        std::unique_lock<mutex> lock(m_mtx);
        
        cv.notify_all();
        
        lock.unlock();

        for (auto& thread : m_threads) 
        {
            if (thread.joinable()) 
            {
                thread.join();
            }
        }

        m_end_time = time(NULL);
    }
}

thread_status thread_pool::get_thread_status()
{
    thread_status thread_status_info;
    thread_status_info.m_processed_time = (m_end_time-m_start_time);
    thread_status_info.m_thread_info = m_thread_info_map;
    return thread_status_info;
}
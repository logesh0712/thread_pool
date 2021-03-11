//
//  PrimeNumberCalculator.h
//  ThreadPoolExercise
//
//  Created by Logesh G on 26/02/21.
//

#pragma once

#include "ThreadPool.h"
#include <stdio.h>
#include <iostream>
#include <functional>

class prime_number_calculator
{
public:
    //Driver program will call this.
    int calculate_prime_number_in_range(int start_range, int end_range, int workers=1);
    
    //Thread pool will call this.
    void count_prime_numbers(int counter); 

private:
    std::unique_ptr<thread_pool> m_thread_pool;
    std::mutex m_monitor_mtx;
    int m_processed_task_count = 0;
    int m_prime_number_count = 0;
    
    bool is_prime_num(int n);
    void monitor_worker_status(int total_task_count);
    void print_thread_info(thread_status thread_status_info);
};

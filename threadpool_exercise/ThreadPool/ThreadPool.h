//
//  ThreadPool.h
//  ThreadPoolExercise
//
//  Created by Logesh G on 26/02/21.
//

#pragma once 

#include <iostream>
#include <stdio.h>
#include <stdatomic.h>
#include <time.h>
#include <unistd.h>

#include <queue>
#include <map>
#include <mutex>
#include <thread>
#include <vector>

struct task
{
    std::function<void(int)> m_function;
    int m_param;
};

struct thread_info
{
    std::thread::id m_thread_id;
    int m_processed_count;
};

struct thread_status
{
    std::map<int, thread_info> m_thread_info;
    int m_processed_time;
};

//responsibility of thread_pool
//thread_pool creates n worker threads based on input.
//task queue is pushed with tasks to be executed and worker threads are notified.
//then waiting worker thread will pick the task from queue and will process it.
//also there is a map to book keep on how much task each thread processed.
//also time taken to executed all tasks with worker thread is also calculated.
class thread_pool
{
public:
    explicit thread_pool(int count);

    ~thread_pool();

    void execute();

    void add_task_to_queue(task inputTask);

    void end_thread_pool();

    thread_status get_thread_status();

private:
    std::vector<std::thread> m_threads;
    
    std::mutex m_mtx;

    std::queue<task> m_task_queue;
    
    uint32_t m_thread_count;

    std::atomic<bool> m_can_end_worker_thread;

    time_t m_start_time, m_end_time;

    std::map<int, thread_info> m_thread_info_map;

    std::condition_variable cv;
    
    void do_work(int identifier);
    
    void handle_thread_info(int id, std::thread::id thread_id);
};


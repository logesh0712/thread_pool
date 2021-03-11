**thread pool exercise**

**Problem statement:**
  Implement a thread pool. Any application should make use of that thread pool to process the tasks.
  
**Design of thread pool:**
  thread_pool creates n worker threads based on input and initially all worker threads will be in waiting state.
  task queue is pushed with tasks to be executed and worker threads are notified.
  then waiting worker thread will pick the task from queue and will process it.
  also there is a map to book keep on how much task each thread processed.
  also time taken to executed all tasks with worker thread is also calculated.
  once all tasks are done, worker threads are notified and worker thread will end its execution.
  also, thread pool is made as a seperate library.
  
  For our example calulation of prime numbers between ranges is the example. 
  Prime number calculation will make use of thread pool and execute its task.
  
  

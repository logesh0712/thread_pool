//
//  driver.cpp
//  ThreadPoolExercise
//
//  Created by Logesh G on 26/02/21.
//

#include <iostream>
#include "PrimeNumberApp/PrimeNumberCalculator.h"

using namespace std;
int main(int argc, const char * argv[]) {

    int start, end, worker_threads;

    while(true)
    {
        cout<<"Enter start range of prime number\n";
        cin>>start;
        
        if(start<1)
        {
            cout<<"Enter proper Start value: Start value should be greater than 0";
            continue;
        }
            
        cout<<"Enter end range of prime number\n";
        cin>>end;

        if(start>end)
        {
            cout<<"Enter proper End value. End value should be greater than start value\n";
            continue;
        }
        
        cout<<"Enter number of workers to complete the job\n";
        cin>>worker_threads;
        
        if(worker_threads<1)
        {
            cout<<"Workers 1 worker should be to complete the job\n";
            continue;
        }
            
        break;
    }
    
    
    prime_number_calculator calculator;
    
    calculator.calculate_prime_number_in_range(start, end, worker_threads);
    
    return 0;
}

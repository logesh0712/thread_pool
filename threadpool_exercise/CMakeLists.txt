cmake_minimum_required(VERSION 3.19.6)

set(CMAKE_CXX_STANDARD 17)

project (primeNumberApp)

include_directories(PrimeNumberApp ThreadPool)

set ( PROJECT_LINK_LIBS libThreadPool.dylib )
link_directories( ThreadPool/build/ )

set(SOURCES 
    PrimeNumberApp/PrimeNumberCalculator.cpp 
    driver.cpp
    ThreadPool/ThreadPool.h
)

set(TARGETNAME primeNumberApp)

add_executable(${TARGETNAME} ${SOURCES})
target_link_libraries(${TARGETNAME} ${PROJECT_LINK_LIBS} )

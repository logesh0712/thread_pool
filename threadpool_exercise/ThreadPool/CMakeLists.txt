cmake_minimum_required(VERSION 3.19.6)

set(CMAKE_CXX_STANDARD 17)

project (threadpool)

set(SOURCES ThreadPool.cpp)
set(TARGETNAME ThreadPool)

add_library(${TARGETNAME} SHARED ${SOURCES})

install(TARGETS ${TARGETNAME} DESTINATION /usr/lib)

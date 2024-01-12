cmake_minimum_required(VERSION 3.10)

project(hello)

add_subdirectory(base)

add_executable(hello main.cc Poller.cc EpollPoller.cc 
   EventLoop.cc Channel.cc )

target_link_libraries(hello PUBLIC baselib)
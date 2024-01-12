cmake_minimum_required(VERSION 3.10)
project(base)

set(BASE_SRC ${CMAKE_CURRENT_SOURCE_DIR}/CurrentThread.cc  Timestamp.cc)

add_library(baselib SHARED ${BASE_SRC})
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(fictrac)
add_executable(fictrac FicTrac.cpp)
target_link_libraries(fictrac ${fictrac_ext_link_LIBS} libfictrac cpp_redis tacopie pthread)



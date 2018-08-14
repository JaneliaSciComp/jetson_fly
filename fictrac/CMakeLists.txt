cmake_minimum_required (VERSION 2.8)

project(fictrac_build)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

find_package(OpenCV 3.4.0 REQUIRED)
if(${OpenCV_FOUND})
    message(STATUS "OpenCV found")
endif()
find_package(Cairo REQUIRED)
find_package(Cairomm REQUIRED)
find_package(Threads REQUIRED)
find_package(NLOPT REQUIRED)

set(fictrac_ext_link_LIBS ${OpenCV_LIBS} ${CAIRO_LIBRARIES} ${CAIROMM_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT} ${NLOPT_LIBRARIES})
if (UNIX AND NOT APPLE) 
    set(fictrac_ext_link_LIBS ${fictrac_ext_link_LIBS} rt phidget22)
endif()

set(CMAKE_CXX_FLAGS "-O3 -Wall -fmessage-length=0 -std=c++11 -Wno-unused-function ${CAIRO_DEFINITIONS} ${CAIROMM_DEFINITIONS} ${NLOPT_DEFINITIONS}")
include_directories("./include" ${OpenCV_INCLUDE_DIRS} ${CAIRO_INCLUDE_DIRS} ${CAIROMM_INCLUDE_DIRS} ${NLOPT_INCLUDE_DIRS})
add_subdirectory("lib") 
add_subdirectory("src")

# Install script for directory: /home/nvidia/kinefly_catkin_ws/src/Kinefly

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/kinefly_catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Kinefly/msg" TYPE FILE FILES
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/msg/MsgAnalogIn.msg"
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/msg/MsgCommand.msg"
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/msg/MsgDigitalIn.msg"
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/msg/MsgFloat32List.msg"
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/msg/MsgFlystate.msg"
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/msg/MsgState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Kinefly/srv" TYPE FILE FILES
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/srv/SrvFloat32List.srv"
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/srv/SrvTipdata.srv"
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/srv/SrvTrackerdata.srv"
    "/home/nvidia/kinefly_catkin_ws/src/Kinefly/srv/SrvWingdata.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Kinefly/cmake" TYPE FILE FILES "/home/nvidia/kinefly_catkin_ws/build/Kinefly/catkin_generated/installspace/Kinefly-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/kinefly_catkin_ws/devel/include/Kinefly")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/kinefly_catkin_ws/devel/share/roseus/ros/Kinefly")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/kinefly_catkin_ws/devel/share/common-lisp/ros/Kinefly")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/kinefly_catkin_ws/devel/share/gennodejs/ros/Kinefly")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nvidia/kinefly_catkin_ws/devel/lib/python2.7/dist-packages/Kinefly")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/kinefly_catkin_ws/devel/lib/python2.7/dist-packages/Kinefly")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Kinefly" TYPE FILE FILES "/home/nvidia/kinefly_catkin_ws/devel/include/Kinefly/kineflyConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/Kinefly" TYPE FILE FILES "/home/nvidia/kinefly_catkin_ws/devel/lib/python2.7/dist-packages/Kinefly/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nvidia/kinefly_catkin_ws/devel/lib/python2.7/dist-packages/Kinefly/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/Kinefly" TYPE DIRECTORY FILES "/home/nvidia/kinefly_catkin_ws/devel/lib/python2.7/dist-packages/Kinefly/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/kinefly_catkin_ws/build/Kinefly/catkin_generated/installspace/Kinefly.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Kinefly/cmake" TYPE FILE FILES "/home/nvidia/kinefly_catkin_ws/build/Kinefly/catkin_generated/installspace/Kinefly-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Kinefly/cmake" TYPE FILE FILES
    "/home/nvidia/kinefly_catkin_ws/build/Kinefly/catkin_generated/installspace/KineflyConfig.cmake"
    "/home/nvidia/kinefly_catkin_ws/build/Kinefly/catkin_generated/installspace/KineflyConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Kinefly" TYPE FILE FILES "/home/nvidia/kinefly_catkin_ws/src/Kinefly/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Kinefly" TYPE PROGRAM FILES "/home/nvidia/kinefly_catkin_ws/src/Kinefly/nodes/kinefly.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Kinefly" TYPE DIRECTORY FILES "" FILES_MATCHING REGEX "/[^/]*\\.launch$" REGEX "/\\.svn$" EXCLUDE)
endif()


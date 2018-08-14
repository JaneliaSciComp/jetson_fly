cmake_minimum_required (VERSION 2.8)

project(libfictrac)

set( 
    libfictrac_SOURCE 
    AVWriter.cpp
    CameraModel.cpp
    CameraRemap.cpp
    CmPoint.cpp
    CVSource.cpp
    EquiAreaCameraModel.cpp
    FisheyeCameraModel.cpp
    ImgSource.cpp
    Maths.cpp
    NLoptFunc.cpp
    PGRSource.cpp
    readwrite.cpp
    RectilinearCameraModel.cpp
    Remapper.cpp
    serial.cpp
    Utils.cpp
    VsDraw.cpp
    )

add_library(libfictrac ${libfictrac_SOURCE})
target_link_libraries(libfictrac ${fictrac_ext_link_LIBS})


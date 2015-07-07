project(STRUCK)

cmake_minimum_required(VERSION 2.6)

set (OpenCV_DIR $ENV{OPENCV_DIR})
find_package(OpenCV REQUIRED)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Build type" FORCE)
endif()

INCLUDE_DIRECTORIES ( src/GraphUtils ${OpenCV_INCLUDE_DIRS} $ENV{EIGEN_DIR}/)

add_library(STRUCK STATIC
    src/struck/Config.cpp
    src/struck/Features.cpp
    src/struck/HaarFeature.cpp
    src/struck/HaarFeatures.cpp
    src/struck/HistogramFeatures.cpp
    src/struck/ImageRep.cpp
    src/struck/LaRank.cpp
    src/struck/main.cpp
    src/struck/MultiFeatures.cpp
    src/struck/RawFeatures.cpp
    src/struck/Sampler.cpp
    src/struck/Tracker.cpp
    src/struck/GraphUtils/GraphUtils.cpp
    )

target_link_libraries(STRUCK ${OpenCV_LIBS})

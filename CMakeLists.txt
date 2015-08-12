project(STRUCK)
cmake_minimum_required(VERSION 2.6)

find_package(OpenCV REQUIRED highgui video videoio imgproc imgcodecs)
include_directories(src/GraphUtils
  ${OpenCV_INCLUDE_DIRS}
  /usr/include/eigen3/
  /usr/local/include/eigen3/)


set(STRUCK_INCLUDE "
 ${CMAKE_CURRENT_SOURCE_DIR}/src;
  /usr/include/eigen3;
  /usr/local/include/eigen3")
set(STRUCK_INCLUDE ${STRUCK_INCLUDE} PARENT_SCOPE)

include_directories(${struck_path}/src)
include_directories(/usr/include/eigen3
                    /usr/local/include/eigen3)

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

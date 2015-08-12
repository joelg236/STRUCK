cmake_minimum_required(VERSION 2.6)

string(REGEX REPLACE "cmake$" "" struck_path ${CMAKE_CURRENT_LIST_FILE})

if (NOT TARGET STRUCK)
  add_subdirectory(${struck_path} struck_build)
endif()

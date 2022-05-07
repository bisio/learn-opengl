cmake_minimum_required(VERSION 3.10)
project (Roveto VERSION 0.1)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include_directories(libs/glad/include)
include_directories(src)

list(APPEND EXTRA_LIBS -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl)

add_executable(triangle src/triangle.cpp libs/glad/src/glad.c)
target_link_libraries(triangle ${EXTRA_LIBS})

add_executable(triangle-green src/triangle-green.cpp libs/glad/src/glad.c)
target_link_libraries(triangle-green ${EXTRA_LIBS})

add_executable(triangle-color-ext src/triangle-color-ext.cpp libs/glad/src/glad.c )
target_link_libraries(triangle-color-ext ${EXTRA_LIBS})



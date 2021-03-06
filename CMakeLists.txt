cmake_minimum_required(VERSION 3.10)
project (Roveto VERSION 0.1)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include_directories(libs/glad/include)
include_directories(libs/stb_image)
include_directories(libs/glm)
include_directories(src)

list(APPEND EXTRA_LIBS -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl)

add_executable(triangle src/triangle.cpp libs/glad/src/glad.c)
target_link_libraries(triangle ${EXTRA_LIBS})

add_executable(triangle-green src/triangle-green.cpp libs/glad/src/glad.c)
target_link_libraries(triangle-green ${EXTRA_LIBS})

add_executable(triangle-color-ext src/triangle-color-ext.cpp libs/glad/src/glad.c )
target_link_libraries(triangle-color-ext ${EXTRA_LIBS})

add_executable(triangle-upsidedown src/triangle-upsidedown.cpp libs/glad/src/glad.c )
target_link_libraries(triangle-upsidedown ${EXTRA_LIBS})

add_executable(triangle-offset src/triangle-offset.cpp libs/glad/src/glad.c )
target_link_libraries(triangle-offset ${EXTRA_LIBS})

add_executable(triangle-gradient src/triangle-gradient.cpp libs/glad/src/glad.c )
target_link_libraries(triangle-gradient ${EXTRA_LIBS})

add_executable(container src/container.cpp libs/glad/src/glad.c )
target_link_libraries(container ${EXTRA_LIBS})

add_executable(two-textures src/two-textures.cpp libs/glad/src/glad.c )
target_link_libraries(two-textures ${EXTRA_LIBS})

add_executable(rotation src/rotation.cpp libs/glad/src/glad.c )
target_link_libraries(rotation ${EXTRA_LIBS})

add_executable(tilted src/tilted.cpp libs/glad/src/glad.c )
target_link_libraries(tilted ${EXTRA_LIBS})

add_executable(cube src/cube.cpp libs/glad/src/glad.c )
target_link_libraries(cube ${EXTRA_LIBS})

add_executable(fov  src/fov.cpp libs/glad/src/glad.c )
target_link_libraries(fov ${EXTRA_LIBS})

add_executable(camera-spin  src/camera-spin.cpp libs/glad/src/glad.c )
target_link_libraries(camera-spin ${EXTRA_LIBS})

add_executable(camera-move  src/camera-move.cpp libs/glad/src/glad.c )
target_link_libraries(camera-move ${EXTRA_LIBS})

add_executable(camera-class src/camera-class.cpp libs/glad/src/glad.c )
target_link_libraries(camera-class ${EXTRA_LIBS})

add_executable(color src/color.cpp libs/glad/src/glad.c )
target_link_libraries(color ${EXTRA_LIBS})

add_executable(color-ambient src/color-ambient.cpp libs/glad/src/glad.c )
target_link_libraries(color-ambient ${EXTRA_LIBS})

add_executable(color-diffusive src/color-diffusive.cpp libs/glad/src/glad.c )
target_link_libraries(color-diffusive ${EXTRA_LIBS})

add_executable(color-specular src/color-specular.cpp libs/glad/src/glad.c )
target_link_libraries(color-specular ${EXTRA_LIBS})

add_executable(color-specular-moving src/color-specular-moving.cpp libs/glad/src/glad.c )
target_link_libraries(color-specular-moving ${EXTRA_LIBS})

add_executable(material src/material.cpp libs/glad/src/glad.c )
target_link_libraries(material ${EXTRA_LIBS})

add_executable(material-colors src/material-colors.cpp libs/glad/src/glad.c )
target_link_libraries(material-colors ${EXTRA_LIBS})

add_executable(lmap src/lmap.cpp libs/glad/src/glad.c )
target_link_libraries(lmap ${EXTRA_LIBS})

add_executable(lmap-inv src/lmap-inv.cpp libs/glad/src/glad.c )
target_link_libraries(lmap-inv ${EXTRA_LIBS})

add_executable(lmap-col src/lmap-col.cpp libs/glad/src/glad.c )
target_link_libraries(lmap-col ${EXTRA_LIBS})

add_executable(lmap-emissive src/lmap-emissive.cpp libs/glad/src/glad.c )
target_link_libraries(lmap-emissive ${EXTRA_LIBS})

add_executable(lmap-directional src/lmap-directional.cpp libs/glad/src/glad.c )
target_link_libraries(lmap-directional ${EXTRA_LIBS})

add_executable(lmap-att src/lmap-att.cpp libs/glad/src/glad.c )
target_link_libraries(lmap-att ${EXTRA_LIBS})

add_executable(lmap-flash src/lmap-flash.cpp libs/glad/src/glad.c )
target_link_libraries(lmap-flash ${EXTRA_LIBS})


file(COPY shaders/ DESTINATION shaders)


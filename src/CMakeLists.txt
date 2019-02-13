add_subdirectory("library")
add_subdirectory("tools")

install(FILES  "${CMAKE_BINARY_DIR}/build_properties.h" DESTINATION private)

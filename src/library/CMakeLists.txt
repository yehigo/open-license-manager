add_subdirectory("os")
add_subdirectory("base")
add_subdirectory("ini")

ADD_LIBRARY(license++_static STATIC
    license++.cpp
    LicenseReader.cpp
    pc-identifiers.c
)

target_link_libraries(
     license++_static
     ini
     os
)

install(TARGETS license++_static ARCHIVE DESTINATION lib)
install(DIRECTORY ./ DESTINATION include FILES_MATCHING PATTERN "*.h")

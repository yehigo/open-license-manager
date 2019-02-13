
if(MSVC)
ADD_LIBRARY(
    tools_base STATIC
    CryptoHelper.cpp
    win/CryptoHelperWindows.cpp
)
else(MSVC)
ADD_LIBRARY(
    tools_base STATIC
    CryptoHelper.cpp
    linux/CryptoHelperLinux.cpp
)
ENDIF(MSVC)

target_link_libraries(
     tools_base
     ${EXTERNAL_LIBS}
)

install(TARGETS tools_base ARCHIVE DESTINATION lib)
install(DIRECTORY ./ DESTINATION include/base_lib FILES_MATCHING PATTERN "*.h")


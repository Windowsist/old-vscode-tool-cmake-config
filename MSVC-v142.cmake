if(NOT MSVC-v142_CMAKE)
set(MSVC-v142_CMAKE TRUE)

set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)
add_definitions(-DUNICODE -D_UNICODE)

set(CMAKE_C_FLAGS_DEBUG "/MT /Zi /Ob0 /Od /RTC1 /std:c17")
set(CMAKE_CXX_FLAGS_DEBUG "/MT /Zi /EHsc /Ob0 /Od /RTC1 /std:c++17")
set(CMAKE_C_FLAGS_RELEASE "/MT /O2 /Ob2 /GL /DNDEBUG /std:c17")
set(CMAKE_CXX_FLAGS_RELEASE "/MT /EHsc /O2 /Ob2 /GL /DNDEBUG /std:c++17")
string(APPEND CMAKE_CXX_FLAGS " /await /bigobj")
# set(CMAKE_C_STANDARD 17)
# set(CMAKE_CXX_STANDARD 17)
link_libraries("WindowsApp.lib")

include_directories(SYSTEM
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.28.29910\\include"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Include\\ucrt"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Include\\um"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Include\\shared"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Include\\cppwinrt"
    )

link_directories(
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.28.29910\\lib"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Lib\\ucrt"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Lib\\um"
    )

endif(NOT MSVC-v142_CMAKE)

set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)
add_definitions(-DUNICODE -D_UNICODE)

# set(CMAKE_C_FLAGS_DEBUG "/MD /Zi /Ob0 /Od")
# set(CMAKE_CXX_FLAGS_DEBUG "/MD /Zi /Ob0 /Od")
# set(CMAKE_C_FLAGS_RELEASE "/MD /O2 /Ob2 /DNDEBUG /GL")
# set(CMAKE_CXX_FLAGS_RELEASE "/MD /O2 /Ob2 /DNDEBUG /GL")
string(APPEND CMAKE_CXX_FLAGS " /std:c++17 /await /bigobj")

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

link_libraries("WindowsApp.lib")
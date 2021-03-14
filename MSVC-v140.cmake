if(NOT MSVC-v140-proc)
set(MSVC-v140-proc TRUE)

set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)
add_definitions(-DUNICODE -D_UNICODE)

set(CMAKE_C_FLAGS_DEBUG "/MD /Zi /Ob0 /Od")
set(CMAKE_CXX_FLAGS_DEBUG "/MD /Zi /Ob0 /Od")
string(APPEND CMAKE_C_FLAGS_RELEASE " /DNDEBUG /GL")
string(APPEND CMAKE_CXX_FLAGS_RELEASE " /DNDEBUG /GL")
string(APPEND CMAKE_CXX_FLAGS " /Zc:sizedDealloc-") # /GS-

if(STL70)
unset(STL70)

add_definitions(-D_STL70_ -D_STATIC_CPPLIB)
link_libraries("ntstc_msvcrt.lib")
set(STL_INC "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.0.24245.0\\include\\api\\Crt\\stl70")

else() # STL60

string(APPEND CMAKE_C_FLAGS " /Zc:wchar_t-")
string(APPEND CMAKE_CXX_FLAGS " /Zc:wchar_t-")
set(STL_INC "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.0.24245.0\\include\\api\\Crt\\stl60")

endif(STL70)

include_directories(SYSTEM
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.0.24245.0\\include\\Crt"
    ${STL_INC}
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.0.24245.0\\include\\atl71"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.0.24245.0\\include\\mfc42"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Include\\um"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Include\\shared"
    )

unset(STL_INC)

link_directories(
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.0.24245.0\\lib\\Crt"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.0.24245.0\\lib\\ATL"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\MSVC\\14.0.24245.0\\lib\\Mfc"
    "C:\\Users\\Windowsist\\AppData\\Local\\Programs\\Visual Studio\\SDK\\10.0.19041.0\\Lib\\um"
    )

endif(NOT MSVC-v140-proc)

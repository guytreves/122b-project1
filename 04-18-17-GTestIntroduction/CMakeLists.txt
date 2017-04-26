cmake_minimum_required (VERSION 3.2) # If your CMake version is older, try modifying this line
project(GTestIntroduction)

add_definitions(-std=c++1z)

########## Build libraries
add_library(Library library.cpp)

########## Link GoogleTest
# Where library header files live
include_directories($ENV{GMOCK_HOME}/include $ENV{GMOCK_HOME}/gtest/include)
# Where library binaries live
link_directories($ENV{GMOCK_HOME}/mybuild $ENV{GMOCK_HOME}/gtest/mybuild)

########## Build & run unit tests
add_executable(LibraryUnitTests UnitTests.cpp)
# Link gmock, gtest etc.
target_link_libraries(LibraryUnitTests gtest)
target_link_libraries(LibraryUnitTests pthread)
# Link library to test
target_link_libraries(LibraryUnitTests Library)
# Tell CMake to run tests every time we run make
add_custom_command(TARGET LibraryUnitTests
                   POST_BUILD
                   COMMAND LibraryUnitTests
                   WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
                   COMMENT "Running LibraryUnitTests" VERBATIM)

########## Build sanity checks
add_executable(LibrarySanityChecks SanityChecks.cpp)
# Link gmock, gtest etc.
target_link_libraries(LibrarySanityChecks gtest)
target_link_libraries(LibrarySanityChecks pthread)
# Link library to test
target_link_libraries(LibrarySanityChecks Library)
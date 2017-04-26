# CMake generated Testfile for 
# Source directory: /home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly
# Build directory: /home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(CMakeOnly.LinkInterfaceLoop "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=LinkInterfaceLoop" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
set_tests_properties(CMakeOnly.LinkInterfaceLoop PROPERTIES  TIMEOUT "90")
add_test(CMakeOnly.CheckSymbolExists "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=CheckSymbolExists" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CheckCXXSymbolExists "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=CheckCXXSymbolExists" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CheckCXXCompilerFlag "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=CheckCXXCompilerFlag" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CheckLanguage "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=CheckLanguage" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CheckStructHasMember "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=CheckStructHasMember" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CompilerIdC "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=CompilerIdC" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CompilerIdCXX "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=CompilerIdCXX" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.AllFindModules "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=AllFindModules" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.SelectLibraryConfigurations "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=SelectLibraryConfigurations" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.TargetScope "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=TargetScope" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.find_library "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=find_library" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.find_path "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=find_path" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.ProjectInclude "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=ProjectInclude" "-DCMAKE_ARGS=-DCMAKE_PROJECT_ProjectInclude_INCLUDE=/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/ProjectInclude/include.cmake" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-PythonLibs_2 "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=MajorVersionSelection-PythonLibs_2" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=PythonLibs;-DMAJOR_TEST_VERSION=2;-DMAJOR_TEST_NO_LANGUAGES=FALSE;-DMAJOR_TEST_VERSION_VAR=PYTHONLIBS_VERSION_STRING" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-PythonLibs_3 "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=MajorVersionSelection-PythonLibs_3" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=PythonLibs;-DMAJOR_TEST_VERSION=3;-DMAJOR_TEST_NO_LANGUAGES=FALSE;-DMAJOR_TEST_VERSION_VAR=PYTHONLIBS_VERSION_STRING" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-PythonInterp_2 "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=MajorVersionSelection-PythonInterp_2" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=PythonInterp;-DMAJOR_TEST_VERSION=2;-DMAJOR_TEST_NO_LANGUAGES=TRUE;-DMAJOR_TEST_VERSION_VAR=PYTHON_VERSION_STRING" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-PythonInterp_3 "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=MajorVersionSelection-PythonInterp_3" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=PythonInterp;-DMAJOR_TEST_VERSION=3;-DMAJOR_TEST_NO_LANGUAGES=TRUE;-DMAJOR_TEST_VERSION_VAR=PYTHON_VERSION_STRING" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-Qt_3 "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=MajorVersionSelection-Qt_3" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=Qt;-DMAJOR_TEST_VERSION=3;-DMAJOR_TEST_NO_LANGUAGES=FALSE;-DMAJOR_TEST_VERSION_VAR=QT_VERSION_STRING" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-Qt_4 "/home/ubuntu/workspace/cmake-3.2.2/bin/cmake" "-DTEST=MajorVersionSelection-Qt_4" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=Qt;-DMAJOR_TEST_VERSION=4;-DMAJOR_TEST_NO_LANGUAGES=FALSE;-DMAJOR_TEST_VERSION_VAR=QT_VERSION_STRING" "-P" "/home/ubuntu/workspace/cmake-3.2.2/Tests/CMakeOnly/Test.cmake")

include(fakeit)
include(catch)

project(unittests CXX)

include_directories(${CATCH_INCLUDE_DIR} ${FAKEIT_INCLUDE_DIR})
add_executable(unittests test_main.cpp)

target_compile_features(unittests PUBLIC cxx_auto_type)

enable_testing(true)

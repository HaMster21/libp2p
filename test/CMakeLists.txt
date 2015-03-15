include(fakeit)
include(catch)

project(unittests CXX)

include_directories(${CATCH_INCLUDE_DIR}
				    ${FAKEIT_INCLUDE_DIR}
					${libp2p_SOURCE_DIR})

set(TEST_FILES test_main.cpp connection_test.cpp)

add_executable(unittests ${TEST_FILES})

enable_testing(true)

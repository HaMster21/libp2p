project(boost_asio CXX)
find_package(Git REQUIRED)
include(ExternalProject)

ExternalProject_Add(
    boost_asio
    DEPENDS boost_system
    PREFIX ${CMAKE_BINARY_DIR}/external/boost/asio
    EXCLUDE_FROM_ALL 1
    GIT_REPOSITORY https://github.com/boostorg/asio.git
    GIT_TAG boost-1.57.0
    UPDATE_COMMAND ${GIT_EXECUTABLE} pull
    LOG_DOWNLOAD ON
)

ExternalProject_Get_Property(boost_asio source_dir)
set(boost_INCLUDE_DIRS ${boost_INCLUDE_DIRS} ${source_dir}/include CACHE INTERNAL "Path to include folder for Boost.Asio")

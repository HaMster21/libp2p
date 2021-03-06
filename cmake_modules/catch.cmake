project(catch_builder CXX)
find_package(Git REQUIRED)
include(ExternalProject)

ExternalProject_Add(
    catch
    PREFIX ${CMAKE_BINARY_DIR}/external/catch
    EXCLUDE_FROM_ALL 1
    GIT_REPOSITORY https://github.com/philsquared/Catch.git
    UPDATE_COMMAND ${GIT_EXECUTABLE} pull
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
    LOG_DOWNLOAD ON
)

ExternalProject_Get_Property(catch source_dir)
set(CATCH_INCLUDE_DIR ${source_dir}/include CACHE INTERNAL "Path to include folder for Catch")

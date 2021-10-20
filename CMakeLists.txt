cmake_minimum_required(VERSION 3.21)
project(cli_app_ui-1)

set(APP_NAME app)
set(CMAKE_CXX_STANDARD 17)

# Get CLIUtils/CLI11
include(FetchContent)
FetchContent_Declare(
        cli11
        # Specify the commit you depend on and update it regularly.
        URL https://github.com/CLIUtils/CLI11/archive/refs/tags/v2.1.2.zip
)
FetchContent_MakeAvailable(cli11)

# Get MAHI-GUI
FetchContent_Declare(mahi-gui GIT_REPOSITORY https://github.com/mahilab/mahi-gui.git)
FetchContent_MakeAvailable(mahi-gui)

add_executable(${APP_NAME} main.cpp)
target_link_libraries(${APP_NAME} CLI11::CLI11 mahi::gui)

enable_testing()
add_subdirectory(test)

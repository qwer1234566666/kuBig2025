# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yjh/kubig2025

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yjh/kubig2025/build

# Include any dependencies generated for this target.
include network/CMakeFiles/hello_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include network/CMakeFiles/hello_server.dir/compiler_depend.make

# Include the progress variables for this target.
include network/CMakeFiles/hello_server.dir/progress.make

# Include the compile flags for this target's objects.
include network/CMakeFiles/hello_server.dir/flags.make

network/CMakeFiles/hello_server.dir/hello_server.c.o: network/CMakeFiles/hello_server.dir/flags.make
network/CMakeFiles/hello_server.dir/hello_server.c.o: ../network/hello_server.c
network/CMakeFiles/hello_server.dir/hello_server.c.o: network/CMakeFiles/hello_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object network/CMakeFiles/hello_server.dir/hello_server.c.o"
	cd /home/yjh/kubig2025/build/network && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT network/CMakeFiles/hello_server.dir/hello_server.c.o -MF CMakeFiles/hello_server.dir/hello_server.c.o.d -o CMakeFiles/hello_server.dir/hello_server.c.o -c /home/yjh/kubig2025/network/hello_server.c

network/CMakeFiles/hello_server.dir/hello_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello_server.dir/hello_server.c.i"
	cd /home/yjh/kubig2025/build/network && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yjh/kubig2025/network/hello_server.c > CMakeFiles/hello_server.dir/hello_server.c.i

network/CMakeFiles/hello_server.dir/hello_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello_server.dir/hello_server.c.s"
	cd /home/yjh/kubig2025/build/network && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yjh/kubig2025/network/hello_server.c -o CMakeFiles/hello_server.dir/hello_server.c.s

# Object files for target hello_server
hello_server_OBJECTS = \
"CMakeFiles/hello_server.dir/hello_server.c.o"

# External object files for target hello_server
hello_server_EXTERNAL_OBJECTS =

network/hello_server: network/CMakeFiles/hello_server.dir/hello_server.c.o
network/hello_server: network/CMakeFiles/hello_server.dir/build.make
network/hello_server: network/CMakeFiles/hello_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hello_server"
	cd /home/yjh/kubig2025/build/network && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
network/CMakeFiles/hello_server.dir/build: network/hello_server
.PHONY : network/CMakeFiles/hello_server.dir/build

network/CMakeFiles/hello_server.dir/clean:
	cd /home/yjh/kubig2025/build/network && $(CMAKE_COMMAND) -P CMakeFiles/hello_server.dir/cmake_clean.cmake
.PHONY : network/CMakeFiles/hello_server.dir/clean

network/CMakeFiles/hello_server.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/network /home/yjh/kubig2025/build /home/yjh/kubig2025/build/network /home/yjh/kubig2025/build/network/CMakeFiles/hello_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : network/CMakeFiles/hello_server.dir/depend


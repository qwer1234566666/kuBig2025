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
include network/CMakeFiles/mq_client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include network/CMakeFiles/mq_client.dir/compiler_depend.make

# Include the progress variables for this target.
include network/CMakeFiles/mq_client.dir/progress.make

# Include the compile flags for this target's objects.
include network/CMakeFiles/mq_client.dir/flags.make

network/CMakeFiles/mq_client.dir/mq_client.c.o: network/CMakeFiles/mq_client.dir/flags.make
network/CMakeFiles/mq_client.dir/mq_client.c.o: ../network/mq_client.c
network/CMakeFiles/mq_client.dir/mq_client.c.o: network/CMakeFiles/mq_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object network/CMakeFiles/mq_client.dir/mq_client.c.o"
	cd /home/yjh/kubig2025/build/network && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT network/CMakeFiles/mq_client.dir/mq_client.c.o -MF CMakeFiles/mq_client.dir/mq_client.c.o.d -o CMakeFiles/mq_client.dir/mq_client.c.o -c /home/yjh/kubig2025/network/mq_client.c

network/CMakeFiles/mq_client.dir/mq_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mq_client.dir/mq_client.c.i"
	cd /home/yjh/kubig2025/build/network && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yjh/kubig2025/network/mq_client.c > CMakeFiles/mq_client.dir/mq_client.c.i

network/CMakeFiles/mq_client.dir/mq_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mq_client.dir/mq_client.c.s"
	cd /home/yjh/kubig2025/build/network && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yjh/kubig2025/network/mq_client.c -o CMakeFiles/mq_client.dir/mq_client.c.s

# Object files for target mq_client
mq_client_OBJECTS = \
"CMakeFiles/mq_client.dir/mq_client.c.o"

# External object files for target mq_client
mq_client_EXTERNAL_OBJECTS =

network/mq_client: network/CMakeFiles/mq_client.dir/mq_client.c.o
network/mq_client: network/CMakeFiles/mq_client.dir/build.make
network/mq_client: network/CMakeFiles/mq_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable mq_client"
	cd /home/yjh/kubig2025/build/network && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mq_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
network/CMakeFiles/mq_client.dir/build: network/mq_client
.PHONY : network/CMakeFiles/mq_client.dir/build

network/CMakeFiles/mq_client.dir/clean:
	cd /home/yjh/kubig2025/build/network && $(CMAKE_COMMAND) -P CMakeFiles/mq_client.dir/cmake_clean.cmake
.PHONY : network/CMakeFiles/mq_client.dir/clean

network/CMakeFiles/mq_client.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/network /home/yjh/kubig2025/build /home/yjh/kubig2025/build/network /home/yjh/kubig2025/build/network/CMakeFiles/mq_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : network/CMakeFiles/mq_client.dir/depend


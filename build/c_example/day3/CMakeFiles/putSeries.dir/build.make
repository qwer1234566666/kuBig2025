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
include c_example/day3/CMakeFiles/putSeries.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include c_example/day3/CMakeFiles/putSeries.dir/compiler_depend.make

# Include the progress variables for this target.
include c_example/day3/CMakeFiles/putSeries.dir/progress.make

# Include the compile flags for this target's objects.
include c_example/day3/CMakeFiles/putSeries.dir/flags.make

c_example/day3/CMakeFiles/putSeries.dir/putSeries.c.o: c_example/day3/CMakeFiles/putSeries.dir/flags.make
c_example/day3/CMakeFiles/putSeries.dir/putSeries.c.o: ../c_example/day3/putSeries.c
c_example/day3/CMakeFiles/putSeries.dir/putSeries.c.o: c_example/day3/CMakeFiles/putSeries.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object c_example/day3/CMakeFiles/putSeries.dir/putSeries.c.o"
	cd /home/yjh/kubig2025/build/c_example/day3 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT c_example/day3/CMakeFiles/putSeries.dir/putSeries.c.o -MF CMakeFiles/putSeries.dir/putSeries.c.o.d -o CMakeFiles/putSeries.dir/putSeries.c.o -c /home/yjh/kubig2025/c_example/day3/putSeries.c

c_example/day3/CMakeFiles/putSeries.dir/putSeries.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/putSeries.dir/putSeries.c.i"
	cd /home/yjh/kubig2025/build/c_example/day3 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yjh/kubig2025/c_example/day3/putSeries.c > CMakeFiles/putSeries.dir/putSeries.c.i

c_example/day3/CMakeFiles/putSeries.dir/putSeries.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/putSeries.dir/putSeries.c.s"
	cd /home/yjh/kubig2025/build/c_example/day3 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yjh/kubig2025/c_example/day3/putSeries.c -o CMakeFiles/putSeries.dir/putSeries.c.s

# Object files for target putSeries
putSeries_OBJECTS = \
"CMakeFiles/putSeries.dir/putSeries.c.o"

# External object files for target putSeries
putSeries_EXTERNAL_OBJECTS =

c_example/day3/putSeries: c_example/day3/CMakeFiles/putSeries.dir/putSeries.c.o
c_example/day3/putSeries: c_example/day3/CMakeFiles/putSeries.dir/build.make
c_example/day3/putSeries: c_example/day3/CMakeFiles/putSeries.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable putSeries"
	cd /home/yjh/kubig2025/build/c_example/day3 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/putSeries.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
c_example/day3/CMakeFiles/putSeries.dir/build: c_example/day3/putSeries
.PHONY : c_example/day3/CMakeFiles/putSeries.dir/build

c_example/day3/CMakeFiles/putSeries.dir/clean:
	cd /home/yjh/kubig2025/build/c_example/day3 && $(CMAKE_COMMAND) -P CMakeFiles/putSeries.dir/cmake_clean.cmake
.PHONY : c_example/day3/CMakeFiles/putSeries.dir/clean

c_example/day3/CMakeFiles/putSeries.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/c_example/day3 /home/yjh/kubig2025/build /home/yjh/kubig2025/build/c_example/day3 /home/yjh/kubig2025/build/c_example/day3/CMakeFiles/putSeries.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : c_example/day3/CMakeFiles/putSeries.dir/depend


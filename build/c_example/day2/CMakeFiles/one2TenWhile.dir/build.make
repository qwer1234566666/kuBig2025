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
include c_example/day2/CMakeFiles/one2TenWhile.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include c_example/day2/CMakeFiles/one2TenWhile.dir/compiler_depend.make

# Include the progress variables for this target.
include c_example/day2/CMakeFiles/one2TenWhile.dir/progress.make

# Include the compile flags for this target's objects.
include c_example/day2/CMakeFiles/one2TenWhile.dir/flags.make

c_example/day2/CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o: c_example/day2/CMakeFiles/one2TenWhile.dir/flags.make
c_example/day2/CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o: ../c_example/day2/one2TenWhile.c
c_example/day2/CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o: c_example/day2/CMakeFiles/one2TenWhile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object c_example/day2/CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o"
	cd /home/yjh/kubig2025/build/c_example/day2 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT c_example/day2/CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o -MF CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o.d -o CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o -c /home/yjh/kubig2025/c_example/day2/one2TenWhile.c

c_example/day2/CMakeFiles/one2TenWhile.dir/one2TenWhile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/one2TenWhile.dir/one2TenWhile.c.i"
	cd /home/yjh/kubig2025/build/c_example/day2 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yjh/kubig2025/c_example/day2/one2TenWhile.c > CMakeFiles/one2TenWhile.dir/one2TenWhile.c.i

c_example/day2/CMakeFiles/one2TenWhile.dir/one2TenWhile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/one2TenWhile.dir/one2TenWhile.c.s"
	cd /home/yjh/kubig2025/build/c_example/day2 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yjh/kubig2025/c_example/day2/one2TenWhile.c -o CMakeFiles/one2TenWhile.dir/one2TenWhile.c.s

# Object files for target one2TenWhile
one2TenWhile_OBJECTS = \
"CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o"

# External object files for target one2TenWhile
one2TenWhile_EXTERNAL_OBJECTS =

c_example/day2/one2TenWhile: c_example/day2/CMakeFiles/one2TenWhile.dir/one2TenWhile.c.o
c_example/day2/one2TenWhile: c_example/day2/CMakeFiles/one2TenWhile.dir/build.make
c_example/day2/one2TenWhile: c_example/day2/CMakeFiles/one2TenWhile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable one2TenWhile"
	cd /home/yjh/kubig2025/build/c_example/day2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/one2TenWhile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
c_example/day2/CMakeFiles/one2TenWhile.dir/build: c_example/day2/one2TenWhile
.PHONY : c_example/day2/CMakeFiles/one2TenWhile.dir/build

c_example/day2/CMakeFiles/one2TenWhile.dir/clean:
	cd /home/yjh/kubig2025/build/c_example/day2 && $(CMAKE_COMMAND) -P CMakeFiles/one2TenWhile.dir/cmake_clean.cmake
.PHONY : c_example/day2/CMakeFiles/one2TenWhile.dir/clean

c_example/day2/CMakeFiles/one2TenWhile.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/c_example/day2 /home/yjh/kubig2025/build /home/yjh/kubig2025/build/c_example/day2 /home/yjh/kubig2025/build/c_example/day2/CMakeFiles/one2TenWhile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : c_example/day2/CMakeFiles/one2TenWhile.dir/depend


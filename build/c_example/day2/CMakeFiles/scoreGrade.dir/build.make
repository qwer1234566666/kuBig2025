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
include c_example/day2/CMakeFiles/scoreGrade.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include c_example/day2/CMakeFiles/scoreGrade.dir/compiler_depend.make

# Include the progress variables for this target.
include c_example/day2/CMakeFiles/scoreGrade.dir/progress.make

# Include the compile flags for this target's objects.
include c_example/day2/CMakeFiles/scoreGrade.dir/flags.make

c_example/day2/CMakeFiles/scoreGrade.dir/scoreGrade.c.o: c_example/day2/CMakeFiles/scoreGrade.dir/flags.make
c_example/day2/CMakeFiles/scoreGrade.dir/scoreGrade.c.o: ../c_example/day2/scoreGrade.c
c_example/day2/CMakeFiles/scoreGrade.dir/scoreGrade.c.o: c_example/day2/CMakeFiles/scoreGrade.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object c_example/day2/CMakeFiles/scoreGrade.dir/scoreGrade.c.o"
	cd /home/yjh/kubig2025/build/c_example/day2 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT c_example/day2/CMakeFiles/scoreGrade.dir/scoreGrade.c.o -MF CMakeFiles/scoreGrade.dir/scoreGrade.c.o.d -o CMakeFiles/scoreGrade.dir/scoreGrade.c.o -c /home/yjh/kubig2025/c_example/day2/scoreGrade.c

c_example/day2/CMakeFiles/scoreGrade.dir/scoreGrade.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scoreGrade.dir/scoreGrade.c.i"
	cd /home/yjh/kubig2025/build/c_example/day2 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yjh/kubig2025/c_example/day2/scoreGrade.c > CMakeFiles/scoreGrade.dir/scoreGrade.c.i

c_example/day2/CMakeFiles/scoreGrade.dir/scoreGrade.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scoreGrade.dir/scoreGrade.c.s"
	cd /home/yjh/kubig2025/build/c_example/day2 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yjh/kubig2025/c_example/day2/scoreGrade.c -o CMakeFiles/scoreGrade.dir/scoreGrade.c.s

# Object files for target scoreGrade
scoreGrade_OBJECTS = \
"CMakeFiles/scoreGrade.dir/scoreGrade.c.o"

# External object files for target scoreGrade
scoreGrade_EXTERNAL_OBJECTS =

c_example/day2/scoreGrade: c_example/day2/CMakeFiles/scoreGrade.dir/scoreGrade.c.o
c_example/day2/scoreGrade: c_example/day2/CMakeFiles/scoreGrade.dir/build.make
c_example/day2/scoreGrade: c_example/day2/CMakeFiles/scoreGrade.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable scoreGrade"
	cd /home/yjh/kubig2025/build/c_example/day2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scoreGrade.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
c_example/day2/CMakeFiles/scoreGrade.dir/build: c_example/day2/scoreGrade
.PHONY : c_example/day2/CMakeFiles/scoreGrade.dir/build

c_example/day2/CMakeFiles/scoreGrade.dir/clean:
	cd /home/yjh/kubig2025/build/c_example/day2 && $(CMAKE_COMMAND) -P CMakeFiles/scoreGrade.dir/cmake_clean.cmake
.PHONY : c_example/day2/CMakeFiles/scoreGrade.dir/clean

c_example/day2/CMakeFiles/scoreGrade.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/c_example/day2 /home/yjh/kubig2025/build /home/yjh/kubig2025/build/c_example/day2 /home/yjh/kubig2025/build/c_example/day2/CMakeFiles/scoreGrade.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : c_example/day2/CMakeFiles/scoreGrade.dir/depend


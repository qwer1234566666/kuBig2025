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
include smartpoint/CMakeFiles/ex16_finalModernExample.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include smartpoint/CMakeFiles/ex16_finalModernExample.dir/compiler_depend.make

# Include the progress variables for this target.
include smartpoint/CMakeFiles/ex16_finalModernExample.dir/progress.make

# Include the compile flags for this target's objects.
include smartpoint/CMakeFiles/ex16_finalModernExample.dir/flags.make

smartpoint/CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o: smartpoint/CMakeFiles/ex16_finalModernExample.dir/flags.make
smartpoint/CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o: ../smartpoint/ex16_finalModernExample.cpp
smartpoint/CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o: smartpoint/CMakeFiles/ex16_finalModernExample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object smartpoint/CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o"
	cd /home/yjh/kubig2025/build/smartpoint && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT smartpoint/CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o -MF CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o.d -o CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o -c /home/yjh/kubig2025/smartpoint/ex16_finalModernExample.cpp

smartpoint/CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.i"
	cd /home/yjh/kubig2025/build/smartpoint && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yjh/kubig2025/smartpoint/ex16_finalModernExample.cpp > CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.i

smartpoint/CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.s"
	cd /home/yjh/kubig2025/build/smartpoint && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yjh/kubig2025/smartpoint/ex16_finalModernExample.cpp -o CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.s

# Object files for target ex16_finalModernExample
ex16_finalModernExample_OBJECTS = \
"CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o"

# External object files for target ex16_finalModernExample
ex16_finalModernExample_EXTERNAL_OBJECTS =

smartpoint/ex16_finalModernExample: smartpoint/CMakeFiles/ex16_finalModernExample.dir/ex16_finalModernExample.cpp.o
smartpoint/ex16_finalModernExample: smartpoint/CMakeFiles/ex16_finalModernExample.dir/build.make
smartpoint/ex16_finalModernExample: smartpoint/CMakeFiles/ex16_finalModernExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ex16_finalModernExample"
	cd /home/yjh/kubig2025/build/smartpoint && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex16_finalModernExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
smartpoint/CMakeFiles/ex16_finalModernExample.dir/build: smartpoint/ex16_finalModernExample
.PHONY : smartpoint/CMakeFiles/ex16_finalModernExample.dir/build

smartpoint/CMakeFiles/ex16_finalModernExample.dir/clean:
	cd /home/yjh/kubig2025/build/smartpoint && $(CMAKE_COMMAND) -P CMakeFiles/ex16_finalModernExample.dir/cmake_clean.cmake
.PHONY : smartpoint/CMakeFiles/ex16_finalModernExample.dir/clean

smartpoint/CMakeFiles/ex16_finalModernExample.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/smartpoint /home/yjh/kubig2025/build /home/yjh/kubig2025/build/smartpoint /home/yjh/kubig2025/build/smartpoint/CMakeFiles/ex16_finalModernExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : smartpoint/CMakeFiles/ex16_finalModernExample.dir/depend


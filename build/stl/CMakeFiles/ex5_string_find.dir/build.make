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
include stl/CMakeFiles/ex5_string_find.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include stl/CMakeFiles/ex5_string_find.dir/compiler_depend.make

# Include the progress variables for this target.
include stl/CMakeFiles/ex5_string_find.dir/progress.make

# Include the compile flags for this target's objects.
include stl/CMakeFiles/ex5_string_find.dir/flags.make

stl/CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o: stl/CMakeFiles/ex5_string_find.dir/flags.make
stl/CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o: ../stl/ex5_string_find.cpp
stl/CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o: stl/CMakeFiles/ex5_string_find.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object stl/CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o"
	cd /home/yjh/kubig2025/build/stl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT stl/CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o -MF CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o.d -o CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o -c /home/yjh/kubig2025/stl/ex5_string_find.cpp

stl/CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.i"
	cd /home/yjh/kubig2025/build/stl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yjh/kubig2025/stl/ex5_string_find.cpp > CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.i

stl/CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.s"
	cd /home/yjh/kubig2025/build/stl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yjh/kubig2025/stl/ex5_string_find.cpp -o CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.s

# Object files for target ex5_string_find
ex5_string_find_OBJECTS = \
"CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o"

# External object files for target ex5_string_find
ex5_string_find_EXTERNAL_OBJECTS =

stl/ex5_string_find: stl/CMakeFiles/ex5_string_find.dir/ex5_string_find.cpp.o
stl/ex5_string_find: stl/CMakeFiles/ex5_string_find.dir/build.make
stl/ex5_string_find: stl/CMakeFiles/ex5_string_find.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ex5_string_find"
	cd /home/yjh/kubig2025/build/stl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex5_string_find.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
stl/CMakeFiles/ex5_string_find.dir/build: stl/ex5_string_find
.PHONY : stl/CMakeFiles/ex5_string_find.dir/build

stl/CMakeFiles/ex5_string_find.dir/clean:
	cd /home/yjh/kubig2025/build/stl && $(CMAKE_COMMAND) -P CMakeFiles/ex5_string_find.dir/cmake_clean.cmake
.PHONY : stl/CMakeFiles/ex5_string_find.dir/clean

stl/CMakeFiles/ex5_string_find.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/stl /home/yjh/kubig2025/build /home/yjh/kubig2025/build/stl /home/yjh/kubig2025/build/stl/CMakeFiles/ex5_string_find.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : stl/CMakeFiles/ex5_string_find.dir/depend


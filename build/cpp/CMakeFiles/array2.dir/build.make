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
include cpp/CMakeFiles/array2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include cpp/CMakeFiles/array2.dir/compiler_depend.make

# Include the progress variables for this target.
include cpp/CMakeFiles/array2.dir/progress.make

# Include the compile flags for this target's objects.
include cpp/CMakeFiles/array2.dir/flags.make

cpp/CMakeFiles/array2.dir/array2/main.cpp.o: cpp/CMakeFiles/array2.dir/flags.make
cpp/CMakeFiles/array2.dir/array2/main.cpp.o: ../cpp/array2/main.cpp
cpp/CMakeFiles/array2.dir/array2/main.cpp.o: cpp/CMakeFiles/array2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cpp/CMakeFiles/array2.dir/array2/main.cpp.o"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT cpp/CMakeFiles/array2.dir/array2/main.cpp.o -MF CMakeFiles/array2.dir/array2/main.cpp.o.d -o CMakeFiles/array2.dir/array2/main.cpp.o -c /home/yjh/kubig2025/cpp/array2/main.cpp

cpp/CMakeFiles/array2.dir/array2/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/array2.dir/array2/main.cpp.i"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yjh/kubig2025/cpp/array2/main.cpp > CMakeFiles/array2.dir/array2/main.cpp.i

cpp/CMakeFiles/array2.dir/array2/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/array2.dir/array2/main.cpp.s"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yjh/kubig2025/cpp/array2/main.cpp -o CMakeFiles/array2.dir/array2/main.cpp.s

# Object files for target array2
array2_OBJECTS = \
"CMakeFiles/array2.dir/array2/main.cpp.o"

# External object files for target array2
array2_EXTERNAL_OBJECTS =

cpp/array2: cpp/CMakeFiles/array2.dir/array2/main.cpp.o
cpp/array2: cpp/CMakeFiles/array2.dir/build.make
cpp/array2: cpp/CMakeFiles/array2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable array2"
	cd /home/yjh/kubig2025/build/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/array2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cpp/CMakeFiles/array2.dir/build: cpp/array2
.PHONY : cpp/CMakeFiles/array2.dir/build

cpp/CMakeFiles/array2.dir/clean:
	cd /home/yjh/kubig2025/build/cpp && $(CMAKE_COMMAND) -P CMakeFiles/array2.dir/cmake_clean.cmake
.PHONY : cpp/CMakeFiles/array2.dir/clean

cpp/CMakeFiles/array2.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/cpp /home/yjh/kubig2025/build /home/yjh/kubig2025/build/cpp /home/yjh/kubig2025/build/cpp/CMakeFiles/array2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cpp/CMakeFiles/array2.dir/depend


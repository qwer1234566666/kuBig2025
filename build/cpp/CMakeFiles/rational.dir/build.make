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
include cpp/CMakeFiles/rational.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include cpp/CMakeFiles/rational.dir/compiler_depend.make

# Include the progress variables for this target.
include cpp/CMakeFiles/rational.dir/progress.make

# Include the compile flags for this target's objects.
include cpp/CMakeFiles/rational.dir/flags.make

cpp/CMakeFiles/rational.dir/rational/main.cpp.o: cpp/CMakeFiles/rational.dir/flags.make
cpp/CMakeFiles/rational.dir/rational/main.cpp.o: ../cpp/rational/main.cpp
cpp/CMakeFiles/rational.dir/rational/main.cpp.o: cpp/CMakeFiles/rational.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cpp/CMakeFiles/rational.dir/rational/main.cpp.o"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT cpp/CMakeFiles/rational.dir/rational/main.cpp.o -MF CMakeFiles/rational.dir/rational/main.cpp.o.d -o CMakeFiles/rational.dir/rational/main.cpp.o -c /home/yjh/kubig2025/cpp/rational/main.cpp

cpp/CMakeFiles/rational.dir/rational/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rational.dir/rational/main.cpp.i"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yjh/kubig2025/cpp/rational/main.cpp > CMakeFiles/rational.dir/rational/main.cpp.i

cpp/CMakeFiles/rational.dir/rational/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rational.dir/rational/main.cpp.s"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yjh/kubig2025/cpp/rational/main.cpp -o CMakeFiles/rational.dir/rational/main.cpp.s

cpp/CMakeFiles/rational.dir/rational/rational.cpp.o: cpp/CMakeFiles/rational.dir/flags.make
cpp/CMakeFiles/rational.dir/rational/rational.cpp.o: ../cpp/rational/rational.cpp
cpp/CMakeFiles/rational.dir/rational/rational.cpp.o: cpp/CMakeFiles/rational.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object cpp/CMakeFiles/rational.dir/rational/rational.cpp.o"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT cpp/CMakeFiles/rational.dir/rational/rational.cpp.o -MF CMakeFiles/rational.dir/rational/rational.cpp.o.d -o CMakeFiles/rational.dir/rational/rational.cpp.o -c /home/yjh/kubig2025/cpp/rational/rational.cpp

cpp/CMakeFiles/rational.dir/rational/rational.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rational.dir/rational/rational.cpp.i"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yjh/kubig2025/cpp/rational/rational.cpp > CMakeFiles/rational.dir/rational/rational.cpp.i

cpp/CMakeFiles/rational.dir/rational/rational.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rational.dir/rational/rational.cpp.s"
	cd /home/yjh/kubig2025/build/cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yjh/kubig2025/cpp/rational/rational.cpp -o CMakeFiles/rational.dir/rational/rational.cpp.s

# Object files for target rational
rational_OBJECTS = \
"CMakeFiles/rational.dir/rational/main.cpp.o" \
"CMakeFiles/rational.dir/rational/rational.cpp.o"

# External object files for target rational
rational_EXTERNAL_OBJECTS =

cpp/rational: cpp/CMakeFiles/rational.dir/rational/main.cpp.o
cpp/rational: cpp/CMakeFiles/rational.dir/rational/rational.cpp.o
cpp/rational: cpp/CMakeFiles/rational.dir/build.make
cpp/rational: cpp/CMakeFiles/rational.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yjh/kubig2025/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable rational"
	cd /home/yjh/kubig2025/build/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rational.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cpp/CMakeFiles/rational.dir/build: cpp/rational
.PHONY : cpp/CMakeFiles/rational.dir/build

cpp/CMakeFiles/rational.dir/clean:
	cd /home/yjh/kubig2025/build/cpp && $(CMAKE_COMMAND) -P CMakeFiles/rational.dir/cmake_clean.cmake
.PHONY : cpp/CMakeFiles/rational.dir/clean

cpp/CMakeFiles/rational.dir/depend:
	cd /home/yjh/kubig2025/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yjh/kubig2025 /home/yjh/kubig2025/cpp /home/yjh/kubig2025/build /home/yjh/kubig2025/build/cpp /home/yjh/kubig2025/build/cpp/CMakeFiles/rational.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cpp/CMakeFiles/rational.dir/depend


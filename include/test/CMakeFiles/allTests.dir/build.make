# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shyamini/felib/include/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shyamini/felib/include/test

# Include any dependencies generated for this target.
include CMakeFiles/allTests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/allTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/allTests.dir/flags.make

CMakeFiles/allTests.dir/node_base_test.cpp.o: CMakeFiles/allTests.dir/flags.make
CMakeFiles/allTests.dir/node_base_test.cpp.o: node_base_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shyamini/felib/include/test/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/allTests.dir/node_base_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/allTests.dir/node_base_test.cpp.o -c /home/shyamini/felib/include/test/node_base_test.cpp

CMakeFiles/allTests.dir/node_base_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/allTests.dir/node_base_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shyamini/felib/include/test/node_base_test.cpp > CMakeFiles/allTests.dir/node_base_test.cpp.i

CMakeFiles/allTests.dir/node_base_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/allTests.dir/node_base_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shyamini/felib/include/test/node_base_test.cpp -o CMakeFiles/allTests.dir/node_base_test.cpp.s

CMakeFiles/allTests.dir/node_base_test.cpp.o.requires:
.PHONY : CMakeFiles/allTests.dir/node_base_test.cpp.o.requires

CMakeFiles/allTests.dir/node_base_test.cpp.o.provides: CMakeFiles/allTests.dir/node_base_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/allTests.dir/build.make CMakeFiles/allTests.dir/node_base_test.cpp.o.provides.build
.PHONY : CMakeFiles/allTests.dir/node_base_test.cpp.o.provides

CMakeFiles/allTests.dir/node_base_test.cpp.o.provides.build: CMakeFiles/allTests.dir/node_base_test.cpp.o

# Object files for target allTests
allTests_OBJECTS = \
"CMakeFiles/allTests.dir/node_base_test.cpp.o"

# External object files for target allTests
allTests_EXTERNAL_OBJECTS =

allTests: CMakeFiles/allTests.dir/node_base_test.cpp.o
allTests: CMakeFiles/allTests.dir/build.make
allTests: /usr/lib/libgtest.a
allTests: CMakeFiles/allTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable allTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/allTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/allTests.dir/build: allTests
.PHONY : CMakeFiles/allTests.dir/build

CMakeFiles/allTests.dir/requires: CMakeFiles/allTests.dir/node_base_test.cpp.o.requires
.PHONY : CMakeFiles/allTests.dir/requires

CMakeFiles/allTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/allTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/allTests.dir/clean

CMakeFiles/allTests.dir/depend:
	cd /home/shyamini/felib/include/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shyamini/felib/include/test /home/shyamini/felib/include/test /home/shyamini/felib/include/test /home/shyamini/felib/include/test /home/shyamini/felib/include/test/CMakeFiles/allTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/allTests.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/marionajijala/Tic-Tac-Toe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/marionajijala/Tic-Tac-Toe/build

# Include any dependencies generated for this target.
include CMakeFiles/TIC-TAC-TOE.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/TIC-TAC-TOE.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/TIC-TAC-TOE.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TIC-TAC-TOE.dir/flags.make

CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o: CMakeFiles/TIC-TAC-TOE.dir/flags.make
CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o: /Users/marionajijala/Tic-Tac-Toe/src/main.cpp
CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o: CMakeFiles/TIC-TAC-TOE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marionajijala/Tic-Tac-Toe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o -MF CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o.d -o CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o -c /Users/marionajijala/Tic-Tac-Toe/src/main.cpp

CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marionajijala/Tic-Tac-Toe/src/main.cpp > CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.i

CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marionajijala/Tic-Tac-Toe/src/main.cpp -o CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.s

# Object files for target TIC-TAC-TOE
TIC__TAC__TOE_OBJECTS = \
"CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o"

# External object files for target TIC-TAC-TOE
TIC__TAC__TOE_EXTERNAL_OBJECTS =

TIC-TAC-TOE: CMakeFiles/TIC-TAC-TOE.dir/src/main.cpp.o
TIC-TAC-TOE: CMakeFiles/TIC-TAC-TOE.dir/build.make
TIC-TAC-TOE: vendor/raylib/raylib/libraylib.a
TIC-TAC-TOE: vendor/raylib/raylib/external/glfw/src/libglfw3.a
TIC-TAC-TOE: CMakeFiles/TIC-TAC-TOE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/marionajijala/Tic-Tac-Toe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TIC-TAC-TOE"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TIC-TAC-TOE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TIC-TAC-TOE.dir/build: TIC-TAC-TOE
.PHONY : CMakeFiles/TIC-TAC-TOE.dir/build

CMakeFiles/TIC-TAC-TOE.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TIC-TAC-TOE.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TIC-TAC-TOE.dir/clean

CMakeFiles/TIC-TAC-TOE.dir/depend:
	cd /Users/marionajijala/Tic-Tac-Toe/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marionajijala/Tic-Tac-Toe /Users/marionajijala/Tic-Tac-Toe /Users/marionajijala/Tic-Tac-Toe/build /Users/marionajijala/Tic-Tac-Toe/build /Users/marionajijala/Tic-Tac-Toe/build/CMakeFiles/TIC-TAC-TOE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TIC-TAC-TOE.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.6/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/build

# Include any dependencies generated for this target.
include CMakeFiles/primeNumberApp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/primeNumberApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/primeNumberApp.dir/flags.make

CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.o: CMakeFiles/primeNumberApp.dir/flags.make
CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.o: ../PrimeNumberApp/PrimeNumberCalculator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.o -c /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/PrimeNumberApp/PrimeNumberCalculator.cpp

CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/PrimeNumberApp/PrimeNumberCalculator.cpp > CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.i

CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/PrimeNumberApp/PrimeNumberCalculator.cpp -o CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.s

CMakeFiles/primeNumberApp.dir/driver.cpp.o: CMakeFiles/primeNumberApp.dir/flags.make
CMakeFiles/primeNumberApp.dir/driver.cpp.o: ../driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/primeNumberApp.dir/driver.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/primeNumberApp.dir/driver.cpp.o -c /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/driver.cpp

CMakeFiles/primeNumberApp.dir/driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/primeNumberApp.dir/driver.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/driver.cpp > CMakeFiles/primeNumberApp.dir/driver.cpp.i

CMakeFiles/primeNumberApp.dir/driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/primeNumberApp.dir/driver.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/driver.cpp -o CMakeFiles/primeNumberApp.dir/driver.cpp.s

# Object files for target primeNumberApp
primeNumberApp_OBJECTS = \
"CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.o" \
"CMakeFiles/primeNumberApp.dir/driver.cpp.o"

# External object files for target primeNumberApp
primeNumberApp_EXTERNAL_OBJECTS =

primeNumberApp: CMakeFiles/primeNumberApp.dir/PrimeNumberApp/PrimeNumberCalculator.cpp.o
primeNumberApp: CMakeFiles/primeNumberApp.dir/driver.cpp.o
primeNumberApp: CMakeFiles/primeNumberApp.dir/build.make
primeNumberApp: CMakeFiles/primeNumberApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable primeNumberApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/primeNumberApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/primeNumberApp.dir/build: primeNumberApp

.PHONY : CMakeFiles/primeNumberApp.dir/build

CMakeFiles/primeNumberApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/primeNumberApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/primeNumberApp.dir/clean

CMakeFiles/primeNumberApp.dir/depend:
	cd /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/build /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/build /Volumes/Logesh/Work/Local_Repository/threadpool_exercise/Sense.Features/src/utilities/threadpool_exercise/build/CMakeFiles/primeNumberApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/primeNumberApp.dir/depend

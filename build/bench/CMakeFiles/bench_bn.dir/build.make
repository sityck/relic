# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/sdu/relic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sdu/relic/build

# Include any dependencies generated for this target.
include bench/CMakeFiles/bench_bn.dir/depend.make

# Include the progress variables for this target.
include bench/CMakeFiles/bench_bn.dir/progress.make

# Include the compile flags for this target's objects.
include bench/CMakeFiles/bench_bn.dir/flags.make

bench/CMakeFiles/bench_bn.dir/bench_bn.c.o: bench/CMakeFiles/bench_bn.dir/flags.make
bench/CMakeFiles/bench_bn.dir/bench_bn.c.o: ../bench/bench_bn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdu/relic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object bench/CMakeFiles/bench_bn.dir/bench_bn.c.o"
	cd /home/sdu/relic/build/bench && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/bench_bn.dir/bench_bn.c.o   -c /home/sdu/relic/bench/bench_bn.c

bench/CMakeFiles/bench_bn.dir/bench_bn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bench_bn.dir/bench_bn.c.i"
	cd /home/sdu/relic/build/bench && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sdu/relic/bench/bench_bn.c > CMakeFiles/bench_bn.dir/bench_bn.c.i

bench/CMakeFiles/bench_bn.dir/bench_bn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bench_bn.dir/bench_bn.c.s"
	cd /home/sdu/relic/build/bench && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sdu/relic/bench/bench_bn.c -o CMakeFiles/bench_bn.dir/bench_bn.c.s

bench/CMakeFiles/bench_bn.dir/bench_bn.c.o.requires:

.PHONY : bench/CMakeFiles/bench_bn.dir/bench_bn.c.o.requires

bench/CMakeFiles/bench_bn.dir/bench_bn.c.o.provides: bench/CMakeFiles/bench_bn.dir/bench_bn.c.o.requires
	$(MAKE) -f bench/CMakeFiles/bench_bn.dir/build.make bench/CMakeFiles/bench_bn.dir/bench_bn.c.o.provides.build
.PHONY : bench/CMakeFiles/bench_bn.dir/bench_bn.c.o.provides

bench/CMakeFiles/bench_bn.dir/bench_bn.c.o.provides.build: bench/CMakeFiles/bench_bn.dir/bench_bn.c.o


# Object files for target bench_bn
bench_bn_OBJECTS = \
"CMakeFiles/bench_bn.dir/bench_bn.c.o"

# External object files for target bench_bn
bench_bn_EXTERNAL_OBJECTS =

bin/bench_bn: bench/CMakeFiles/bench_bn.dir/bench_bn.c.o
bin/bench_bn: bench/CMakeFiles/bench_bn.dir/build.make
bin/bench_bn: lib/librelic_s.a
bin/bench_bn: bench/CMakeFiles/bench_bn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sdu/relic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/bench_bn"
	cd /home/sdu/relic/build/bench && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench_bn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bench/CMakeFiles/bench_bn.dir/build: bin/bench_bn

.PHONY : bench/CMakeFiles/bench_bn.dir/build

bench/CMakeFiles/bench_bn.dir/requires: bench/CMakeFiles/bench_bn.dir/bench_bn.c.o.requires

.PHONY : bench/CMakeFiles/bench_bn.dir/requires

bench/CMakeFiles/bench_bn.dir/clean:
	cd /home/sdu/relic/build/bench && $(CMAKE_COMMAND) -P CMakeFiles/bench_bn.dir/cmake_clean.cmake
.PHONY : bench/CMakeFiles/bench_bn.dir/clean

bench/CMakeFiles/bench_bn.dir/depend:
	cd /home/sdu/relic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdu/relic /home/sdu/relic/bench /home/sdu/relic/build /home/sdu/relic/build/bench /home/sdu/relic/build/bench/CMakeFiles/bench_bn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bench/CMakeFiles/bench_bn.dir/depend


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
CMAKE_SOURCE_DIR = /local/saeid/libmsr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /local/saeid/libmsr/BUILD

# Include any dependencies generated for this target.
include cmd/CMakeFiles/msr-cmd.dir/depend.make

# Include the progress variables for this target.
include cmd/CMakeFiles/msr-cmd.dir/progress.make

# Include the compile flags for this target's objects.
include cmd/CMakeFiles/msr-cmd.dir/flags.make

cmd/CMakeFiles/msr-cmd.dir/msr.c.o: cmd/CMakeFiles/msr-cmd.dir/flags.make
cmd/CMakeFiles/msr-cmd.dir/msr.c.o: ../cmd/msr.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object cmd/CMakeFiles/msr-cmd.dir/msr.c.o"
	cd /local/saeid/libmsr/BUILD/cmd && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-cmd.dir/msr.c.o   -c /local/saeid/libmsr/cmd/msr.c

cmd/CMakeFiles/msr-cmd.dir/msr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-cmd.dir/msr.c.i"
	cd /local/saeid/libmsr/BUILD/cmd && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/cmd/msr.c > CMakeFiles/msr-cmd.dir/msr.c.i

cmd/CMakeFiles/msr-cmd.dir/msr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-cmd.dir/msr.c.s"
	cd /local/saeid/libmsr/BUILD/cmd && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/cmd/msr.c -o CMakeFiles/msr-cmd.dir/msr.c.s

cmd/CMakeFiles/msr-cmd.dir/msr.c.o.requires:
.PHONY : cmd/CMakeFiles/msr-cmd.dir/msr.c.o.requires

cmd/CMakeFiles/msr-cmd.dir/msr.c.o.provides: cmd/CMakeFiles/msr-cmd.dir/msr.c.o.requires
	$(MAKE) -f cmd/CMakeFiles/msr-cmd.dir/build.make cmd/CMakeFiles/msr-cmd.dir/msr.c.o.provides.build
.PHONY : cmd/CMakeFiles/msr-cmd.dir/msr.c.o.provides

cmd/CMakeFiles/msr-cmd.dir/msr.c.o.provides.build: cmd/CMakeFiles/msr-cmd.dir/msr.c.o

# Object files for target msr-cmd
msr__cmd_OBJECTS = \
"CMakeFiles/msr-cmd.dir/msr.c.o"

# External object files for target msr-cmd
msr__cmd_EXTERNAL_OBJECTS =

cmd/msr: cmd/CMakeFiles/msr-cmd.dir/msr.c.o
cmd/msr: cmd/CMakeFiles/msr-cmd.dir/build.make
cmd/msr: cmd/CMakeFiles/msr-cmd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable msr"
	cd /local/saeid/libmsr/BUILD/cmd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msr-cmd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cmd/CMakeFiles/msr-cmd.dir/build: cmd/msr
.PHONY : cmd/CMakeFiles/msr-cmd.dir/build

cmd/CMakeFiles/msr-cmd.dir/requires: cmd/CMakeFiles/msr-cmd.dir/msr.c.o.requires
.PHONY : cmd/CMakeFiles/msr-cmd.dir/requires

cmd/CMakeFiles/msr-cmd.dir/clean:
	cd /local/saeid/libmsr/BUILD/cmd && $(CMAKE_COMMAND) -P CMakeFiles/msr-cmd.dir/cmake_clean.cmake
.PHONY : cmd/CMakeFiles/msr-cmd.dir/clean

cmd/CMakeFiles/msr-cmd.dir/depend:
	cd /local/saeid/libmsr/BUILD && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/saeid/libmsr /local/saeid/libmsr/cmd /local/saeid/libmsr/BUILD /local/saeid/libmsr/BUILD/cmd /local/saeid/libmsr/BUILD/cmd/CMakeFiles/msr-cmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cmd/CMakeFiles/msr-cmd.dir/depend


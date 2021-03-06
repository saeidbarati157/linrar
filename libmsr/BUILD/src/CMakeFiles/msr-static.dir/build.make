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
include src/CMakeFiles/msr-static.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/msr-static.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/msr-static.dir/flags.make

src/CMakeFiles/msr-static.dir/msr_clocks.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/msr_clocks.c.o: ../src/msr_clocks.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/msr_clocks.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/msr_clocks.c.o   -c /local/saeid/libmsr/src/msr_clocks.c

src/CMakeFiles/msr-static.dir/msr_clocks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/msr_clocks.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/msr_clocks.c > CMakeFiles/msr-static.dir/msr_clocks.c.i

src/CMakeFiles/msr-static.dir/msr_clocks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/msr_clocks.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/msr_clocks.c -o CMakeFiles/msr-static.dir/msr_clocks.c.s

src/CMakeFiles/msr-static.dir/msr_clocks.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/msr_clocks.c.o.requires

src/CMakeFiles/msr-static.dir/msr_clocks.c.o.provides: src/CMakeFiles/msr-static.dir/msr_clocks.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/msr_clocks.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/msr_clocks.c.o.provides

src/CMakeFiles/msr-static.dir/msr_clocks.c.o.provides.build: src/CMakeFiles/msr-static.dir/msr_clocks.c.o

src/CMakeFiles/msr-static.dir/msr_core.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/msr_core.c.o: ../src/msr_core.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/msr_core.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/msr_core.c.o   -c /local/saeid/libmsr/src/msr_core.c

src/CMakeFiles/msr-static.dir/msr_core.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/msr_core.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/msr_core.c > CMakeFiles/msr-static.dir/msr_core.c.i

src/CMakeFiles/msr-static.dir/msr_core.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/msr_core.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/msr_core.c -o CMakeFiles/msr-static.dir/msr_core.c.s

src/CMakeFiles/msr-static.dir/msr_core.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/msr_core.c.o.requires

src/CMakeFiles/msr-static.dir/msr_core.c.o.provides: src/CMakeFiles/msr-static.dir/msr_core.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/msr_core.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/msr_core.c.o.provides

src/CMakeFiles/msr-static.dir/msr_core.c.o.provides.build: src/CMakeFiles/msr-static.dir/msr_core.c.o

src/CMakeFiles/msr-static.dir/msr_counters.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/msr_counters.c.o: ../src/msr_counters.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/msr_counters.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/msr_counters.c.o   -c /local/saeid/libmsr/src/msr_counters.c

src/CMakeFiles/msr-static.dir/msr_counters.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/msr_counters.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/msr_counters.c > CMakeFiles/msr-static.dir/msr_counters.c.i

src/CMakeFiles/msr-static.dir/msr_counters.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/msr_counters.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/msr_counters.c -o CMakeFiles/msr-static.dir/msr_counters.c.s

src/CMakeFiles/msr-static.dir/msr_counters.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/msr_counters.c.o.requires

src/CMakeFiles/msr-static.dir/msr_counters.c.o.provides: src/CMakeFiles/msr-static.dir/msr_counters.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/msr_counters.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/msr_counters.c.o.provides

src/CMakeFiles/msr-static.dir/msr_counters.c.o.provides.build: src/CMakeFiles/msr-static.dir/msr_counters.c.o

src/CMakeFiles/msr-static.dir/msr_misc.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/msr_misc.c.o: ../src/msr_misc.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/msr_misc.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/msr_misc.c.o   -c /local/saeid/libmsr/src/msr_misc.c

src/CMakeFiles/msr-static.dir/msr_misc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/msr_misc.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/msr_misc.c > CMakeFiles/msr-static.dir/msr_misc.c.i

src/CMakeFiles/msr-static.dir/msr_misc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/msr_misc.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/msr_misc.c -o CMakeFiles/msr-static.dir/msr_misc.c.s

src/CMakeFiles/msr-static.dir/msr_misc.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/msr_misc.c.o.requires

src/CMakeFiles/msr-static.dir/msr_misc.c.o.provides: src/CMakeFiles/msr-static.dir/msr_misc.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/msr_misc.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/msr_misc.c.o.provides

src/CMakeFiles/msr-static.dir/msr_misc.c.o.provides.build: src/CMakeFiles/msr-static.dir/msr_misc.c.o

src/CMakeFiles/msr-static.dir/msr_rapl.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/msr_rapl.c.o: ../src/msr_rapl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/msr_rapl.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/msr_rapl.c.o   -c /local/saeid/libmsr/src/msr_rapl.c

src/CMakeFiles/msr-static.dir/msr_rapl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/msr_rapl.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/msr_rapl.c > CMakeFiles/msr-static.dir/msr_rapl.c.i

src/CMakeFiles/msr-static.dir/msr_rapl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/msr_rapl.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/msr_rapl.c -o CMakeFiles/msr-static.dir/msr_rapl.c.s

src/CMakeFiles/msr-static.dir/msr_rapl.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/msr_rapl.c.o.requires

src/CMakeFiles/msr-static.dir/msr_rapl.c.o.provides: src/CMakeFiles/msr-static.dir/msr_rapl.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/msr_rapl.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/msr_rapl.c.o.provides

src/CMakeFiles/msr-static.dir/msr_rapl.c.o.provides.build: src/CMakeFiles/msr-static.dir/msr_rapl.c.o

src/CMakeFiles/msr-static.dir/msr_thermal.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/msr_thermal.c.o: ../src/msr_thermal.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/msr_thermal.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/msr_thermal.c.o   -c /local/saeid/libmsr/src/msr_thermal.c

src/CMakeFiles/msr-static.dir/msr_thermal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/msr_thermal.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/msr_thermal.c > CMakeFiles/msr-static.dir/msr_thermal.c.i

src/CMakeFiles/msr-static.dir/msr_thermal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/msr_thermal.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/msr_thermal.c -o CMakeFiles/msr-static.dir/msr_thermal.c.s

src/CMakeFiles/msr-static.dir/msr_thermal.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/msr_thermal.c.o.requires

src/CMakeFiles/msr-static.dir/msr_thermal.c.o.provides: src/CMakeFiles/msr-static.dir/msr_thermal.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/msr_thermal.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/msr_thermal.c.o.provides

src/CMakeFiles/msr-static.dir/msr_thermal.c.o.provides.build: src/CMakeFiles/msr-static.dir/msr_thermal.c.o

src/CMakeFiles/msr-static.dir/msr_turbo.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/msr_turbo.c.o: ../src/msr_turbo.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/msr_turbo.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/msr_turbo.c.o   -c /local/saeid/libmsr/src/msr_turbo.c

src/CMakeFiles/msr-static.dir/msr_turbo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/msr_turbo.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/msr_turbo.c > CMakeFiles/msr-static.dir/msr_turbo.c.i

src/CMakeFiles/msr-static.dir/msr_turbo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/msr_turbo.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/msr_turbo.c -o CMakeFiles/msr-static.dir/msr_turbo.c.s

src/CMakeFiles/msr-static.dir/msr_turbo.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/msr_turbo.c.o.requires

src/CMakeFiles/msr-static.dir/msr_turbo.c.o.provides: src/CMakeFiles/msr-static.dir/msr_turbo.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/msr_turbo.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/msr_turbo.c.o.provides

src/CMakeFiles/msr-static.dir/msr_turbo.c.o.provides.build: src/CMakeFiles/msr-static.dir/msr_turbo.c.o

src/CMakeFiles/msr-static.dir/cpuid.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/cpuid.c.o: ../src/cpuid.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/cpuid.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/cpuid.c.o   -c /local/saeid/libmsr/src/cpuid.c

src/CMakeFiles/msr-static.dir/cpuid.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/cpuid.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/cpuid.c > CMakeFiles/msr-static.dir/cpuid.c.i

src/CMakeFiles/msr-static.dir/cpuid.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/cpuid.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/cpuid.c -o CMakeFiles/msr-static.dir/cpuid.c.s

src/CMakeFiles/msr-static.dir/cpuid.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/cpuid.c.o.requires

src/CMakeFiles/msr-static.dir/cpuid.c.o.provides: src/CMakeFiles/msr-static.dir/cpuid.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/cpuid.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/cpuid.c.o.provides

src/CMakeFiles/msr-static.dir/cpuid.c.o.provides.build: src/CMakeFiles/msr-static.dir/cpuid.c.o

src/CMakeFiles/msr-static.dir/profile.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/profile.c.o: ../src/profile.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/profile.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/profile.c.o   -c /local/saeid/libmsr/src/profile.c

src/CMakeFiles/msr-static.dir/profile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/profile.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/profile.c > CMakeFiles/msr-static.dir/profile.c.i

src/CMakeFiles/msr-static.dir/profile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/profile.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/profile.c -o CMakeFiles/msr-static.dir/profile.c.s

src/CMakeFiles/msr-static.dir/profile.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/profile.c.o.requires

src/CMakeFiles/msr-static.dir/profile.c.o.provides: src/CMakeFiles/msr-static.dir/profile.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/profile.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/profile.c.o.provides

src/CMakeFiles/msr-static.dir/profile.c.o.provides.build: src/CMakeFiles/msr-static.dir/profile.c.o

src/CMakeFiles/msr-static.dir/memhdlr.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/memhdlr.c.o: ../src/memhdlr.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/memhdlr.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/memhdlr.c.o   -c /local/saeid/libmsr/src/memhdlr.c

src/CMakeFiles/msr-static.dir/memhdlr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/memhdlr.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/memhdlr.c > CMakeFiles/msr-static.dir/memhdlr.c.i

src/CMakeFiles/msr-static.dir/memhdlr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/memhdlr.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/memhdlr.c -o CMakeFiles/msr-static.dir/memhdlr.c.s

src/CMakeFiles/msr-static.dir/memhdlr.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/memhdlr.c.o.requires

src/CMakeFiles/msr-static.dir/memhdlr.c.o.provides: src/CMakeFiles/msr-static.dir/memhdlr.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/memhdlr.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/memhdlr.c.o.provides

src/CMakeFiles/msr-static.dir/memhdlr.c.o.provides.build: src/CMakeFiles/msr-static.dir/memhdlr.c.o

src/CMakeFiles/msr-static.dir/signalCombined.c.o: src/CMakeFiles/msr-static.dir/flags.make
src/CMakeFiles/msr-static.dir/signalCombined.c.o: ../src/signalCombined.c
	$(CMAKE_COMMAND) -E cmake_progress_report /local/saeid/libmsr/BUILD/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/CMakeFiles/msr-static.dir/signalCombined.c.o"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msr-static.dir/signalCombined.c.o   -c /local/saeid/libmsr/src/signalCombined.c

src/CMakeFiles/msr-static.dir/signalCombined.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msr-static.dir/signalCombined.c.i"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /local/saeid/libmsr/src/signalCombined.c > CMakeFiles/msr-static.dir/signalCombined.c.i

src/CMakeFiles/msr-static.dir/signalCombined.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msr-static.dir/signalCombined.c.s"
	cd /local/saeid/libmsr/BUILD/src && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /local/saeid/libmsr/src/signalCombined.c -o CMakeFiles/msr-static.dir/signalCombined.c.s

src/CMakeFiles/msr-static.dir/signalCombined.c.o.requires:
.PHONY : src/CMakeFiles/msr-static.dir/signalCombined.c.o.requires

src/CMakeFiles/msr-static.dir/signalCombined.c.o.provides: src/CMakeFiles/msr-static.dir/signalCombined.c.o.requires
	$(MAKE) -f src/CMakeFiles/msr-static.dir/build.make src/CMakeFiles/msr-static.dir/signalCombined.c.o.provides.build
.PHONY : src/CMakeFiles/msr-static.dir/signalCombined.c.o.provides

src/CMakeFiles/msr-static.dir/signalCombined.c.o.provides.build: src/CMakeFiles/msr-static.dir/signalCombined.c.o

# Object files for target msr-static
msr__static_OBJECTS = \
"CMakeFiles/msr-static.dir/msr_clocks.c.o" \
"CMakeFiles/msr-static.dir/msr_core.c.o" \
"CMakeFiles/msr-static.dir/msr_counters.c.o" \
"CMakeFiles/msr-static.dir/msr_misc.c.o" \
"CMakeFiles/msr-static.dir/msr_rapl.c.o" \
"CMakeFiles/msr-static.dir/msr_thermal.c.o" \
"CMakeFiles/msr-static.dir/msr_turbo.c.o" \
"CMakeFiles/msr-static.dir/cpuid.c.o" \
"CMakeFiles/msr-static.dir/profile.c.o" \
"CMakeFiles/msr-static.dir/memhdlr.c.o" \
"CMakeFiles/msr-static.dir/signalCombined.c.o"

# External object files for target msr-static
msr__static_EXTERNAL_OBJECTS =

src/libmsr.a: src/CMakeFiles/msr-static.dir/msr_clocks.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/msr_core.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/msr_counters.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/msr_misc.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/msr_rapl.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/msr_thermal.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/msr_turbo.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/cpuid.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/profile.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/memhdlr.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/signalCombined.c.o
src/libmsr.a: src/CMakeFiles/msr-static.dir/build.make
src/libmsr.a: src/CMakeFiles/msr-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libmsr.a"
	cd /local/saeid/libmsr/BUILD/src && $(CMAKE_COMMAND) -P CMakeFiles/msr-static.dir/cmake_clean_target.cmake
	cd /local/saeid/libmsr/BUILD/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msr-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/msr-static.dir/build: src/libmsr.a
.PHONY : src/CMakeFiles/msr-static.dir/build

src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/msr_clocks.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/msr_core.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/msr_counters.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/msr_misc.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/msr_rapl.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/msr_thermal.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/msr_turbo.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/cpuid.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/profile.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/memhdlr.c.o.requires
src/CMakeFiles/msr-static.dir/requires: src/CMakeFiles/msr-static.dir/signalCombined.c.o.requires
.PHONY : src/CMakeFiles/msr-static.dir/requires

src/CMakeFiles/msr-static.dir/clean:
	cd /local/saeid/libmsr/BUILD/src && $(CMAKE_COMMAND) -P CMakeFiles/msr-static.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/msr-static.dir/clean

src/CMakeFiles/msr-static.dir/depend:
	cd /local/saeid/libmsr/BUILD && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /local/saeid/libmsr /local/saeid/libmsr/src /local/saeid/libmsr/BUILD /local/saeid/libmsr/BUILD/src /local/saeid/libmsr/BUILD/src/CMakeFiles/msr-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/msr-static.dir/depend


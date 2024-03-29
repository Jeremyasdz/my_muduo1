# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /root/project/my_muduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/project/my_muduo

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /root/project/my_muduo/CMakeFiles /root/project/my_muduo/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /root/project/my_muduo/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named hello

# Build rule for target.
hello: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 hello
.PHONY : hello

# fast build rule for target.
hello/fast:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/build
.PHONY : hello/fast

Channel.o: Channel.cc.o

.PHONY : Channel.o

# target to build an object file
Channel.cc.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/Channel.cc.o
.PHONY : Channel.cc.o

Channel.i: Channel.cc.i

.PHONY : Channel.i

# target to preprocess a source file
Channel.cc.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/Channel.cc.i
.PHONY : Channel.cc.i

Channel.s: Channel.cc.s

.PHONY : Channel.s

# target to generate assembly for a file
Channel.cc.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/Channel.cc.s
.PHONY : Channel.cc.s

EpollPoller.o: EpollPoller.cc.o

.PHONY : EpollPoller.o

# target to build an object file
EpollPoller.cc.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/EpollPoller.cc.o
.PHONY : EpollPoller.cc.o

EpollPoller.i: EpollPoller.cc.i

.PHONY : EpollPoller.i

# target to preprocess a source file
EpollPoller.cc.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/EpollPoller.cc.i
.PHONY : EpollPoller.cc.i

EpollPoller.s: EpollPoller.cc.s

.PHONY : EpollPoller.s

# target to generate assembly for a file
EpollPoller.cc.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/EpollPoller.cc.s
.PHONY : EpollPoller.cc.s

EventLoop.o: EventLoop.cc.o

.PHONY : EventLoop.o

# target to build an object file
EventLoop.cc.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/EventLoop.cc.o
.PHONY : EventLoop.cc.o

EventLoop.i: EventLoop.cc.i

.PHONY : EventLoop.i

# target to preprocess a source file
EventLoop.cc.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/EventLoop.cc.i
.PHONY : EventLoop.cc.i

EventLoop.s: EventLoop.cc.s

.PHONY : EventLoop.s

# target to generate assembly for a file
EventLoop.cc.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/EventLoop.cc.s
.PHONY : EventLoop.cc.s

Poller.o: Poller.cc.o

.PHONY : Poller.o

# target to build an object file
Poller.cc.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/Poller.cc.o
.PHONY : Poller.cc.o

Poller.i: Poller.cc.i

.PHONY : Poller.i

# target to preprocess a source file
Poller.cc.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/Poller.cc.i
.PHONY : Poller.cc.i

Poller.s: Poller.cc.s

.PHONY : Poller.s

# target to generate assembly for a file
Poller.cc.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/Poller.cc.s
.PHONY : Poller.cc.s

base/CurrentThread.o: base/CurrentThread.cc.o

.PHONY : base/CurrentThread.o

# target to build an object file
base/CurrentThread.cc.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/base/CurrentThread.cc.o
.PHONY : base/CurrentThread.cc.o

base/CurrentThread.i: base/CurrentThread.cc.i

.PHONY : base/CurrentThread.i

# target to preprocess a source file
base/CurrentThread.cc.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/base/CurrentThread.cc.i
.PHONY : base/CurrentThread.cc.i

base/CurrentThread.s: base/CurrentThread.cc.s

.PHONY : base/CurrentThread.s

# target to generate assembly for a file
base/CurrentThread.cc.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/base/CurrentThread.cc.s
.PHONY : base/CurrentThread.cc.s

base/Timestamp.o: base/Timestamp.cc.o

.PHONY : base/Timestamp.o

# target to build an object file
base/Timestamp.cc.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/base/Timestamp.cc.o
.PHONY : base/Timestamp.cc.o

base/Timestamp.i: base/Timestamp.cc.i

.PHONY : base/Timestamp.i

# target to preprocess a source file
base/Timestamp.cc.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/base/Timestamp.cc.i
.PHONY : base/Timestamp.cc.i

base/Timestamp.s: base/Timestamp.cc.s

.PHONY : base/Timestamp.s

# target to generate assembly for a file
base/Timestamp.cc.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/base/Timestamp.cc.s
.PHONY : base/Timestamp.cc.s

main.o: main.cc.o

.PHONY : main.o

# target to build an object file
main.cc.o:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/main.cc.o
.PHONY : main.cc.o

main.i: main.cc.i

.PHONY : main.i

# target to preprocess a source file
main.cc.i:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/main.cc.i
.PHONY : main.cc.i

main.s: main.cc.s

.PHONY : main.s

# target to generate assembly for a file
main.cc.s:
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/main.cc.s
.PHONY : main.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... hello"
	@echo "... Channel.o"
	@echo "... Channel.i"
	@echo "... Channel.s"
	@echo "... EpollPoller.o"
	@echo "... EpollPoller.i"
	@echo "... EpollPoller.s"
	@echo "... EventLoop.o"
	@echo "... EventLoop.i"
	@echo "... EventLoop.s"
	@echo "... Poller.o"
	@echo "... Poller.i"
	@echo "... Poller.s"
	@echo "... base/CurrentThread.o"
	@echo "... base/CurrentThread.i"
	@echo "... base/CurrentThread.s"
	@echo "... base/Timestamp.o"
	@echo "... base/Timestamp.i"
	@echo "... base/Timestamp.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system


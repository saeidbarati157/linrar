##########################################################################################
AUTOMAKE_OPTIONS = foreign subdir-objects
ACLOCAL_FLAGS = -I m4

LDFLAGS += -lmsr
if HAVE_LIBMSR1
RAPL_SRC = rapl22.c
endif
if HAVE_LIBMSR2
RAPL_SRC = rapl2.c
endif

bin_PROGRAMS = powmon power_wrapper_static power_wrapper_dynamic

powmon_SOURCES = $(RAPL_SRC) highlander.c powmon.c 
power_wrapper_static_SOURCES = $(RAPL_SRC) highlander.c power_wrapper_static.c 
power_wrapper_dynamic_SOURCES = $(RAPL_SRC) highlander.c power_wrapper_dynamic.c

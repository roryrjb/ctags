# Makefile.am for Exuberant Ctags
#
# NOTE: The source file list below mirrors source.mak.
# If you add or remove source files, update both this file and source.mak.

# Disable automake's built-in ctags/etags targets to avoid conflict
# with our program name
CTAGS = :
ETAGS = :

AM_CPPFLAGS = -I$(top_srcdir) -I$(top_builddir)

bin_PROGRAMS = ctags

ctags_SOURCES = \
	args.c args.h \
	ctags.h \
	debug.c debug.h \
	entry.c entry.h \
	general.h \
	lregex.c \
	main.c main.h \
	options.c options.h \
	parse.c parse.h \
	parsers.h \
	read.c read.h \
	routines.c routines.h \
	sort.c sort.h \
	strlist.c strlist.h \
	vstring.c vstring.h

# readtags standalone tool (not installed by default)
noinst_PROGRAMS = readtags
readtags_SOURCES = readtags.c readtags.h
readtags_CPPFLAGS = $(AM_CPPFLAGS) -DREADTAGS_MAIN

# Man page
man1_MANS = ctags.1

# Conditional: install readtags library
if INSTALL_READLIB
lib_LIBRARIES = libreadtags.a
libreadtags_a_SOURCES = readtags.c readtags.h
include_HEADERS = readtags.h
endif

# Conditional: install etags symlinks
if ENABLE_ETAGS
install-exec-hook:
	cd $(DESTDIR)$(bindir) && $(LN_S) -f ctags$(EXEEXT) etags$(EXEEXT)

install-data-hook:
	cd $(DESTDIR)$(man1dir) && $(LN_S) -f ctags.1 etags.1

uninstall-hook:
	rm -f $(DESTDIR)$(bindir)/etags$(EXEEXT)
	rm -f $(DESTDIR)$(man1dir)/etags.1
endif

# Extra distribution files
EXTRA_DIST = \
	COPYING \
	EXTENDING.html \
	FAQ \
	INSTALL.oth \
	MAINTAINERS \
	NEWS \
	README \
	Test \
	ctags.spec \
	descrip.mms \
	gnu_regex \
	magic.diff \
	maintainer.mak \
	mk_bc3.mak mk_bc5.mak mk_djg.mak mk_manx.mak mk_mingw.mak \
	mk_mpw.mak mk_mvc.mak mk_os2.mak mk_qdos.mak mk_risc.mak \
	mk_sas.mak \
	mkinstalldirs \
	source.mak \
	testing.mak \
	e_amiga.h e_djgpp.h e_mac.h e_msoft.h e_os2.h e_qdos.h \
	e_riscos.h e_vms.h \
	argproc.c mac.c qdos.c

CLEANFILES = tags TAGS

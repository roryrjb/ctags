# $Id$
#
# Shared macros

HEADERS = \
	args.h ctags.h debug.h entry.h general.h \
	main.h options.h parse.h parsers.h read.h routines.h sort.h \
	strlist.h vstring.h

SOURCES = \
	args.c \
	entry.c \
	lregex.c \
	main.c \
	options.c \
	parse.c \
	read.c \
	routines.c \
	sort.c \
	strlist.c \
	vstring.c

ENVIRONMENT_HEADERS = \
    e_amiga.h e_djgpp.h e_mac.h e_msoft.h e_os2.h e_qdos.h e_riscos.h e_vms.h

ENVIRONMENT_SOURCES = \
    argproc.c mac.c qdos.c

REGEX_SOURCES = gnu_regex/regex.c

REGEX_HEADERS = gnu_regex/regex.h

OBJECTS = \
	args.$(OBJEXT) \
	entry.$(OBJEXT) \
	lregex.$(OBJEXT) \
	main.$(OBJEXT) \
	options.$(OBJEXT) \
	parse.$(OBJEXT) \
	read.$(OBJEXT) \
	routines.$(OBJEXT) \
	sort.$(OBJEXT) \
	strlist.$(OBJEXT) \
	vstring.$(OBJEXT)

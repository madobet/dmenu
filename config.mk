# dmenu version
VERSION = 5.0

# paths
PREFIX ?= /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

LOCINC = include

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = $(X11INC)/freetype2

# jansson
# - static link
JANSSON = lib/libjansson.a
# - dynamic link
# JANSSONINC = `pkg-config --cflags jansson`
# JANSSONLIBS = `pkg-config --libs jansson`

# uncomment on RHEL and Arch Linux for strcasecmp
EXTRAFLAGS=-D_GNU_SOURCE

# includes and libs
INCS = -I$(X11INC) -I$(FREETYPEINC) $(JANSSONINC)
LIBS = -L$(X11LIB) -lX11 $(XINERAMALIBS) $(FREETYPELIBS) -lm $(JANSSONLIBS)

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\" $(XINERAMAFLAGS) $(EXTRAFLAGS)
CFLAGS   = -std=c99 -pedantic -Wall -Os $(INCS) $(CPPFLAGS)
LDFLAGS  = $(LIBS) $(JANSSON)

# compiler and linker
CC = cc

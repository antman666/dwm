# dwm version
VERSION = 6.4

# Customize below to fit your system

# paths
PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/include/X11
X11LIB = /usr/lib/X11

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = ${X11INC}/freetype2

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS} -lXrender

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=700L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Ofast ${INCS} ${CPPFLAGS} -march=native -fomit-frame-pointer -fno-common -fopenmp -flto=auto -fgraphite-identity -floop-nest-optimize -ftree-loop-distribution -floop-parallelize-all -ftree-parallelize-loops=2 -fdevirtualize-at-ltrans
LDFLAGS  = ${LIBS} -Wl,-Ofast,--sort-common,--as-needed,--strip-all,--hash-style=gnu,-lmimalloc -march=native -fopenmp

# Solaris
#CFLAGS  = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc

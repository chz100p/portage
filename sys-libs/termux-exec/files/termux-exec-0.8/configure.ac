AC_PREREQ(2.64)
AC_INIT([termux-exec], [0.8], [termux-exec@termux.com], [termux-exec], [https://github.com/termux/termux-exec])

AC_CONFIG_SRCDIR([termux-exec.c])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_HEADER([config.h])

AC_GNU_SOURCE

AM_INIT_AUTOMAKE([1.10 foreign])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
AM_MAINTAINER_MODE

AC_ARG_VAR([V], [Verbose output])
AC_ARG_VAR([EXTRA_CFLAGS], [Extra C compiler flags])
AC_ARG_VAR([EXTRA_LDFLAGS], [Extra linker flags])

# C toolchain
AM_PROG_AR
AC_PROG_CC
AC_PROG_MAKE_SET
AC_PROG_LN_S
AM_PROG_LIBTOOL
AM_PROG_NM
LT_INIT

AC_CANONICAL_HOST
AC_CANONICAL_BUILD
AC_LANG([C])

# --disable-static by default
AC_DISABLE_STATIC

# --with-libpath
AC_ARG_WITH([libpath],
    [AS_HELP_STRING([--with-libpath@<:@=LIBPATH@:>@],
        [path list where library might be located @<:@default=$pkglibdir@:>@])],
    [with_libpath=$withval],
    [with_libpath=$libdir/$PACKAGE_NAME])
AS_IF([test "x$with_libpath" = x],
    [AC_MSG_FAILURE([invalid libpath specified])])
AC_SUBST(libpath, $with_libpath)

# Checks for programs.
#AC_PATH_PROG([CHROOT], [chroot], [/usr/sbin/chroot], [/usr/sbin:/sbin:/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:$PATH])
#AC_PATH_PROG([DEBOOTSTRAP], [debootstrap], [/usr/sbin/debootstrap], [/usr/sbin:/sbin:/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:$PATH])
#AC_PATH_PROG([DEVFS], [devfs], [/sbin/devfs], [/sbin:/usr/sbin:/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:$PATH])
#AC_PATH_PROG([ECHO], [echo], [/bin/echo], [/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([ENV], [env], [/usr/bin/env], [/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([FAKEROOT], [fakeroot], [/usr/bin/fakeroot], [/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([INSSERV], [insserv], [/sbin/insserv], [/sbin:/usr/sbin:/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:$PATH])
#AC_PATH_PROG([ISCHROOT], [ischroot], [/usr/bin/ischroot], [/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([LDCONFIG], [ldconfig], [/sbin/chroot], [/sbin:/usr/sbin:/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:$PATH])
#AC_PATH_PROG([LDD], [ldd], [/usr/bin/ldd], [/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([LS], [ls], [/bin/ls], [/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([MKFIFO], [mkfifo], [/usr/bin/mkfifo], [/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([PERL], [perl], [/usr/bin/perl], [/usr/bin:/bin:/usr/sbin:/sbin:/usr/bin/core_perl:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([POD2MAN], [pod2man], [], [/usr/bin:/bin:/usr/sbin:/sbin:/usr/bin/core_perl:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([PROVE], [prove], [], [/usr/bin:/bin:/usr/sbin:/sbin:/usr/bin/core_perl:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([SEQ], [seq gseq], [], [/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
AC_PATH_PROG([SH], [sh], [/bin/sh], [/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([SHELL], [bash dash sh], [/bin/sh], [/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$PATH])
#AC_PATH_PROG([SYSTEMCTL], [systemctl], [/sbin/systemctl], [/sbin:/usr/sbin:/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:$PATH])

# Additional C macros
AC_DEFINE([TERMUX_EXEC], [PACKAGE_VERSION], [TERMUX_EXEC])
AC_DEFINE_UNQUOTED([BIN_LS], ["$ac_cv_path_LS"], [BIN_LS])
AC_DEFINE_UNQUOTED([BIN_SH], ["$ac_cv_path_SH"], [BIN_SH])

AC_DEFINE([TERMUX_BASE_DIR], ["$EPREFIX"], ["TERMUX_BASE_DIR"])
AC_DEFINE([TERMUX_PREFIX], ["$EPREFIX"], ["TERMUX_PREFIX"])

## Checks for compiler features
#ACX_CHECK_C_ALIGNOF
#ACX_CHECK_C_ATTRIBUTE([constructor])
#ACX_CHECK_C_ATTRIBUTE_SECTION([data.termux-exec])
#ACX_CHECK_C_ATTRIBUTE_VISIBILITY

# Checks for libraries.
AC_CHECK_LIB([dl], [dlsym])

# Checks for header files.
AC_HEADER_DIRENT
AC_HEADER_STDC
AC_CHECK_HEADERS(m4_normalize([
    dlfcn.h
]))

#AC_CHECK_HEADERS([fts.h], [], [], [
##define _BSD_SOURCE
##define _DEFAULT_SOURCE
#])

## Checks for typedefs, structures, and compiler characteristics.
#AC_TYPE_UID_T
#AC_TYPE_MODE_T
#AC_TYPE_OFF_T
#AC_TYPE_PID_T
#AC_TYPE_SIZE_T
#AC_TYPE_SSIZE_T
#AC_TYPE_UINT32_T
#AC_CHECK_TYPES([ptrdiff_t])

## Checks for additional typedefs.
#AC_CHECK_MEMBERS([struct sockaddr_un.sun_len],,, ACX_INCLUDES_HEADERS([sys/un.h]))
#AC_CHECK_MEMBERS([struct _ftsent.fts_fts],,, ACX_INCLUDES_HEADERS([sys/types.h sys/stat.h fts.h]))
#ACX_CHECK_FTS_NAME_TYPE

# Checks for library functions.
AC_CHECK_FUNCS(m4_normalize([
    execve
]))
AC_FUNC_ALLOCA
#ASX_NO_CROSS_COMPILING([AC_FUNC_LSTAT_FOLLOWS_SLASHED_SYMLINK])

## Check for internal dependencies
#ACX_CHECK_OPENDIR_CALLS_INTERNALLY([__open])
#ACX_CHECK_OPENDIR_CALLS_INTERNALLY([__opendir2])

## Check return type and arguments types for functions
#m4_foreach_w([function], [bind connect],
#    [ACX_CHECK_FUNC_ARGTYPES(function,
#        [
##define _GNU_SOURCE
#        ], [sys/types.h sys/socket.h],
#        [[int], [int _], [const struct sockaddr *_], [socklen_t _]],
#        [[int]],
#        [[int _]],
#        [[__CONST_SOCKADDR_ARG _], [const struct sockaddr *_]],
#        [[socklen_t _]])])

#m4_foreach_w([function], [getpeername getsockname],
#    [ACX_CHECK_FUNC_ARGTYPES(function,
#        [
##define _GNU_SOURCE
#        ], [sys/types.h sys/socket.h],
#        [[int], [int _], [struct sockaddr *_], [socklen_t _]],
#        [[int]],
#        [[int _]],
#        [[__SOCKADDR_ARG _], [struct sockaddr *_]],
#        [[socklen_t *__restrict _], [socket_t *_]])])

#ACX_CHECK_FUNC_ARGTYPES([fts_open],
#    [], [sys/types.h sys/stat.h fts.h],
#    [[FTSOBJ *], [char * const *_], [int], [int (*_)(const FTSENTRY **, const FTSENTRY **)]],
#    [[FTSOBJ *]],
#    [[char * const *_]],
#    [[int _]],
#    [[int (*_)(const FTSENTRY * const *, const FTSENTRY * const *)], [int (*_)(const FTSENTRY **, const FTSENTRY **)]])

#ACX_CHECK_FUNC_ARGTYPES([fts64_open],
#    [], [sys/types.h sys/stat.h fts.h],
#    [[FTSOBJ *], [char * const *_], [int], [int (*_)(const FTSENTRY **, const FTSENTRY **)]],
#    [[FTSOBJ *]],
#    [[char * const *_]],
#    [[int _]],
#    [[int (*_)(const FTSENTRY * const *, const FTSENTRY * const *)], [int (*_)(const FTSENTRY **, const FTSENTRY **)]])

#ACX_CHECK_FUNC_ARGTYPES([readlink],
#    [
##define _BSD_SOURCE 1
##define _DEFAULT_SOURCE 1
#    ], [unistd.h],
#    [[ssize_t], [const char *_], [char *_], [size_t _]],
#    [[ssize_t], [int]],
#    [[const char *_]],
#    [[char *_]],
#    [[size_t _], [int _]])

#ACX_CHECK_FUNC_ARGTYPES([scandir],
#    [
##define _BSD_SOURCE 1
##define _DEFAULT_SOURCE 1
#    ], [dirent.h],
#    [[int], [const char *_], [struct dirent ***_], [int(*_)(const struct dirent *)], [int(*_)(const void *,const void *)]],
#    [[int]],
#    [[const char *_]],
#    [[struct dirent ***_]],
#    [[int(*_)(const struct dirent *)], [int(*_)(struct dirent *)]],
#    [[int(*_)(const struct dirent **, const struct dirent **)], [int(*_)(const void *,const void *)]])

#ACX_CHECK_FUNC_ARGTYPES([scandir64],
#    [
##define _BSD_SOURCE
##define _GNU_SOURCE 1
##define _DEFAULT_SOURCE 1
#    ], [dirent.h],
#    [[int], [const char *_], [struct dirent64 ***_], [int(*_)(const struct dirent64 *)], [int(*_)(const void *,const void *)]],
#    [[int]],
#    [[const char *_]],
#    [[struct dirent64 ***_]],
#    [[int(*_)(const struct dirent64 *)], [int(*_)(struct dirent64 *)]],
#    [[int(*_)(const struct dirent64 **, const struct dirent64 **)], [int(*_)(const void *,const void *)]])

#ACX_CHECK_FUNC_ARGTYPES([utimes],
#    [], [sys/time.h],
#    [[int], [const char *_], [const struct timeval _@<:@2@:>@]],
#    [[int]],
#    [[const char *_]],
#    [[const struct timeval _@<:@2@:>@], [struct timeval _@<:@2@:>@]])

# List of Makefiles
AC_CONFIG_FILES(m4_normalize([
    config.sh
    Makefile
]))

## prove --failures --exec /bin/sh
#ACX_PROG_PROVE_OPT([--failures])
#ACX_PROG_PROVE_OPT([--exec /bin/sh])

# Silence warning: ar: 'u' modifier ignored since 'D' is the default
AC_SUBST(AR_FLAGS, [cr])

# Generate output
AC_OUTPUT

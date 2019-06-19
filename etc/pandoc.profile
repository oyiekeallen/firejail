# Firejail profile for pandoc
# Description: general markup converter
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include pandoc.local
# Persistent global definitions
include globals.local

noblacklist ${DOCUMENTS}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

# breaks pdf output
#include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

disable-mnt
private-bin context,latex,mktexfmt,pandoc,pdflatex,pdfroff,prince,weasyprint,wkhtmltopdf
private-cache
private-dev
private-tmp

memory-deny-write-execute

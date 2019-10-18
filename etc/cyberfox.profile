# Firejail profile for cyberfox
# This file is overwritten after every install/update
# Persistent local customizations
include cyberfox.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.8pecxstudios
noblacklist ${HOME}/.cache/8pecxstudios

mkdir ${HOME}/.8pecxstudios
mkdir ${HOME}/.cache/8pecxstudios
whitelist ${HOME}/.8pecxstudios
whitelist ${HOME}/.cache/8pecxstudios

private-bin cyberfox,which,sh,dbus-launch,dbus-send,env
# private-etc must first be enabled in firefox-common.profile
private-etc cyberfox


seccomp

# Redirect
include firefox-common.profile



private-srv
private-opt
private-cache
private-home 

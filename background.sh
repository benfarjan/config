#! /bin/bash
### BEGIN INIT INFO
# Provides:          background
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Example initscript
# Description:       This file should be used to construct scripts to be
#                    placed in /etc/init.d.
### END INIT INFO

#! /bin/sh
#

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    ;;
  stop)
    echo "Create background image link"
    ln -svf `w=(/r/wallpapers/*.png); n=${#w[@]}; echo "${w[RANDOM%n]}"` /var/local/background.png
    ;;
  *)
    echo "Usage: /etc/init.d/background {start}"
    ;;
esac


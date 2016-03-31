# -*- sh -*-

if [ -z "$LC_SHELL" ] ; then
   if [ -x /bin/zsh ] ; then
      exec zsh
   fi
fi

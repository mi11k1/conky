#!/bin/sh

if [ x"${DESKTOP_SESSION##*/}" = x"lightdm-xsession" ]; then 
   sleep 20s
   killall conky
   cd "$HOME/.conky/MX-KoO"
   conky -c "$HOME/.conky/MX-KoO/MX-Full" &
   exit 0
fi
if [ x"${DESKTOP_SESSION##*/}" = x"plasma" ]; then 
   sleep 0s
   killall conky
   cd "$HOME/.conky/MX-KoO"
   conky -c "$HOME/.conky/MX-KoO/MX-Full" &
   exit 0
fi
if [ x"${DESKTOP_SESSION##*/}" = x"xfce" ]; then 
   sleep 0s
   killall conky
   cd "$HOME/.conky/MX-KoO"
   conky -c "$HOME/.conky/MX-KoO/MX-Full" &
   exit 0
fi

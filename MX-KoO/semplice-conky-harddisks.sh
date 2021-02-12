#!/bin/sh

#
# Returns a list of the harddisks, in a conky-style configuration.
# (C) 2010 Semplice Team. All rights reserved.
# This file is released under the terms of the GNU GPL license, version 3 or later.
#
# fehlix: simplified mount checks


# For now only for /home

#if mountpoint -q /home; then
echo '${voffset -12}/run/user/1000/gvfs/smb-share:server=emachine.local,share=proxmox/:'
echo '${voffset 4}${fs_used /run/user/1000/gvfs/smb-share:server=emachine.local,share=proxmox/} of ${fs_size /run/user/1000/gvfs/smb-share:server=emachine.local,share=proxmox/} ${alignr}${fs_bar 8,90 /run/user/1000/gvfs/smb-share:server=emachine.local,share=proxmox/}'
echo


echo '${voffset -12}/home/mi11k1/Android:'
echo '${voffset 4}${fs_used /home/mi11k1/Android} of ${fs_size /home/mi11k1/Android} ${alignr}${fs_bar 8,90 /home/mi11k1/Android}'
echo
fi

awk  '$2 ~ /[/]media/ { print $2 }' /proc/mounts | while read media; do
echo '${voffset -8}${color}'"$media":
echo '${voffset 4}${fs_used' "$media"'} of ${fs_size' "$media"'} ${alignr}${color #FFF600}${fs_bar 8,90' "$media}"
echo ''
done


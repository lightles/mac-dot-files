#!/bin/sh

ps -ef | grep chunkwm | grep -v grep | awk '{print $2}' | xargs kill
ps -ef | grep skhd | grep -v grep | awk '{print $2}' | xargs kill

/usr/local/bin/chunkwm -c ~/.config/tilewm/chunkwm/config &
/usr/local/bin/skhd -c ~/.config/tilewm/skhd/config &

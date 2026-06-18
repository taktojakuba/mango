#!/bin/bash

set +e

/usr/lib/xdg-desktop-portal  >/dev/null 2>&1 &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 >/dev/null 2>&1 &
wl-clip-persist --clipboard regular --reconnect-tries 0 >/dev/null 2>&1 &
wl-paste --type text --watch cliphist store >/dev/null 2>&1 &


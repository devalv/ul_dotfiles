#!/bin/bash

set -e

[ -z "$(dpkg -s snapd)" ] && apt install snapd -y
[ -z "$(dpkg -s fish)" ] && apt install fish -y
[ -z "$(dpkg -s terminator)" ] && apt install terminator -y

exit 0
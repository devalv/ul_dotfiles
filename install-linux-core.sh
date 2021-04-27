#!/bin/bash

set -e
[ -z "$(which snapd)" ] && apt-get install snapd -y
[ -z "$(which fish)" ] && apt-get install fish -y
[ -z "$(which terminator)" ] && apt-get install terminator -y


exit 0
#!/bin/bash

set -e

echo "installing omf"
curl -L https://get.oh-my.fish | fish

echo "update omf plugins"
fish -c omf update

exit 0

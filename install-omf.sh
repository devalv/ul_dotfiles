#!/bin/bash

set -e

echo "set fish as default shell"
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish

echo "installing omf"
curl -L https://get.oh-my.fish | fish

echo "update omf plugins"
fish -c omf update

exit 0

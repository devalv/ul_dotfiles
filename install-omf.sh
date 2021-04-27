#!/bin/bash

set -e

echo "delete existing omf configurations"
rm -rf ~/.local/share/omf/

echo "download omf"
curl -L https://get.oh-my.fish > /tmp/omf_install

echo "install omf"
chmod +x /tmp/omf_install
fish -c "/tmp/omf_install --noninteractive"
rm /tmp/omf_install
fish -c omf update

echo "set fish as default shell"
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

exit 0
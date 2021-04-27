#!/bin/bash

set -e

# delete existing omf configurations
rm -Rf ~/.local/share/omf/
curl -L https://get.oh-my.fish > /tmp/omf_install
chmod +x /tmp/omf_install
fish -c "/tmp/omf_install --noninteractive"
rm /tmp/omf_install
fish -c omf update
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

exit 0
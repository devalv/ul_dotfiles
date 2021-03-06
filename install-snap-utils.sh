#!/bin/bash

set -e

[ -z "$(which dbeaver-ce)" ] && snap install dbeaver-ce
[ -z "$(which pycharm-professional)" ] && snap install pycharm-professional --classic
[ -z "$(which goland)" ] && snap install goland --classic
[ -z "$(which insomnia)" ] && snap install insomnia
[ -z "$(which telegram-desktop)" ] && snap install telegram-desktop
[ -z "$(which vscode)" ] && snap install code --classic
[ -z "$(which blender)" ] && sudo snap install blender --channel=2.93lts/stable --classic

exit 0

#!/bin/bash

set -e

[ -z "$(which dbeaver-ce)" ] && snap install dbeaver-ce
[ -z "$(which pycharm-professional)" ] && snap install pycharm-professional --classic
[ -z "$(which insomnia)" ] && snap install insomnia
[ -z "$(which telegram-desktop)" ] && snap install telegram-desktop

exit 0
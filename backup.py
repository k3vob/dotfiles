#!/usr/bin/env python
import shutil
import errno
import os

home = '/home/kev/'
config = home + '.config/'
backup_dir = home + 'Documents/dotfiles/'

files = [
        config + 'compton', \
        config + 'gtk-3.0', \
        config + 'i3', \
        config + 'plasma-workspace/env', \
        config + 'polybar', \
        config + 'rofi', \
        config + 'termite', \
        home + '.dircolors', \
        home + '.zshrc', \
        home + '.zshrc.bak'
        ]

for file in files:
    if not os.path.exists(file):
        continue
    dest = backup_dir + file.split('/')[-1]
    try:
        if os.path.exists(dest):
            shutil.rmtree(dest)
        shutil.copytree(file, dest)
    except OSError as e:
        if e.errno == errno.ENOTDIR:
            if os.path.exists(dest):
                os.remove(dest)
            shutil.copy(file, dest)

#!/usr/bin/env python

import psutil
import os

processIDs = psutil.pids()

xpadClosed = False

for processID in processIDs:
    process = psutil.Process(processID)
    if process.name() == "xpad":
        os.system('killall xpad')
        xpadClosed = True

if not xpadClosed:
    os.system('xpad')

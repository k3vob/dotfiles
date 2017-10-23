from time import sleep
from subprocess import run
from os import listdir
from os.path import isfile, join, exists
from sys import argv, exit
from random import random
from tendo import singleton

me = singleton.SingleInstance()

runtime = {
    'backgrounds' : [],
    'unused' : [],
    'previousWallpaper' : "",
    'path' : "",
    'time' : 60
}

# Check if file ends with valid picture extension
def isPicture(fileName):
    extensions = ['.jpg', '.png', '.jpeg', '.gif']
    for extension in extensions:
        if fileName.endswith(extension):
            return True

    return False

# Change desktop wallpaper
def changeWallpaper(unused):
    print("Changing Background")
    nextIndex = int(random() * 1000) % len(unused)

    # Check to make sure two wallpapers aren't displayed in a row
    if runtime["previousWallpaper"] == str(unused[nextIndex]):
        nextIndex = (nextIndex + 1) % len(unused)

    picture = str(unused[nextIndex])
    print(picture)
    run(["feh", "--bg-scale", picture])
    runtime["previousWallpaper"] = str(unused[nextIndex])
    unused.pop(nextIndex)
    print("Sleeping")
    sleep(runtime["time"])

# Handle Command Line Arguments
def handleArguments():
    global runtime
    for i in range(1, len(argv)):
        # Time should be specified in minutes
        if argv[i] == "-t":
            i += 1
            num = float(argv[i])
            runtime["time"] = int(num*60)
        else:
            if exists(str(argv[i])):
                runtime["path"] = argv[i]
            else:
                print("Unknown parameter: "+argv[i])

if __name__ == "__main__":
    handleArguments()
    for key in runtime:
        print(key + " - " + str(runtime[key]))
    if runtime["path"] == "":
        exit("A directory path must be specified")
    dirContents = listdir(runtime["path"])

    for fileName in dirContents:
        filePath = join(runtime["path"], fileName)
        if isfile(filePath) and isPicture(fileName):
            runtime["backgrounds"].append(filePath)

    print("Printing images in given directory")
    for back in runtime["backgrounds"]:
        print(back)

    runtime["unused"] = list(runtime["backgrounds"])

    # Main wallpaper switching logic done here
    while True:
        # Use random number modulo unused length to pick the first wallpaper
        # First check to ensure unused list is not empty
        if len(runtime["unused"]) == 0:
            runtime["unused"] = list(runtime["backgrounds"])

        changeWallpaper(runtime["unused"])

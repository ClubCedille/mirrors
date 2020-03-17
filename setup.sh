#!/usr/bin/env bash
# Check if /media/mirror/ directory exists

LOCATION="/media/mirror/"
if [ -d "$DIR" ]; then
    echo "Cannot proceed with install, /media/mirror already exists on this system"
    exit 1
fi

# Create folder and paste the html goodness in it.
mkdir $LOCATION
if [ -d "$LOCATION" ]; then
    echo "Directory succesfully created"
fi

mkdir $LOCATION/img

cp ./index.html $LOCATION
cp ./index_en.html $LOCATION
cp ./img/* $LOCATION/img

mkdir $LOCATION/archlinux/
mkdir $LOCATION/debian/
mkdir $LOCATION/debian/packages/
mkdir $LOCATION/ubuntu/
mkdir $LOCATION/ubuntu/packages/
mkdir $LOCATION/ubuntu/releases/
mkdir $LOCATION/manjaro/
mkdir $LOCATION/linuxmint/
mkdir $LOCATION/linuxmint/packages/
mkdir $LOCATION/linuxmint/releases/
mkdir $LOCATION/mx-linux/

if [ -a "$LOCATION/index.html" ]; then
    echo "File tree copied succesfully"
    exit 0
else
    echo "There was a problem creating tree at $location"
    exit 1
fi

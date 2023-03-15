#! /usr/bin/env bash

directory="/workspace/utility_script-samjesus8/_Directory"
read -p "Please type in the Directory to view: " dirselect

echo ==================================
echo Listing Directories in _Directory
echo ==================================
echo 

du -shc /workspace/utility_script-samjesus8/_Directory/*
echo

if [ $dirselect == "dir1" ]; then

    echo ==================================
    echo Subdirectories of Dir1
    echo ==================================
    echo
    ls $directory/dir1/*
elif [ $dirselect == "dir2" ]; then
    echo ==================================
    echo Subdirectories of Dir2
    echo ==================================
    ls $directory/dir2/*
else 
	echo "Directory does not exist"
fi
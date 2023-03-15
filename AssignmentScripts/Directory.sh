#! /usr/bin/env bash

directory="/workspace/utility_script-samjesus8/_Directory"

echo ==================================
echo Listing Directories in _Directory
echo ==================================
echo 

du -shc /workspace/utility_script-samjesus8/_Directory/*
echo

read -p "Please type in the Directory to view: " dirselect
if [ $dirselect == "dir1" ]; then

    echo ==================================
    echo Subdirectories of Dir1
    echo ==================================
    echo
    echo "Size |  Folder Name"
    du -shc $directory/dir1/*
    echo

    # Listing SubSubDirectories of Dir1
    echo ==================================
    echo SubSubDirectories of Dir1
    echo ==================================
    echo
    echo "Size |  Folder Name"
    du -shc $directory/dir1/*/*
    echo

    # Listing Files (bmp/ico/png/dat/jpg)
    echo ==================================
    echo File Report on SubSubDirs
    echo ==================================
    echo

    #du -shc $directory/dir1/subdir1/subsubdir1/*
    find $directory/dir1/subdir1/subsubdir1/ -maxdepth 1 -type f -printf '%f\n'



elif [ $dirselect == "dir2" ]; then
    echo ==================================
    echo Subdirectories of Dir2
    echo ==================================
    echo
    ls $directory/dir2/*
elif [ $dirselect == "dir3" ]; then
    echo ==================================
    echo Subdirectories of Dir3
    echo ==================================
    echo
    ls $directory/dir3/*
elif [ $dirselect == "dir4" ]; then
    echo ==================================
    echo Subdirectories of Dir4
    echo ==================================
    echo
    ls $directory/dir4/*
else 
	echo "Directory does not exist"
fi
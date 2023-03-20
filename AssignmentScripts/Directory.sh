#! /usr/bin/env bash

echo ==================================
echo Listing Directories in _Directory
echo ==================================
echo 

# Set directory paths
main_dir="/workspace/utility_script-samjesus8/_Directory"
dir1="/workspace/utility_script-samjesus8/_Directory/dir1"
dir2="/workspace/utility_script-samjesus8/_Directory/dir2"
dir3="/workspace/utility_script-samjesus8/_Directory/dir3"
dir4="/workspace/utility_script-samjesus8/_Directory/dir4"

# List the main _Directory folder
for directory in $"/workspace/utility_script-samjesus8/_Directory/*"; do
        du -shc $directory
    done
echo

# Input on which subdirectory we want to view
read -rp "Please type in the Directory to view: " dirselect

# Outcome Area
# ============================================================================
if [ "$dirselect" == "dir1" ]; then
    echo "=================================="
    echo "Subdirectories of Dir1"
    echo "=================================="
    echo

    # List main subdirectory
    echo "Size |  Folder Name"
    for directory in $dir1/*; do
            du -shc $directory
        done
    echo

    # List subsubdirectories
    echo "=================================="
    echo "SubSubDirectories of Dir1"
    echo "=================================="
    echo
    echo "Size |  Folder Name"
        for directory in $dir1/*/*; do
            du -shc $directory
        done
    echo
    echo

    # List files
    echo "=================================="
    echo "File Report on SubSubDirs"
    echo "=================================="

    # Count each file by filetype and list this output
    subdirs=("subsubdir1" "subsubdir2" "subsubdir3" "subsubdir4")

    for subdir in "${subdirs[@]}"; do
        echo "$subdir"
        echo "=================================="
        find "$dir1/subdir1/$subdir/" -type f -printf '%f\n' | awk -F. '{print $NF}' | sort | uniq -c
        echo "=================================="
        echo
    done

# ============================================================================

else 
	echo "Directory does not exist"
    echo "The directories in _Directory are:"
    echo
    ls $main_dir
fi
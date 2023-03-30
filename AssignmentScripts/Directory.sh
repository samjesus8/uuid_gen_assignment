#! /usr/bin/env bash

# This is our command parameter
command=$1

echo ==================================
echo Listing Directories in _Directory
echo ==================================
echo 

# Setting directory paths
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

# Outcome Area
# ============================================================================
if [ "$command" == "dir1" ]; then
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
    subdirs=("subdir1" "subdir2" "subdir3" "subdir4")
    subsubdirs=("subsubdir1" "subsubdir2" "subsubdir3" "subsubdir4")

    for subdir in "${subdirs[@]}"; do
        for subsubdir in "${subsubdirs[@]}"; do
            echo "$subdir/$subsubdir"
            echo "=================================="
            find "$dir1/$subdir/$subsubdir/" -type f -printf '%f\n' | awk -F. '{print $NF}' | sort | uniq -c
            echo "=================================="
            echo "The shortest file name is: "
            find "$dir1/$subdir/$subsubdir/" -type f -printf '%f\n' | sort -n | head -1
            echo
            echo "The longest file name is: "
            find "$dir1/$subdir/$subsubdir/" -type f -printf '%f\n' | wc -L | xargs -I{} find "$dir1/$subdir/$subsubdir/" -type f -printf '%f\n' | head -1
            echo "=================================="
            echo
        done
    done

elif [ "$command" == "dir2" ]; then
    echo "=================================="
    echo "Subdirectories of Dir2"
    echo "=================================="
    echo

    # List main subdirectory
    echo "Size |  Folder Name"
    for directory in $dir2/*; do
            du -shc $directory
        done
    echo

    # List subsubdirectories
    echo "=================================="
    echo "SubSubDirectories of Dir2"
    echo "=================================="
    echo
    echo "Size |  Folder Name"
        for directory in $dir2/*/*; do
            du -shc $directory
        done
    echo
    echo

    # List files
    echo "=================================="
    echo "File Report on SubSubDirs"
    echo "=================================="

    # Count each file by filetype and list this output
    subdirs=("subdir1" "subdir2" "subdir3" "subdir4")
    subsubdirs=("subsubdir1" "subsubdir2" "subsubdir3" "subsubdir4")

    for subdir in "${subdirs[@]}"; do
        for subsubdir in "${subsubdirs[@]}"; do
            echo "$subdir/$subsubdir"
            echo "=================================="
            find "$dir2/$subdir/$subsubdir/" -type f -printf '%f\n' | awk -F. '{print $NF}' | sort | uniq -c
            echo "=================================="
            echo "The shortest file name is: "
            find "$dir2/$subdir/$subsubdir/" -type f -printf '%f\n' | sort -n | head -1
            echo
            echo "The longest file name is: "
            find "$dir2/$subdir/$subsubdir/" -type f -printf '%f\n' | wc -L | xargs -I{} find "$dir2/$subdir/$subsubdir/" -type f -printf '%f\n' | head -1
            echo "=================================="
            echo
        done
    done

elif [ "$command" == "dir3" ]; then
    echo "=================================="
    echo "Subdirectories of Dir3"
    echo "=================================="
    echo

    # List main subdirectory
    echo "Size |  Folder Name"
    for directory in $dir3/*; do
            du -shc $directory
        done
    echo

    # List subsubdirectories
    echo "=================================="
    echo "SubSubDirectories of Dir3"
    echo "=================================="
    echo
    echo "Size |  Folder Name"
        for directory in $dir3/*/*; do
            du -shc $directory
        done
    echo
    echo

    # List files
    echo "=================================="
    echo "File Report on SubSubDirs"
    echo "=================================="

    # Count each file by filetype and list this output
    subdirs=("subdir1" "subdir2" "subdir3" "subdir4")
    subsubdirs=("subsubdir1" "subsubdir2" "subsubdir3" "subsubdir4")

    for subdir in "${subdirs[@]}"; do
        for subsubdir in "${subsubdirs[@]}"; do
            echo "$subdir/$subsubdir"
            echo "=================================="
            find "$dir2/$subdir/$subsubdir/" -type f -printf '%f\n' | awk -F. '{print $NF}' | sort | uniq -c
            echo "=================================="
            echo "The shortest file name is: "
            find "$dir3/$subdir/$subsubdir/" -type f -printf '%f\n' | sort -n | head -1
            echo
            echo "The longest file name is: "
            find "$dir3/$subdir/$subsubdir/" -type f -printf '%f\n' | wc -L | xargs -I{} find "$dir3/$subdir/$subsubdir/" -type f -printf '%f\n' | head -1
            echo "=================================="
            echo
        done
    done

elif [ "$command" == "dir4" ]; then
    echo "=================================="
    echo "Subdirectories of Dir4"
    echo "=================================="
    echo

    # List main subdirectory
    echo "Size |  Folder Name"
    for directory in $dir4/*; do
            du -shc $directory
        done
    echo

    # List subsubdirectories
    echo "=================================="
    echo "SubSubDirectories of Dir4"
    echo "=================================="
    echo
    echo "Size |  Folder Name"
        for directory in $dir4/*/*; do
            du -shc $directory
        done
    echo
    echo

    # List files
    echo "=================================="
    echo "File Report on SubSubDirs"
    echo "=================================="

    # Count each file by filetype and list this output
    subdirs=("subdir1" "subdir2" "subdir3" "subdir4")
    subsubdirs=("subsubdir1" "subsubdir2" "subsubdir3" "subsubdir4")

    for subdir in "${subdirs[@]}"; do
        for subsubdir in "${subsubdirs[@]}"; do
            echo "$subdir/$subsubdir"
            echo "=================================="
            find "$dir2/$subdir/$subsubdir/" -type f -printf '%f\n' | awk -F. '{print $NF}' | sort | uniq -c
            echo "=================================="
            echo "The shortest file name is: "
            find "$dir4/$subdir/$subsubdir/" -type f -printf '%f\n' | sort -n | head -1
            echo
            echo "The longest file name is: "
            find "$dir4/$subdir/$subsubdir/" -type f -printf '%f\n' | wc -L | xargs -I{} find "$dir4/$subdir/$subsubdir/" -type f -printf '%f\n' | head -1
            echo "=================================="
            echo
        done
    done
else
	echo "Directory does not exist"
    echo "The directories in _Directory are:"
    echo
    ls $main_dir
fi

# Storing script execution details

my_variable=$USER
current_time=$(date +%T)
echo "[$current_time] | $my_variable used this command 'Directory.sh' with parameter $command" | tee -a log.txt
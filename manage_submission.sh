#!/bin/bash
# prompt the user to enter a directory name
read -p "Enter directory name: " dirname

#Define the file names
file1="submission1.txt"
file2="submission2.txt"

#Check if directory exists
if [[ -f "$dirname" ]]; then
	echo "File with $dirname exists, error can not proceed"
	exit 1

#If directory already exists
elif [[ -d "$dirname" ]]; then
	echo "Directory exists, creating files now"

#If directory doesn't exist
else
	echo "Directory does not exist, creating directory with the files now"
	#Creating the directory
	mkdir "$dirname"
	echo "Directory has been created"
fi

#Creating the files inside the Directory
touch "$dirname/$file1" "$dirname/$file2"
echo "Files $file1 and $file2 have been created"

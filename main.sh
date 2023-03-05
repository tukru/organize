#!/bin/bash

# Get the directory where the script is being run from
directory=$(pwd)

# Create an array of programming languages you want to organize
declare -a languages=("python" "bash" "ruby" "javascript")

# Create a folder to store the organized files and the README.md file
organized_folder="organized_files"
mkdir -p "$organized_folder"

# Loop through the array of programming languages
for language in "${languages[@]}"
do
    # Create a folder for each programming language if it does not exist
    if [ ! -d "$organized_folder/$language" ]
    then
        mkdir "$organized_folder/$language"
    fi

    # Move all files with the extension of the programming language to their respective folder
    mv "$directory"/*.$language "$organized_folder/$language"
done

# Create a detailed README.md file
echo "# Organized Files\n" > "$organized_folder/README.md"
echo "This folder contains the following programming language directories:" >> "$organized_folder/README.md"

# Loop through the array of programming languages and add them to the README.md file
for language in "${languages[@]}"
do
    echo "- [$language](./$language)" >> "$organized_folder/README.md"
done

echo "Directory organized successfully!"

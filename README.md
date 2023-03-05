# organize
organize your directorie in accordance of programming language.
# Organize Programming Language Files Script

This Bash script organizes a directory of programming language files into their individual folders based on their file extensions.

## Prerequisites

- Bash shell
- Directory of programming language files

## Usage

1. Save the `organize_files.sh` script in the directory containing the programming language files.
2. Open a terminal window and navigate to the directory containing the script and the programming language files.
3. Make the script executable by running the command: `chmod +x organize_files.sh`
4. Run the script by running the command: `./organize_files.sh`
5. The script will create a folder named `organized_files` in the directory and move all files with the extension of the programming languages specified in the `languages` array to their respective folders within the `organized_files` folder.
6. The script will also create a detailed README.md file in the `organized_files` folder that lists the programming language directories and provides links to each of them.

## Customization

You can customize the script to organize files by different programming languages by modifying the `languages` array in the script. To add or remove a programming language, simply add or remove the corresponding file extension from the `languages` array.

## License

This script is licensed under the [MIT License](https://github.com/username/repo/blob/master/LICENSE).

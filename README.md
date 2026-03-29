# Open Source Software Audit — Visual Studio Code

## Student Details
* Name: Drishti Choudhary
* Registration No.: 24BCE10175
* Course: Open Source Software
* Environment: Ubuntu 24.04.4 LTS (WSL on Windows)

## Chosen Software
Visual Studio Code (VS Code)

## Project Overview
This project analyzes Visual Studio Code as an open-source software system. It covers its origin story, licensing model, ethical considerations, Linux footprint, FOSS ecosystem, and a comparison with a proprietary alternative.

## Scripts Overview

### Script 1: System Identity Report
Displays system information including kernel version, current user, home directory, uptime, date and time, Linux distribution, and the open source license of the OS. Demonstrates use of variables, command substitution, and echo formatting.

### Script 2: FOSS Package Inspector
Checks whether VS Code is installed on the system and displays its version and installation path. Uses if-then-else conditional logic and a case statement to print philosophy notes about different open source packages.

### Script 3: Disk and Permission Auditor
Loops through important system directories and reports their permissions, ownership, and disk usage. Also checks whether VS Code's configuration directory exists. Demonstrates for loops, ls, du, awk, and conditional checks.

### Script 4: Log File Analyzer
Reads a log file line by line and counts how many lines contain a specified keyword. Prints the last 5 matching lines. Accepts command line arguments and demonstrates while loops, if-then, counter variables, grep, and tail.

### Script 5: Open Source Manifesto Generator
Interactively asks the user three questions and generates a personalized open source philosophy statement. Saves the output to a .txt file named after the current user. Demonstrates read, string concatenation, output redirection, and the date command.

## How to Run Scripts
bash
chmod +x script1.sh
./script1.sh

chmod +x script2.sh
./script2.sh

chmod +x script3.sh
./script3.sh

chmod +x script4.sh
./script4.sh /var/log/dpkg.log error

chmod +x script5.sh
./script5.sh


## Dependencies
* Linux system (Ubuntu / WSL on Windows)
* Bash shell
* VS Code installed on the system

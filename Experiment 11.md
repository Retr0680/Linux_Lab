---
title: Experiment 11
updated: 2025-11-29 19:49:29Z
created: 2025-11-29 19:45:02Z
latitude: 30.31649450
longitude: 78.03219180
altitude: 0.0000
---

# Experiment 11: Interacting with Users Interactive Shell Scripts
**Name:** Hrithvik Bhardwaj  
**Roll No.:** 590029169  
**Date:** 2025-11-30  

---

## Aim
To learn how to create interactive shell scripts using user input, menus, data processing tools, and basic validation techniques.

---

## Requirements
- Linux system with Bash shell  
- Text editor (nano/vim)  
- Permission to execute shell scripts  
- Basic understanding of shell commands  

---

## Theory

Interactive shell scripts allow two-way communication between the script and the user.  
This experiment focuses on:

### 1. `read` Command  
Used to capture user input from the keyboard. Supports prompts, silent input, timeouts, and character limits.

### 2. `select` Command  
Used to create interactive menus with numbered options.

### 3. Input Validation  
Ensures user input is correct before processing.

### 4. Data Parsing Tools  
- `cut`: Extracts columns from text  
- `awk`: Processes structured data  
- `sed`: Performs text replacement and filtering  

### 5. Database Interaction (Conceptual)  
Shell scripts can interact with MySQL, PostgreSQL, and SQLite using command-line tools.

---

## Procedure & Observations
The following exercises demonstrate how to collect user input, validate it, split strings, check palindromes, and build menu-driven applications.

---

# LAB EXERCISES

---

## Exercise 1: Split Sentence into Words

### Task Statement  
Write a script that accepts a sentence and prints each word on a new line.

### Commands  
```bash
#!/bin/bash
echo "Enter a sentence:"
read sentence
for word in $sentence; do
    echo "$word"
done
```

### Output  
---
![8b9d00de3683f058eb19a97d7f175bd4.png](../_resources/8b9d00de3683f058eb19a97d7f175bd4.png)
---

## Exercise 2: Palindrome Check

### Task Statement  
Write a script that checks whether a given string is a palindrome.

### Commands  
```bash
#!/bin/bash
echo "Enter string:"
read str
rev=$(echo "$str" | rev)

if [ "$str" = "$rev" ]; then
    echo "Palindrome"
else
    echo "Not palindrome"
fi
```

### Output  
---
![ae51122858d1b6b158a5dc7df079ab0a.png](../_resources/ae51122858d1b6b158a5dc7df079ab0a.png)
---

# ASSIGNMENTS

---

## Assignment 1: CSV File Processing – Print First Column

### Task Statement  
Write a script that accepts a CSV file and prints its first column.

### Commands  
```bash
#!/bin/bash
echo "Enter CSV filename:"
read filename

if [ ! -f "$filename" ]; then
    echo "Error: File not found!"
    exit 1
fi

cut -d',' -f1 "$filename"
```

### Output  
---
![e162bbcf28678735a6ccceb9591603cc.png](../_resources/e162bbcf28678735a6ccceb9591603cc.png)
![f5b16398b9dff2b983a894c513e3515b.png](../_resources/f5b16398b9dff2b983a894c513e3515b.png)
---

## Assignment 2: Interactive Menu System

### Task Statement  
Create an interactive menu with options like date, calendar, disk usage, memory info, and exit.

### Commands  
```bash
#!/bin/bash
show_date(){ echo "Current date and time: $(date)"; }
show_calendar(){ cal; }
show_disk_usage(){ df -h; }
show_memory_info(){ free -h; }

while true; do
    echo ""
    echo "=== SYSTEM INFORMATION MENU ==="
    echo "1. Show current date and time"
    echo "2. Show calendar"
    echo "3. Show disk usage"
    echo "4. Show memory information"
    echo "5. Exit"

    read -p "Select option (1-5): " choice
    case $choice in
        1) show_date ;;
        2) show_calendar ;;
        3) show_disk_usage ;;
        4) show_memory_info ;;
        5) break ;;
        *) echo "Invalid option!" ;;
    esac
done
```

### Output  
---
![37d0da7d828967b786397eaa2b348bf9.png](../_resources/37d0da7d828967b786397eaa2b348bf9.png)
![c05f56b6ef54922bfbbb9b8adfcee811.png](../_resources/c05f56b6ef54922bfbbb9b8adfcee811.png)
![bf7de5add698a2069f2c5f4a3b253880.png](../_resources/bf7de5add698a2069f2c5f4a3b253880.png)
![c7e3709a14fd0e2dc3a0014b73713e82.png](../_resources/c7e3709a14fd0e2dc3a0014b73713e82.png)
![276a9d138e2db3959d9f51be3fb6128f.png](../_resources/276a9d138e2db3959d9f51be3fb6128f.png)
---

## Assignment 3: Dictionary Word Checker

### Task Statement  
Check whether a word exists in the system dictionary.

### Commands  
```bash
#!/bin/bash
DICTIONARY="/usr/share/dict/words"

if [ ! -f "$DICTIONARY" ]; then
    echo "Dictionary file not found!"
    exit 1
fi

echo "Enter a word:"
read word

word_lower=$(echo "$word" | tr '[:upper:]' '[:lower:]')

if grep -q "^${word_lower}$" "$DICTIONARY"; then
    echo "'$word' exists in the dictionary."
else
    echo "'$word' does not exist."
fi
```

### Output  
---
![104a464279bef1113e46e1fca75cb99a.png](../_resources/104a464279bef1113e46e1fca75cb99a.png)
---

## Result
Interactive scripts were successfully created using `read`, `select`, and validation.  
Text parsing using `cut`, `awk`, and `sed` was explored.  
Assignments demonstrated practical applications including CSV handling, menus, and dictionary lookup.

---

## Conclusion
Experiment 11 demonstrated how shell scripts can interact with users, validate input, parse data, and implement functional menu-driven programs. These techniques improve usability and automation in real-world shell applications.



## Experiment 2: Linux File Systems, Permissions, and Essential Commands

### Name: Hrithvik Bhardwaj   Roll No.: 590029169   Date: 2025-09-23

### Aim:

* To understand Linux file system structure, file permissions, and basic essential commands.
* To learn how to manipulate file access permissions using commands like `ls`, `chmod`, and `umask`.

### Requirements

* A Linux machine (Ubuntu, Fedora, or similar) with bash shell.
* Basic user privileges to create, modify, and delete files.

## Theory

Linux organizes files into a hierarchical directory structure starting from the root `/`. Every file and directory has associated permissions that define who can read, write, or execute them. Permissions are categorized for the **owner**, **group**, and **others**. Essential commands like `ls`, `pwd`, `cd`, `mkdir`, `chmod`, and `umask` allow navigation and permission management within the file system.

## Procedure & Observations

## Exercise 1: Explore Linux File System

### Task Statement:

Navigate through the Linux file system and list important directories such as `/bin`, `/etc`, `/home`, `/var`, `/tmp` and understand their purpose.

### Explanation:

I used the `ls` command to explore the root directory and subdirectories. Each directory has a special purpose, such as `/bin` for binaries, `/etc` for configuration files, `/home` for user data, `/var` for logs, and `/tmp` for temporary files.

### Command(s):

```bash
ls /
ls /bin
ls /etc
ls /home
ls /var
ls /tmp
```

### Output:

<p align="center">
<img align="center" src="/img/fs_structure.png" width="900">
</p>

---

## Exercise 2: Understanding File Permissions

### Task Statement:

Check and understand the permissions of files using `ls -l` command.

### Explanation:

The `ls -l` command shows file details including permissions, owner, group, size, and modification date. Permissions are represented in 10 characters: the first indicates file type, and the next nine represent read (r), write (w), and execute (x) permissions for owner, group, and others.

### Command(s):

```bash
ls -l
```

### Output:

<p align="center">
<img align="center" src="/img/ls_permissions.png" width="900">
</p>

---

## Exercise 3: Changing Permissions with `chmod`

### Task Statement:

Use the `chmod` command to change file permissions.

### Explanation:

The `chmod` command modifies file permissions either symbolically (e.g., `u+x`) or numerically (e.g., `755`). For example, `chmod 755 file1` grants read, write, and execute to the owner, and read and execute to group and others.

### Command(s):

```bash
chmod 755 file1.txt
ls -l file1.txt
chmod u-w file1.txt
ls -l file1.txt
```

### Output:

<p align="center">
<img align="center" src="/img/chmod.png" width="900">
</p>

---

## Exercise 4: Default Permissions with `umask`

### Task Statement:

Understand the concept of default permissions using the `umask` command.

### Explanation:

The `umask` value determines the default permission bits removed when a new file or directory is created. For example, a `umask` of `022` results in files with `644` permissions and directories with `755` permissions.

### Command(s):

```bash
umask
umask 022
touch newfile
ls -l newfile
```

### Output:

<p align="center">
<img align="center" src="/img/umask.png" width="900">
</p>

---

## Result

* The Linux file system hierarchy was explored successfully.
* File permissions were checked, modified, and understood using `ls -l`, `chmod`, and `umask`.
* The experiment helped in learning how Linux controls access to files and directories.

## Challenges Faced & Learning Outcomes

* Challenge 1: Remembering symbolic vs numeric modes in `chmod`. Fixed by practicing with examples.
* Challenge 2: Understanding the `umask` calculation. Overcame by revising the subtraction method.

### Learning:

* Learned how to navigate Linux file systems.
* Understood file permissions and their significance.
* Learned how to use `chmod` and `umask` effectively.

## Conclusion

The experiment demonstrated Linux file system organization, permissions, and essential commands. It highlighted the importance of access control and provided hands-on experience in managing file permissions, which is a key skill for Linux system administration.
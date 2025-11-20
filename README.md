# **Backup Tool (tar.gz) — README**

## **Overview**

This Bash script provides a simple terminal-based menu for creating and extracting **tar.gz** backups.
It is designed for users who want a minimal and easy-to-use backup utility without needing to remember complex `tar` commands.

---

## **Features**

- **Create a backup** of any directory and save it as a `.tar.gz` file
- **Extract** an existing `.tar.gz` backup

---

## **Requirements**

- A Unix-like environment (Linux, macOS, WSL, etc.)
- Bash shell
- `tar` installed

---

## **How to Use**

### **1. Run the script**

Give execution permissions:

```bash
chmod +x backup.sh
```

Run it:

```bash
./backup.sh
```

---

## **Menu Options**

### **1. Extract a Backup tar.gz**

Allows you to extract the contents of an existing `tar.gz` file.

You will be asked:

```
Insert the name of the backup file:
```

If the file exists, it will be extracted into the current directory.

---

### **2. Do a Backup tar.gz**

Creates a compressed backup of a directory of your choice.

You will be prompted to enter:

1. The directory to back up
2. The output filename (default: `backup.tar.gz`)

The script will then use:

```bash
tar -czf <output> <directory>
```

and save the compressed archive.

---

## **Example**

Backing up a folder called `project`:

```
Choose a directory: project
Insert output backup name (default: backup.tar.gz):
project_backup.tar.gz
```

Extracting a backup:

```
Insert the name of the backup file:
project_backup.tar.gz
```

---

## **Notes**

- If a directory or file does not exist, the script will notify you.
- Use quotes when typing paths containing spaces:
  `"My Folder/"`

---

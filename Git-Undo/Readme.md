# git-undo.sh

A simple Bash script to safely undo the last Git command using `git reflog`.

## What it does

This script helps you undo the last Git action — whether it was a commit, reset, rebase, etc. It uses Git’s reflog history to go one step back safely.

## How it works

- It shows the latest Git action using `git reflog`.
- Asks for your confirmation to undo it.
- If you confirm, it runs:

```bash
git reset --hard HEAD@{1}
```

This resets the Git state to just before the last action.

## Usage

```bash
./git-undo.sh
```

Sample output:

```
Last Git action:
abcdef1 HEAD@{0}: commit: Added feature X
Undo this action? [y/N]:
```

- Enter `y` to undo.
- Press Enter or type `n` to cancel.

## Requirements

- Git must be installed
- You should run this script inside a Git repository

## Warning

This script uses `git reset --hard`, which will discard uncommitted changes. Make sure you don’t have any unsaved work before confirming.

## Installation (Optional)

If you want to use it from anywhere in your terminal:

```bash
chmod +x git-undo.sh
mv git-undo.sh /usr/local/bin/git-undo
```

Now just run:

```bash
git-undo
```

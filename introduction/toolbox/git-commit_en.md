---
layout: install
permalink: /introduction/git-commit_en/
title:
---

## `git`: Uploading your changes

When you reach a point where you want to upload your work to GitHub,
switch to your terminal and first type
```
git status
```
This gives you a list of all the files you have modified.
Using
```
git add <file>
```
you move the files into the staging area.
Once you have added all the files you want to include in a commit,
create the commit using
```
git commit
```
and write your commit message in the text editor that opens.
Alternatively, you can do everything in the terminal using
```
git commit -m "<commit message>"
```
Before uploading your changes,
you should first check
whether any changes were uploaded while you were working.
So, first run
```
git pull
```
then, after resolving any merge conflicts
that might arise, run
```
git push
```
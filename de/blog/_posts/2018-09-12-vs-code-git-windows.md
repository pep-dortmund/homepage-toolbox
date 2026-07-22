---
title: Using VS Code as git editor in the WSL
author: mnoethe
---

This year, we started recommending the Windows Subsystem for Linux for
our Windows users and switched out Atom for VS Code.
The editor is installed as Windows program, to be usable everywhere.

One Problem was, that when using Atom or VS Code as `core.editor` for git,
the wrong file would be opened.

This can be solved using the `wslpath` utility, that came with Windows 10, 18.03

```
$ git config --global core.editor "bash -c 'code --wait $(wslpath -w $0)'"
```

Git gives the path to the temporary file for the commit message as first argument,
and we need to translate that argument using `wslpath -w` from a WSL path (`/mnt/c/`) to a Windows path (`C:\`).

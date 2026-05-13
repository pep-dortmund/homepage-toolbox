---
layout: install
permalink: /install/latex_mini/
title: LaTeX Minimale Installation
---

We generally recommend installing the full version.
But, if you don't have enough available storage space on your machine,
you can use these instructions to install the minimal version instead.

**You only need to install one version!**

To install the minimal version (≈600 MB), just as with the full installation,
begin by following these steps to download the TeXlive installation script:
```
cd ~/.local
```
```
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
```
```
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```
To only download the `basic` version in lieu of the full version, 
type `S` and confirm with `Enter`.
Afterwards, you can switch the `full-scheme` to `basic` by typing `d` followed by `R`,
confirming each entry with `Enter`.

Finally, just as with the full installation,
begin the installation process by typing `I`.

In this case, only the program _tlmgr_ will be installed.

To ensure the program is executable afterwards,
you must add the path to your shell's configuration file.
To do this, add the following line to the `~/.bashrc` or `~/.zshrc` file.
To see which shell is being used, you can enter `echo $SHELL` in a terminal.
If the output contains _bash_, you can add the path to TeXlive to your `PATH` with:
```
echo 'export PATH="$HOME/.local/texlive/2025/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```
```
source ~/.bashrc
```
For other terminal variants, write the `export` command into the corresponding configuration file.
Next, the update options should be adjusted:
```
tlmgr option autobackup -- -1
```
```
tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```
```
luaotfload-tool --update --force
```

You can download a list of all the necessary LaTeX packages using:
```
curl -fLO https://raw.githubusercontent.com/pep-dortmund/toolbox-workshop/main/tex-packages.txt
```

The installation can be performed using:
```
xargs -a tex-packages.txt tlmgr install
```

This completes the installation of the minimal version.
Continue with the tests in the guide for
[Windows 10](/install/windows_10/#test), [Windows 11](/install/windows_11/#test)
or [Linux](/install/linux/#test).

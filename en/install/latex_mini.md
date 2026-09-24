---
title: LaTeX Minimal Installation
---

We generally recommend installing the full version.
But, if you don't have enough available storage space on your machine,
you can use these instructions to install the minimal version instead.

**You only need to install one version!**

To install the minimal version (≈600 MB), just as with the full installation,
begin by following these steps to download the TeXlive installation script:
```shell
cd ~/.local
```
```shell
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
```
```shell
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```
To only download the {gui}`basic` version in lieu of the full version, 
type {kbd}`S` and confirm with {kbd}`Enter`.
Afterwards, you can switch the {gui}`full-scheme` to {gui}`basic` by typing {kbd}`d` followed by {kbd}`R`,
confirming each entry with {kbd}`Enter`.

Finally, just as with the full installation,
begin the installation process by typing {kbd}`I`.

In this case, only the program `tlmgr` will be installed.

To ensure the program is executable afterwards,
you must add the path to your shell's configuration file.
To do this, add the following line to the `~/.bashrc` or `~/.zshrc` file.
To see which shell is being used, you can enter 
```shell
echo $SHELL
```
in a terminal.
If the output contains `bash`, you can add the path to TeXlive to your `PATH` with:
```shell
echo 'export PATH="$HOME/.local/texlive/2026/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```
```shell
source ~/.bashrc
```
For other terminal variants, write the {gui}`export` command into the corresponding configuration file.
Next, the update options should be adjusted:
```shell
tlmgr option autobackup -- -1
```
```shell
tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```
```shell
luaotfload-tool --update --force
```

You can download a list of all the necessary LaTeX packages using:
```shell
curl -fLO https://raw.githubusercontent.com/pep-dortmund/toolbox-workshop/main/tex-packages.txt
```

The installation can be performed using:
```shell
xargs -a tex-packages.txt tlmgr install
```

This completes the installation of the minimal version.
Continue with the tests in the guide for
{ref}`Windows 10<win10-tests>`, {ref}`Windows 11<win11-tests>`
or {ref}`Linux<linux-tests>`.

---
layout: install
permalink: /install/linux_en/
title: Linux Installation
---

__All steps (Installation, Testing, Updating) must be completed!__

If you are not participating in the LaTeX course, TeXLive is optional.
However, if you choose not to install it, you will be unable to use TeX
within Matplotlib (this means less aesthetically pleasing plots).

If you are only participating in the LaTeX course,
you should install at least VSCodium (or another text editor),
as well as TeXLive.


## <a id="Installation"></a>Installation

{% include admonition.html
  type="warning"
  title="Important"
  body="Commands to be entered into the terminal begin with $.
    Enter the commands line by line (omitting the $ symbol) and confirm each one by pressing Enter."
%}

Installation steps are provided for the most common distributions.
Only execute the commands specific to your own distribution (e.g., Mint).

The `sudo` command grants extensive administrator privileges.
Thus, any command executed using `sudo` should be scrutinised with the utmost care.

### Git, Make, curl

- Mint, Debian, Ubuntu:

        $ sudo apt update
        $ sudo apt upgrade
        $ sudo apt install git make curl

- Fedora:

        $ sudo dnf install git make curl libxcrypt-compat

- Arch Linux:

        $ sudo pacman -S git make curl libxcrypt-compat

### VSCodium Text Editor

The binaries provided by Microsoft for VSCode are proprietary 
and contain tracking software. For this reason, we recommend VSCodium,
an open-source variant of VSCode.

- Mint, Debian, Ubuntu:

  Download the file `codium_<VERSION>_amd64.deb` from
  [github.com/VSCodium/vscodium/releases](https://github.com/VSCodium/vscodium/releases){:target="_blank"} and open it using
  the Software Center (double-click the downloaded file). Click `Install`.

- Fedora

  Download the file `codium_<VERSION>_el7.x86_64.rpm` from
  [github.com/VSCodium/vscodium/releases](https://github.com/VSCodium/vscodium/releases){:target="_blank"} and open it using
  the Software Center (double-click the downloaded file). Click `Install`.


- Arch Linux

      $ sudo pacman -S code


### Python Installation: Miniforge3

Enter the following lines into your terminal:

    $ cd ~/.local
    $ curl -LO "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
    $ bash Miniforge3-$(uname)-$(uname -m).sh -p ~/.local/conda

Depending on the size of your terminal, you may need to press `Enter` repeatedly
to scroll through the entire license agreement.
Then, you can accept it by typing `yes`.
We specified the installation location in the third command; simply confirm the prompt
by pressing `Enter`.
_Do you wish to update your shell profile to automatically initialize conda?_ `yes`.

With this, the base Python environment is installed.

{% include admonition.html type="warning" title="Important" body='For the next step, you must close 
the current terminal window and open a new one' %}

Next, create a dedicated Python environment specifically for the Toolbox Workshop using:

    $ mamba create -y -n toolbox python=3.13 ipython numpy matplotlib scipy uncertainties sympy

Activate this environment with:

    $ mamba activate toolbox

Once the installation is complete, you may delete the installation file with:

    $ rm ~/.local/Miniforge3-*.sh

### TeXLive

<div class="admonition info">
  <p class="admonition-title">For Fedora Distributions Only</p>
  <p>Installing <code>Perl</code> dependencies for <code>latexmk</code>.</p>
  <p>For Fedora >= 41:</p> <pre class="admonition highlight"><code>$ sudo dnf install -y $(dnf repoquery --providers-of=requires latexmk | grep perl)</code></pre>
  <p>For Fedora <= 40:</p>
  <pre class="admonition highlight"><code>$ sudo dnf install -y $(dnf repoquery --requires --resolve latexmk | grep perl)</code></pre>
</div>


*Continue here for all Linux distributions:*

In the terminal, use the following three commands to download
the installation script, executing it with the last command.
```
$ cd ~/.local
$ curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
$ TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Start the installation by pressing `I` followed by `Enter`.

After the installation, you have to inform the system where LaTeX has been installed.
This is done within the `~/.bashrc` file.
To do this, execute the following command in the terminal:

```
$ echo 'export PATH="$HOME/.local/texlive/2025/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Close the terminal and open a new one to proceed with the remaining steps.
In the new terminal, enter the following commands:

```
$ tlmgr option autobackup -- -1
$ tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
$ luaotfload-tool --update --force
```

If this installation fails due to insufficient disk space,
there is also [this option](/install/latex_mini/){:target="_blank"} to install a minimal version
of TeXLive.

__Now, [test](#test) your installation!__


## <a id="test"></a>Testing

In the following section, we will verify that the installations were successful,
so that you can start the workshop with ease.

### Git

Open a terminal and enter:

    $ git

The Git help text should appear.

Configuring Git: Enter the following lines
<span style="color: red;">__using your own details__</span>,
into the terminal, one by one:

    $ git config --global user.name "John Smith"
    $ git config --global user.email "john.smith@example.com"
    $ git config --global rebase.stat true
    $ git config --global merge.conflictstyle diff3


To configure Git to use VSCodium as its editor:

    $ git config --global core.editor "codium --wait"


### Python

Also in a terminal:

    $ mamba activate toolbox
    $ ipython

The `ipython` program should launch, and instead of the `$` prompt,
you will see a numbered prompt. Now, enter the following, one by one:

    In [1]: %matplotlib
    In [2]: import matplotlib.pyplot as plt
    In [3]: import numpy as np
    In [4]: import scipy
    In [5]: import sympy
    In [6]: import uncertainties
    In [7]: plt.plot([1, 2, 4])

A window containing a plot should appear. Close the window
and exit `ipython` by typing:

    In [8]: quit


### Make

Also in a terminal, run:

    $ make

The following output (or its German equivalent) should appear:

    make: *** No targets specified and no makefile found.  Stop.

### TeX

In a terminal:

    $ luatex

The following (or a similar) output should appear:

    This is LuaTeX, Version 1.22.0 (TeX Live 2025)
     restricted system commands enabled.
    **

You can terminate the process with `Ctrl` + `c`.
Next, we will test a program for managing bibliographies or references,

    $ biber

The Biber help text should appear.
The following command should open the TeXLive documentation
(in a PDF viewer):

    $ texdoc texlive


## <a id="update"></a>Updating

### General

    $ sudo apt update
    $ sudo apt upgrade

### Python Update

In a terminal:

    $ mamba update -n toolbox --all

### TeXLive

In a terminal:

    $ tlmgr update --self --all --reinstall-forcibly-removed

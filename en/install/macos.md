---
title: macOS Installation
---


We recommend installing the 64-bit version
if you are using a 64-bit operating system.
If you are unsure: almost every system nowadays is 64-bit.

**All steps (Installation, Testing, Updating) must be completed!**

If you are not participating in the LaTeX course, TeXLive is optional.
However, if you choose not to install it, you will be unable to use TeX
within Matplotlib (this means less aesthetically pleasing plots).

If you are only participating in the LaTeX course,
you should install at least VSCodium (or another text editor),
as well as MacTeX.


## Installation

:::{caution} Important
Enter the commands line by line and confirm each one by pressing Enter.
:::

### Terminal

- The terminal is included in every OS X distribution.
- Search for {gui}`Terminal` using Spotlight.
- The application is located at {gui}`/Applications/Utilities/Terminal.app`.

### Command Line Tools

The Command Line Tools include (among other things) Git and a C/C++ compiler.
To install them, enter the following into the Terminal:

```shell
xcode-select --install
```

Execute the command by pressing {kbd}`Enter`.
Select {gui}`Install` and wait. The download size is approximately 130 MB.

### Python Installation: Miniforge3

Here, the following lines must be entered into the Terminal individually and sequentially:
```shell
cd
```
```shell
curl -LO "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
```
```shell
bash Miniforge3-$(uname)-$(uname -m).sh
```

Depending on the size of your terminal, you may need to press {kbd}`Enter` repeatedly
to scroll through the entire license agreement.
Then, you can accept it by typing {kbd}`yes`.
We specified the installation location in the third command; simply confirm the prompt
by pressing {kbd}`Enter`. After the installation process, a message
similar to the following should appear:
```shell
Do you wish to update your shell profile to automatically initialize conda?
This will activate conda on startup and change the command prompt when activated.
If you'd prefer that conda's base environment not be activated on startup,
   run the following command when conda is activated:

conda config --set auto_activate_base false

You can undo this by running `conda init --reverse $SHELL`? [yes|no]
[no] >>>
```
Accept it by typing {kbd}`yes`.


With this, the base Python environment is installed.

:::{caution} Important
  For the next step, you must open a new terminal window.
  To do this, select {gui}`Terminal` in the terminal app and then {gui}`Quit Terminal`.
:::

Next, create a dedicated Python environment specifically for the Toolbox Workshop using:

```shell
mamba create -y -n toolbox python=3.14 ipython numpy matplotlib scipy uncertainties sympy
```

Activate this environment with:

```shell
mamba activate toolbox
```

Once the installation is complete, you may delete the installation file. It should be located 
in your current directory; to verify this, type the following command in a terminal:

```shell
ls
```

The output list should include `Miniforge3-Darwin-arm64.sh`
(or a similar filename).
If it appears in the list, the file can be deleted with with:

```shell
rm Miniforge3-Darwin-arm64.sh
```

or with the corresponding file name.
If you are unsure, you can also speak to us about these instructions during the workshop.


### Text Editor VSCodium

The binaries provided by Microsoft for VSCode are proprietary 
and contain tracking software. For this reason, we recommend VSCodium,
an open-source variant of VSCode.

- Download the newest version of the file `VsCodium-darwin-<VERSION>.zip` from
  [this Website](https://github.com/VSCodium/vscodium/releases).
- You can find the program "VSCodium.app" in the ZIP file in the Downloads folder.
  Move it to {gui}`Applications`.
- Next, open the app.
  On newer versions of macOS, the system may prevent the app from launching.
  in this case, you must first go to System Settings, navigate to {gui}`General` ->
  {gui}`Security` and click the {gui}`Open Anyway` button.
- In VSCodium, open the command palette with {icon}`carbon:mac-shift` {kbd}`Shift` + {icon}`carbon:mac-command` {kbd}`Cmd` + {kbd}`p`
  and type the following:
  ```
  Shell Command: Install 'codium' command in PATH
  ```
  Execute this by pressing {kbd}`Enter`.
  This ensures that VSCodium will open whenever you type {kbd}`codium` in a terminal.

To configure Git to use VSCodium, enter the following command in a terminal:

```shell
git config --global core.editor "codium --wait"
```


### MacTeX

To install LaTeX, you can download the `MacTeX.pkg` file from [this webpage](http://tug.org/cgi-bin/mactex-download/MacTeX.pkg).
Once the download is complete, simply install the package.

**Now, [test](#macos-tests) your installation!**


(macos-tests)=
## Testing

In the following section, we will verify that the installations were successful,
so that you can start the workshop with ease.

### Git

Open a terminal window and enter the following commands one by one.
We will explain what output you should expect to see alongside each command.

```shell
git
```

The Git help text should appear.

You can also configure some additional settings for Git within a terminal.
Type the following lines __one by one__ in a terminal and confirm each with {kbd}`Enter`,
but <span style="color: crimson;">**use your own details!**</span>:

```shell
git config --global user.name "Max Mustermann"
git config --global user.email "max.mustermann@udo.edu"
git config --global rebase.stat true
git config --global merge.conflictstyle diff3
```

### Python

To test Python, you must first activate the environment installed above within your terminal:

```shell
mamba activate toolbox
```

Next, you can launch the `ipython` program:

```shell
ipython
```

The `ipython` program should launch, and instead of the `$` prompt,
you will see a numbered prompt. 
Now, type in the part of each line that appears after the `:`,
confirming each entry with {kbd}`Enter`:

```ipython
In [1]: %matplotlib
In [2]: import matplotlib.pyplot as plt
In [3]: import numpy as np
In [4]: import scipy
In [5]: import sympy
In [6]: import uncertainties
In [7]: plt.plot([1, 2, 4])
```

A window containing a plot should appear. Close the window
and exit `ipython` by typing:

```ipython
In [8]: quit
```

### Make

Type

```shell
make
```

into a terminal and execute it.
The following output should appear:

```shell
make: *** No targets specified and no makefile found.  Stop.
```

### TeX

Once again, we are in the terminal; type

```shell
luatex
```

The following (or a similar) output should appear:

```shell
This is LuaTeX, Version 1.24.0 (TeX Live 2026)
restricted system commands enabled.
**
```

You can terminate the process with {kbd}`Ctrl` + {kbd}`c`.
Next, we'll test

```shell
biber
```

The Biber help text should appear.

```shell
texdoc texlive
```

The TeXLive documentation should open (in a PDF viewer).

## Updating

### Python Update

In a terminal:

```shell
mamba update -n toolbox --all
```

### TeXLive

In a terminal:

```shell
sudo tlmgr update --self --all --reinstall-forcibly-removed
```

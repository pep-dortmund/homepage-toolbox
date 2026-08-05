---
title: Windows 11 Installation
---

This installation uses [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win11) (WSL),
allowing you to run an Ubuntu environment without having to install an entirely new operating system.

:::{caution} Please ensure you read the following points
+ This guide may appear relatively long and might seem daunting at first glance.
We assure you that this length is a sign of thoroughness, and the guide is designed
to ensure that you can follow along even with no prior experience with the topics
covered in the Toolbox Workshop.

+ Follow these instructions with focus to ensure you do not miss a single step,
and ensure each time that you have correctly copied or typed out the commands.

+ All three sections (Installation, Testing, and Updating) and their respective subsections are mandatory.
You can navigate to the beginning of each section using the Table of Contents on the right-hand side.

+ Should you encounter issues at any point, do **not** skip that step.
Instead, please reach out for help. Under [Help](/problem/) there are instructions
on the best way to contact us and what information to include.

If you are **not** participating in the LaTeX course, the section {ref}`win11-texlive` is optional.
However, if you choose not to install it, you will be unable to use TeX
within Matplotlib (this means less aesthetically pleasing plots).

If you are **only** participating in the LaTeX course, the section {ref}`win11-miniforge3` is optional.
:::


## Installation

### Preparations

#### Enabling File Extensions

File extensions (which indicate the file type, e.g., `.pdf` for PDF documents)
are not enabled by default in Windows. They can and should be enabled.

You can adjust this setting in File Explorer.
The easiest way to open it is by using the keyboard shortcut `Windows` + `E`
(`Windows` refers to the Windows logo key, located between
`Ctrl` and `Alt` in the bottom-left corner of your keyboard).

Alternatively, you can open File Explorer by `right-clicking` the Start menu icon and then `left-clicking` on _File Explorer_.

```{image} /img/explorer/explorer-start_win11.png
:alt:
:class: screenshot
:align: center
```

In the top row, you will see three dots located at the far right. Click on this icon, 
and then click on the last entry in the list: _Options_.

```{image} /img/explorer/explorer-fileext-1_win11.png
:alt:
:class: screenshot
:align: center
```

In the window that opens, you must first click on the _View_ tab,
and then untick the box labelled _Hide extensions for known file types_.
Finally, click `Apply`.

```{image} /img/explorer/explorer-fileext-2_win11.png
:alt:
:class: screenshot
:align: center
```

### Windows Subsystem for Linux (WSL)

#### Installing WSL
First, you need to launch a PowerShell console as an administrator.
The easiest way to do this is by `right-clicking` the Start menu icon,
followed by a `left-click` on _Terminal (Admin)_.

```{image} /img/wsl/win11-powershell-admin.png
:alt:
:class: screenshot
:align: center
```

In most cases, the following window will appear. Confirm this by clicking _Yes_.
These security prompts may appear again later in the process; confirm them with _Yes_.
There are no issues if this window does not appear.

```{image} /img/wsl/win11-admin-warning.jpg
:alt:
:class: screenshot
:align: center
```

A window will now open, as shown below; this is the PowerShell console.
To ensure that PowerShell has been opened with administrator privileges,
you can check the window title; it must begin with _Administrator_:

You can close the information bar that appears at the top of the window by clicking the `X`.

```{image} /img/wsl/win11-powershell-admin-test.png
:alt:
:class: screenshot
:align: center
```

Enter the following command into PowerShell. You can also copy
and paste this command; in PowerShell, pasting is performed with `right-clicking`.
```powershell
wsl --install
```

```{image} /img/wsl/win11-wsl-install.png
:alt:
:class: screenshot
:align: center
```

Press the `Enter` key to confirm your input.

This installation may take a few minutes; during this time, several
stylized progress bars will be displayed. Upon successful completion of this process,
the output will appear as follows:

```{image} /img/wsl/win11-wsl-install-complete.png
:alt:
:class: screenshot
:align: center
```

As indicated in the final line, your PC must now be restarted.

After the restart, the following window should open automatically,
allowing you to complete the WSL installation by setting up your user account.

```{image} /img/wsl/win11-wsl-ubuntu-complete.png
:alt:
:class: screenshot
:align: center
```

#### Setting Up a User Account

Following a successful installation, you will be prompted to enter a username
for the Linux operating system. Your Linux username __may, but does not have to,__
match your Windows username.

:::{caution} Important
The username must contain **only** lowercase letters and **no*** spaces.
:::

Confirm your username by pressing the `Enter` key.

```{image} /img/windows-ubuntu/wsl-ubuntu-username_win11.png
:alt:
:class: screenshot
:align: center
```

Next, you will be asked to provide a password for the Linux operating system.
For security reasons, the password you enter will not be displayed.
Confirm your password by pressing the `Enter` key.
You will then be required to enter the password a second time to ensure there are no typos.
Confirm this entry as well by pressing the `Enter` key.

```{image} /img/windows-ubuntu/wsl-ubuntu-passwd_win11.png
:alt:
:class: screenshot
:align: center
```

If the second password entry does not match the first,
you must first confirm your attempt to try again by typing `y` (short for _yes_).

```{image} /img/windows-ubuntu/wsl-ubuntu-wrong-passwd-1_win11.png
:alt:
:class: screenshot
:align: center
```

Then, repeat the password entry; just as before, you must enter it twice.

```{image} /img/windows-ubuntu/wsl-ubuntu-wrong-passwd-2_win11.png
:alt:
:class: screenshot
:align: center
```

Once the installation has been successfully completed,
you will see output similar to the following screenshot.
The last line (in the screenshot: `luckyjosh@DESKTOP-L02KDEF:~$`) 
will be referred to hereafter as the **prompt**.
This line consists of two parts.
The information preceding the colon is composed of the username 
(in the screenshot: `luckyjosh`) and the computer name 
(in the screenshot: `DESKTOP-L02KDEF`).
You will see different names listed here on your system.
The part following the colon consists of a tilde `~` and a dollar sign `$`.
This is the typical structure of the Linux command line interface, `bash`, 
which is primarily used to interact with the Linux operating system.
A more detailed introduction to using it will be provided during the workshop;
however, we will be using it below to install the necessary software.

```{image} /img/windows-ubuntu/wsl-ubuntu-correct-passwd_win11.png
:alt:
:class: screenshot
:align: center
```

Before proceeding to the next section, you can close the terminal window by entering
```shell
exit
```
or by clicking the `X` in the top right corner.

(win11-terminal)=
### Windows Terminal

We will continue to use Windows Terminal, though this time not as an administrator.
Additionally, you need to adjust one setting.

You can reopen Windows Terminal by `right-clicking` the Start menu icon
and then `left-clicking` on _Terminal_.

```{image} /img/windows-terminal/windows-terminal-start_win11.png
:alt:
:class: screenshot
:align: center
```

By default, Windows Terminal opens Windows PowerShell (identifiable by the text displayed in the tab).
To open an Ubuntu command line, first click the downward-pointing arrow at the top of the window; this opens a drop-down menu
from which you must select `Settings`:

```{image} /img/windows-terminal/windows-terminal-settings-1.png
:alt:
:class: screenshot
:align: center
```

Here, you can configure Windows Terminal to open Ubuntu by default upon startup.
Under the _Startup_ section in the left-hand column, you will find the setting option
_Default profile_; clicking the down arrow will open a selection menu.

```{image} /img/windows-terminal/windows-terminal-settings-2.png
:alt:
:class: screenshot
:align: center
```

From the selection menu, choose Ubuntu (if _Ubuntu_ appears multiple times, select the entry with the penguin icon):

```{image} /img/windows-terminal/windows-terminal-settings-3.png
:alt:
:class: screenshot
:align: center
```

Next, you can close the Terminal window again using
```shell
exit
```
or by clicking the `X` in the top right corner.

### Git, Make and more

:::{caution} Important
In this and the following sections, several commands will be entered into Windows Terminal.
These commands are presented within a code block like this one:
```shell
Example command
```
In the Terminal, **each code block must be entered individually** and confirmed by pressing `Enter`.
:::

To install the programs Git and Make, first open a Windows Terminal
(as described in the {ref}`win11-terminal` section, via the Start menu).
Thus, you can immediately verify whether setting the default profile worked correctly.

Next, perform an update using the following command:
```shell
sudo apt update
```
Executing this command may take some time and requires an
active internet connection.

Commands that begin with `sudo` require special access privileges. Therefore, you will always need to
enter your Linux user password (**not** necessarily your Windows user password) first.

```{image} /img/unix/unix-1.png
:alt:
:class: screenshot
:align: center
```

A successful update looks roughly like this; however, the list of programs displayed
(those available for updating on your system) may be significantly longer the first time you run this command.

```{image} /img/unix/unix-2.png
:alt:
:class: screenshot
:align: center
```

The updates must now be installed, as you have only downloaded the metadata thus far.
This is done by entering the command:
```shell
sudo apt upgrade
```
and confirming this command by pressing the `Enter` key.
Subsequently, you may be prompted to confirm a second time by typing the letter `y` and pressing the
`Enter` key. (Here, too, the displayed list will likely be significantly longer.)

```{image} /img/unix/unix-3.png
:alt:
:class: screenshot
:align: center
```

You can now install the three programs `git`, `make` and `curl`.
This is done by entering the command:
```shell
sudo apt install git make curl
```
and then confirming by pressing the `Enter` key.
This installation process may also take some time to complete.

```{image} /img/unix/unix-4.png
:alt:
:class: screenshot
:align: center
```

The installation is successful (as shown below) if there are no error messages.

```{image} /img/unix/unix-5.png
:alt:
:class: screenshot
:align: center
```

#### Git Settings

A few additional settings still need to be configured for Git.
To do this, enter the following commands into a Windows Terminal
(as before) and confirm each one by pressing `Enter`.

:::{caution} Important
Instead of `John Smith`, you should, of course, use your **own name** and your **own email address**.
:::

```shell
git config --global user.name "John Smith"
```
```shell
git config --global user.email "john.smith@example.com"
```
```shell
git config --global rebase.stat true
```
```shell
git config --global merge.conflictstyle diff3
```

No screenshots have been included here intentionally.
This is so that you can practice using the Windows Terminal yourself.
If you are still unsure about what to do with the commands above, 
you can proceed with the rest of the guide (which includes images) for now.
You can then return to configure these settings later once you feel more confident.

#### Installation Folder `~/.local`


A specific folder is required for the {ref}`win11-miniforge3` and {ref}`win11-texlive`.
You can create this folder using the following command:

```shell
mkdir -p ~/.local
```

This command creates a folder named `.local` if it does not already exist;
if the folder already exists, the command does nothing.

(win11-miniforge3)=
### Python Installation: Miniforge3

To install the programs necessary for convenient use of the Python programming language,
we will use the tool `mamba`.

You can download the installation file _Miniforge3-Linux-x86-64.sh_ 
by entering the following commands into the Windows Terminal:

```shell
cd ~/.local
```
This command changes the current directory to the folder where the installation file is to be downloaded.
The current path is displayed between the `:` and `$`; it should now be `~/.local`.
This is the folder you created in the previous command.

Use this command to download the installation file. The download may take some time.
```shell
curl -LO https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
```

By running
```shell
ls
```
you can list all the files located in the current path.
The file _Miniforge3-Linux-x86-64.sh_ should be listed there.

```{image} /img/mamba/mamba-download.png
:alt:
:class: screenshot
:align: center
```

To install, type or copy the following command into a terminal.

```shell
bash Miniforge3-Linux-x86_64.sh -p ~/.local/conda
```
As before, this command is executed by pressing the `Enter` key.

Next, you will need to accept the terms of use.
These are fully displayed by pressing the `Enter` key.

```{image} /img/mamba/mamba-install-1.png
:alt:
:class: screenshot
:align: center
```

Depending on the size of your terminal window, the text may be displayed one line at a time.
This is true if you see _`--More--`_ on the last line.

```{image} /img/mamba/mamba-install-2.png
:alt:
:class: screenshot
:align: center
```

Press the `Enter` key repeatedly to scroll to the end (see the next screenshot)
of the terms of use.
At the end of the terms of use, you must accept them by typing `yes`
and then pressing `Enter`.

```{image} /img/mamba/mamba-install-3.png
:alt:
:class: screenshot
:align: center
```

You then start the installation by pressing `Enter` again. 
This step may also take a few minutes.

```{image} /img/mamba/mamba-install-4.png
:alt:
:class: screenshot
:align: center
```

The installation concludes with the following lines:
Here, you must once again enter `yes` and confirm by pressing `Enter`.

```{image} /img/mamba/mamba-install-5.png
:alt:
:class: screenshot
:align: center
```

When the last line displayed is the command prompt again, the installation is complete.

```{image} /img/mamba/mamba-install-6.png
:alt:
:class: screenshot
:align: center
```

:::{caution} Important 
Mamba can only be used after closing the terminal window and opening a new one.
:::

In the new terminal window, _(base)_ should now appear at the beginning of the command prompt.

```{image} /img/mamba/mamba-install-7.png
:alt:
:class: screenshot
:align: center
```

Now, you still need to install the Python packages introduced in the workshop.
To do this, we will use a *virtual environment*. We will explain what an environment is
and what it is used for later in the workshop. In short, we are creating
a separate Python installation containing only the packages you will need 
for both the workshop and the practical course.

To do this, use the following command:

```shell
mamba create -y -n toolbox python=3.14 ipython numpy matplotlib scipy uncertainties sympy
```

The installation begins with the following output:

```{image} /img/mamba/mamba-virtual-env-1.png
:alt:
:class: screenshot
:align: center
```

and will once again take some time. The installation is complete when the command
prompt is displayed again.

```{image} /img/mamba/mamba-virtual-env-2.png
:alt:
:class: screenshot
:align: center
```

After a successful installation, you can delete the installation file _Miniforge3-Linux-x86-64.sh_
using the command:

```shell
rm ~/.local/Miniforge3-Linux-x86_64.sh
```

(win11-texlive)=
### TeXLive

For LaTeX, you can download and run the installation script
using the following three commands:

```shell
cd ~/.local
```

```shell
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
```

```shell
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Start the installation by typing `I` followed by `Enter`.

After the installation, you must inform the system where LaTeX has been installed.
This can be done in the file `~/.bashrc`.
To do this, execute the following command in the terminal:

```shell
echo 'export PATH="$HOME/.local/texlive/2026/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Close the terminal and open a new one to proceed with the next steps.

In the new terminal, enter the following commands:

```shell
tlmgr option autobackup -- -1
```

```shell
tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```

```shell
luaotfload-tool --update --force
```


If this installation fails due to insufficient disk space,
there is [this option](/install/latex_mini/) to install a minimal version of
TeXLive instead.

(win11-vscode)=
### Visual Studio Code (VSCode)

#### Installation
Visual Studio Code (VSCode) is a text editor suitable for writing both program code in 
Python and documents in LaTeX. Furthermore, it offers a wide range of additional features.

You can install VSCode via the Microsoft Store.
The easiest way to find it is to open the Start menu and type `Store` into the search bar.
The Microsoft Store will appear as the top search result.
You can open it by clicking on _Open_:

```{image} /img/vscodium/vscode-msstore_win11.png
:alt:
:class: screenshot
:align: center
```

By searching for `Visual Studio Code` within the Microsoft Store, 
you can select the corresponding entry from the list:

```{image} /img/vscodium/vscode-download-1.png
:alt:
:class: screenshot
:align: center
```

On the following page, you can install VSCode by clicking the `Install` button.

```{image} /img/vscodium/vscode-download-2.png
:alt:
:class: screenshot
:align: center
```

Once installed, you can launch VSCode via the Start menu (just as when searching for the Store).

```{image} /img/vscodium/vscode-start_win11.png
:alt:
:class: screenshot
:align: center
```


#### VSCode: WSL Plugin

A useful extension for VSCode facilitates integration with WSL (more on this in the workshop).
You can access the extension search feature by clicking the icon shown in the screenshot on the left-hand sidebar. 
Search for `WSL` there and click the small `Install` button next to the top search result.

```{image} /img/vscodium/vscode-wsl-plugin_win11.png
:alt:
:class: screenshot
:align: center
```


#### VSCode: Language

To change VSCode's language settings, you can follow the steps below.
This is **not** necessary if the language is already set to English 
or if you do not wish to change the language.

To open the language settings, first press the `F1` key.
This opens an input window where you can search for settings.

Here, search for _Configure Display Language_.
You can select this setting by pressing the `Enter` key.

```{image} /img/vscodium/vscode-language-1.png
:alt:
:class: screenshot
:align: center
```

In the subsequent selection menu, you can choose your desired language with a `left-click`.

```{image} /img/vscodium/vscode-language-2.png
:alt:
:class: screenshot
:align: center
```

The selected language will be downloaded (if necessary) and will become available after restarting VSCode.
This can be performed in the window that appears next.

```{image} /img/vscodium/vscode-language-3.png
:alt:
:class: screenshot
:align: center
```

(windows-11-term)=
#### VSCode: Setting Up the Terminal

You can open a terminal in VSCode using the keyboard shortcut `Ctrl` + `Shift` + `` ` `` 
or via the menu bar: _Terminal_ → _New Terminal_.
However, immediately after the initial installation, this terminal defaults 
to the Windows PowerShell. Just like with the Windows Terminal, this terminal also needs to be reconfigured.
Click the downward-pointing arrow to the right of the `+` sign, and select the option _Select Default Profile_.

```{image} /img/vscodium/vscode-terminal-1.png
:alt:
:class: screenshot
:align: center
```

In the following selection, click on _Ubuntu (WSL)_ once again.

```{image} /img/vscodium/vscode-terminal-2.png
:alt:
:class: screenshot
:align: center
```

Next, you can close the currently open terminal by clicking the trash can icon.

```{image} /img/vscodium/vscode-terminal-3.png
:alt:
:class: screenshot
:align: center
```

Now, when a terminal is opened again, e.g., with `Ctrl` + `Shift` + `` ` `` ,
it should now look like the terminal you have (by now) become accustomed to:

```{image} /img/vscodium/vscode-terminal-4.png
:alt:
:class: screenshot
:align: center
```

You can redirect git to use VSCodium as an editor.
For this, execute the following command in the newly set up terminal
```shell
git config --global core.editor "codium --wait"
```


### PDF Viewer

#### Sumatra PDF

For Windows, you should use Sumatra PDF as your PDF viewer.
We do not recommend using Acrobat Reader, as it locks the PDF file,
preventing TeX from overwriting it (you will learn why this is important during the workshop).
You can find the download at the following link:

[Sumatra Download](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html)

On the download page, you can then download the `x64` version of Sumatra PDF 
by `left-clicking` on the highlighted link.
The filename will be in the format `SumatraPDF-X.X.X-64-install.exe`,
where the `X` represents the version number, which may differ from the one shown in the screenshot.


```{image} /img/sumatra/sumatra-download.png
:alt:
:class: screenshot
:align: center
```

The downloaded file will be located in your Downloads folder; you can run it by `double-clicking` on it.

```{image} /img/sumatra/sumatra-install-1.png
:alt:
:class: screenshot
:align: center
```

Consequently, the following window will open, allowing you to start the installation by `left-clicking` on _Install_.

```{image} /img/sumatra/sumatra-install-2.png
:alt:
:class: screenshot
:align: center
```

Close the window after installation by clicking the `X`.

```{image} /img/sumatra/sumatra-install-3.png
:alt:
:class: screenshot
:align: center
```

Finally, you should set Sumatra PDF as your default PDF viewer.
To do this, search for `Default apps` in the Start menu.
Then, open _Default apps_.

```{image} /img/sumatra/sumatra-standard-app-1_win11.png
:alt:
:class: screenshot
:align: center
```

In the window that opens, search for _.pdf_ in the search box, and then
click on the icon at the right end of the search result.

```{image} /img/sumatra/sumatra-standard-app-3_win11.png
:alt:
:class: screenshot
:align: center
```

This opens a selection menu. In this menu, click on _SumatraPDF_ and
confirm your choice by clicking `Set default`.

```{image} /img/sumatra/sumatra-standard-app-4_win11.png
:alt:
:class: screenshot
:align: center
```

You can then close the window as usual by clicking the `X`.


#### Evince

To open PDF files directly from Windows Terminal easily,
it is also recommended to install a PDF viewer for WSL.
To do this, enter the following command into Windows Terminal and confirm the installation by typing `y`:

```shell
sudo apt install evince
```

(win11-tests)=
## Testing

In the following section, we will verify that the installations were successful,
so that you can start the workshop with ease.

### Mamba: Python

To test the Python installation (via Mamba), you should close all open Windows Terminal 
windows and open a new one.
To use the installed packages, activate the _virtual environment_ using this command:

```shell
mamba activate toolbox
```

Executing this command changes the prompt at the beginning of the prompt from `(base)` to `(toolbox)`.

Now, enter the following commands into Windows Terminal, one by one:
After entering the first command, the appearance of the command line will change slightly.

```shell
ipython
```
```ipython
%matplotlib
```
```ipython
import matplotlib.pyplot as plt
```
```ipython
import numpy as np
```
```ipython
import scipy
```
```ipython
import sympy
```
```ipython
import uncertainties
```
```ipython
plt.plot([1, 2, 4])
```

A window containing a coordinate system and a plotted line should appear.

Overall, the terminal should look like this:

```{image} /img/mamba/mamba-test-1.png
:alt:
:class: screenshot
:align: center
```

Errors typically appear as shown here:

```{image} /img/mamba/mamba-test-2.png
:alt:
:class: screenshot
:align: center
```

Close the window displaying the coordinate system, and use the command
```ipython
quit
```
to exit the _ipython_ program.


When running `%matplotlib`, you may encounter the following error:
```ipython
qt.qpa.plugin: Could not find the Qt platform "wayland" in ""
```
This can be resolved by setting an environment variable in the `~/.bashrc` file.
To do this, execute the following command in a terminal:
```shell
echo 'export QT_QPA_PLATFORM=xcb' >> ~/.bashrc
```

### Make

You can test `make` in Windows Terminal by entering the following command:

```shell
make
```

You should see the following output (or its German equivalent):
```shell
    make: *** No targets specified and no makefile found.  Stop.
```

### TeXLive

The TeXLive installation is also tested using Windows Terminal.
Enter the following command:

```shell
luatex
```

The following (or similar) output should appear:

```shell
This is LuaTeX, Version 1.18.0 (TeX Live 2024)
restricted system commands enabled.
**
```

You can exit this by pressing the key combination `Ctrl+c` (`Ctrl` and `c`).
Now you can test another program used by LaTeX for bibliographies.
Test this by entering the command:
```shell
biber
```

The Biber help text should appear:
```shell
Usage:
      biber [options] file[.bcf]
      biber [options] --tool <datasource>

      Creates "file.bbl" using control file "file.bcf" (".bcf" extension is
      optional). Normally use with biblatex requires no options as they are
      all set in biblatex and passed via the ".bcf" file

      In "tool" mode (see B<--tool> option), takes a datasource (defaults to
      "bibtex" datasource) and outputs a copy of the datasource with any command-line
      or config file options applied.

      Please run "biber --help" for option details
```

Finally, we will test the program used for viewing package documentation.
The test command is:
```shell
texdoc texlive
```

Close the window that opens and exit Windows Terminal with:
```shell
exit
```

## Updating

### Mamba

To install updates for Mamba,
enter the following command into a Windows Terminal:
```shell
mamba update -n toolbox --all
```

```{image} /img/mamba/mamba-update-1.png
:alt:
:class: screenshot
:align: center
```

Confirm the installation by typing `Y` followed by `Enter`.

```{image} /img/mamba/mamba-update-2.png
:alt:
:class: screenshot
:align: center
```

As you have (by now) come to expect, the installation is complete
once the command prompt reappears in the terminal.

### Git, Make und Other Unix Tools

To receive updates for Unix tools, (as with the initial installation) 
enter the following two commands into Windows Terminal, one by one:
```shell
sudo apt update
```
```shell
sudo apt upgrade
```

### TeXLive

Updates for TeXLive are installed by entering the following command into Windows Terminal:
```shell
tlmgr update --self --all --reinstall-forcibly-removed
```

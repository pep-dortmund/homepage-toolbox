---
layout: install
permalink: /install/linux/
title: Linux-Installation
---

__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls du nicht am LaTeX-Kurs teilnimmst, ist TeXLive optional.
Dann kannst du allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls du nur am LaTeX-Kurs teilnehmen willst,
solltest du mindestens VSCodium (oder einen anderen Texteditor)
und TeXLive installieren.


## <a id="Installation"></a>Installation

**Wichtig: Befehle, die ins Terminal eingegeben werden sollen, starten mit $. Befehle Zeile für Zeile eingeben, ohne das $-Zeichen, und mit Enter bestätigen.**

Es werden die Installationsschritte für die verbreitetsten Distributionen angegeben.
Führe nur die Befehle für deine eigene Distribution (z.B. Ubuntu) aus.

Der `sudo` Befehl verleiht weitreichende Administratorrechte,
jede Eingabe mit einem `sudo` Befehl muss penibel geprüft werden.

### Git, Make, curl

- Debian, Ubuntu, Mint:

        $ sudo apt update
        $ sudo apt upgrade
        $ sudo apt install git make curl

- Fedora:

        $ sudo dnf install git make curl

- Arch Linux:

        $ sudo pacman -S git make curl

### Texteditor VSCodium

Die Binärdateien, die Microsoft bei VSCode zur Verfügung stellt, sind proprietär
und enthalten Tracking Software. Deswegen empfehlen wir VSCodium, eine Open-Source-Variante von VSCode.


- Debian, Ubuntu, Mint:

  Lade die Datei `codium_<VERSION>_amd64.deb` von
  [github.com/VSCodium/vscodium/releases](https://github.com/VSCodium/vscodium/releases){:target="_blank"} herunter und öffne sie mit
  dem Software-Center (Doppelklick auf den Download). Klicke auf `Installieren`.

- Fedora

  Lade die Datei `codium_<VERSION>_el7.x86_64.rpm` von
  [github.com/VSCodium/vscodium/releases](https://github.com/VSCodium/vscodium/releases){:target="_blank"} herunter und öffne sie mit
  dem Software-Center (Doppelklick auf den Download). Klicke auf `Installieren`.


- Arch Linux

      $ sudo pacman -S code


### Python Installation: Miniforge3

Hier müssen im Terminal die folgenden Zeilen eingegeben werden:

    $ cd ~/.local
    $ curl -LO "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
    $ bash Miniforge3-$(uname)-$(uname -m).sh -p ~/.local/conda

Die Lizenzvereinbarung muss, je nach Größe des Terminals mit `Enter` bis zum Ende erweitert werden. Und kann mit `yes` akzeptiert werden. Den Ort der Installation haben wir gesetzt, die Abfrage bestätigst du mit `Enter`.
_Do you wish the installer to initialize Miniforge3 by running conda init?_ `yes`.

Damit ist die allgemeine Python Umgebung installiert.
Jetzt muss noch eine spezielle Python Umgebung für den Toolbox Workshop installiert werden.
Dafür musst du erst ein neues Terminal öffnen, dann:

    $ mamba create -y -n toolbox python=3.12 ipython numpy matplotlib scipy uncertainties sympy

Diese startest du mit

    $ mamba activate toolbox

Nach erfolgreicher Installation kannst du die Installationsdatei noch löschen

    $ rm ~/.local/Miniforge3-*.sh

### TeXLive

- _Nur bei Fedora Distributionen:_  
Installieren der `Perl` dependencies von `latexmk` mit
```
$ sudo dnf install -y $(dnf repoquery --requires --resolve latexmk | grep perl)
```
Ab hier weiter für alle Linux Distributionen:

Im Terminal wird mit folgenden drei Befehlen das Installationsskript
heruntergeladen und ausgeführt.
```
$ cd ~/.local
$ curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
$ TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Die Installation startet man mit `I` und `Enter`.

Nach der Installation muss dem System mitgeteilt werden, wo LaTeX installiert wurde,
das passiert in der Datei `~/.bashrc`.
Führe dazu folgenden Befehl im Terminal aus:

```
$ echo 'export PATH="$HOME/.local/texlive/2024/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Jetzt einmal das Terminal schließen und für die weiteren Schritte ein Neues öffnen.
In dem neuen Terminal die folgenden Befehle eingeben:

```
$ tlmgr option autobackup -- -1
$ tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```

Falls diese Installation aufgrund von zu geringem Speicherplatz nicht funktioniert,
gibt es [diese Möglichkeit](/install/latex_mini/){:target="_blank"}, eine minimale Version von
TeXLive zu installieren.

__Jetzt noch die Installation [testen](#test)!__


## <a id="test"></a>Testen

### Git

Terminal öffnen

    $ git

Es sollte die Git-Hilfe erscheinen.

Git einstellen: im Terminal (<span style="color: red;">__Eigene Daten eintragen!!!__</span>):

    $ git config --global user.name "Max Mustermann"
    $ git config --global user.email "max.mustermann@udo.edu"
    $ git config --global rebase.stat true
    $ git config --global merge.conflictstyle diff3


Um git beizubringen, VSCodium als Editor zu benutzen:

    $ git config --global core.editor "codium --wait"


### Python

Ebenfalls im Terminal:

    $ mamba activate toolbox
    $ ipython

Das Programm ipython sollte starten und ihr bekommt statt dem `$` einen
nummerierten Prompt, nun folgende Befehle eingeben.

    In [1]: %matplotlib
    In [2]: import matplotlib.pyplot as plt
    In [3]: import numpy as np
    In [4]: import scipy
    In [5]: import sympy
    In [6]: import uncertainties
    In [7]: plt.plot([1, 2, 4])

Es sollte ein Fenster mit einem Plot erscheinen, beenden mit

    In [8]: quit


### Make

Ebenfalls im Terminal:

    $ make

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:

    make: *** No targets specified and no makefile found.  Stop.

### TeX

Im Terminal:

    $ luatex

Es sollte folgende oder ähnliche Ausgabe erscheinen:

    This is LuaTeX, Version 1.18.0 (TeX Live 2024)
     restricted system commands enabled.
    **

Mit `Strg` + `c` beenden.

    $ biber

Es sollte die Biber-Hilfe erscheinen.

    $ texdoc texlive

Es sollte die Dokumentation von TeXLive geöffnet werden (in einem PDF-Betrachter).

## <a id="update"></a>Aktualisieren

### Generell

    $ sudo apt update
    $ sudo apt upgrade

### Python Update

Im Terminal:

    $ mamba update -n toolbox --all

### TeXLive

Im Terminal:

    $ tlmgr update --self --all --reinstall-forcibly-removed

---
layout: install
title: macOS-Installation
---


Wir empfehlen die Installation einer 64-bit Version,
wenn du ein 64-bit Betriebssystem benutzt.
Wenn du dir nicht sicher bist: Heutzutage ist fast jedes System 64-bit.

__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls du nicht am LaTeX-Kurs teilnimmst, ist MacTeX optional.
Dann kannst du allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls du nur am LaTeX-Kurs teilnehmen willst,
solltest du mindestens VSCodium (oder einen anderen Texteditor)
und MacTeX installieren.

<div class="row" style="padding: 10px">
  <div class="col-md-1" align="center"></div>
  <div class="col-md-4" align="center">
  <a href="#test" class="btn btn-secondary btn-lg btn-block" role="button">
  Testen
  </a>
  </div>
  <div class="col-md-2" align="center"></div>
  <div class="col-md-4" align="center">
  <a href="#update" class="btn btn-secondary btn-lg btn-block" role="button">
  Aktualisieren
  </a>
  </div>
  <div class="col-md-1" align="center"></div>
</div>

## <a id="Installation"></a>Installation

**Wichtig: Befehle im Terminal Zeile für Zeile eingeben und mit Enter bestätigen**

### Terminal

- Das Terminal ist in jeder OS X Distribution enthalten
- Im Spotlight nach "Terminal" suchen
- Das Programm befindet sich in `Programme/Dienstprogramme/Terminal.app`

### Command Line Tools

Die Command Line Tools beinhalten unter anderem Git und einen C/C++ Compiler.
Zur Installation gibst du Folgendes im Terminal ein
    
    xcode-select --install

und führst den Befehl mit `Enter` aus.
Danach "Installieren" auswählen und warten. Der Download wiegt etwa 130 MB.

### Python Installation: Mambaforge

Hier müssen im Terminal die folgenden Zeilen eingegeben werden:

    cd
    curl -LO "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
    bash Mambaforge-$(uname)-$(uname -m).sh

Die Lizenzvereinbarung muss, je nach Größe des Terminals mit `Enter` bis zum Ende erweitert werden.
Und kann mit `yes` akzeptiert werden.
Den Ort der Installation kannst du mit `Enter` akzeptieren.
_Do you wish the installer to initialize Mambaforge by running conda init?_ `yes`.

Damit ist die allgemeine Python Umgebung installiert.
Jetzt muss noch eine spezielle Python Umgebung für den Toolbox Workshop installiert werden.
Dafür musst du erst ein neues Terminal öffnen, dann:

    mamba create -y -n toolbox python=3.11 ipython numpy matplotlib scipy uncertainties sympy

Diese startest du mit

    mamba activate toolbox

Nach erfolgreicher Installation kannst du die Installationsdatei noch löschen

    rm ~/.local/Mambaforge-*.sh

### Texteditor VSCodium

Die Binärdateien, die Microsoft bei VSCode zur Verfügung stellt, sind proprietär
und enthalten Tracking Software. Deswegen empfehlen wir VSCodium, eine Open-Source-Variante von VSCode.

- [VSCodium](https://github.com/VSCodium/vscodium/releases).
   Lade die neuste Version der Datei `VsCodium-darwin-<VERSION>.zip` herunter.
-  Das Programm "VSCodium.app" befindet sich dann in der ZIP-Datei im Downloadordner
  und muss nach `Programme` verschoben werden.
-  Die App öffnen. Bei neueren macOS Versionen verhindert macOS eventuell den Start
  und du musst zunächst in den Systemeinstellungen unter "Allgemein" und "Sicherheit"
  auf den "Dennoch öffen" Button klicken.
-  In VSCodium mit `Shift` + `cmd` + `p` die Kommando-Palette öffnen und
  `Shell Command: Install 'code' command in PATH` ausführen.
  Nun wird VSCodium auch geöffnet, wenn im Terminal `codium` eingeben wird.

Um git beizubringen, VSCodium zu benutzen, im Terminal:

    git config --global core.editor "codium --wait"

### MacTeX

- [MacTeX](https://tug.org/mactex/): Umfassende LaTeX-Distribution

[MacTeX.pkg](http://tug.org/cgi-bin/mactex-download/MacTeX.pkg) herunterladen
und das Paket installieren.

__Jetzt noch die Installation [testen](#test)!__


## <a id="test"></a>Testen

### Git

Terminal öffnen

    git

Es sollte die Git-Hilfe erscheinen.

Git einstellen: im Terminal (<span style="color: red;">__Eigene Daten eintragen!!!__</span>):

    git config --global user.name "Max Mustermann"
    git config --global user.email "max.mustermann@udo.edu"
    git config --global rebase.stat true
    git config --global merge.conflictstyle diff3

### Python

Ebenfalls im Terminal:

    mamba activate toolbox
    ipython

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

    make

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:
    
    make: *** No targets specified and no makefile found.  Stop.

### TeX

Im Terminal:

    luatex

Es sollte folgende Ausgabe erscheinen:
    
    This is LuaTeX, Version 1.15.0 (TeX Live 2022)
    restricted system commands enabled.
    **

Mit `Strg` + `c` beenden.

    biber


Es sollte die Biber-Hilfe erscheinen.

    texdoc texlive

Es sollte die Dokumentation von TeXLive geöffnet werden (in einem PDF-Betrachter).

### TeXLive einstellen:

Im Terminal:

    sudo tlmgr option autobackup -- -1
    sudo tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet

## <a id="update"></a>Aktualisieren

### Python Update: Mambaforge

Im Terminal:

    mamba update -n toolbox --all

### TeXLive

Im Terminal:

    sudo tlmgr update --self --all --reinstall-forcibly-removed

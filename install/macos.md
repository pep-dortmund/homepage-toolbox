---
layout: default
title: macOS-Installation
---


Wir empfehlen die Installation einer 64-bit Version, falls man ein 64-bit Betriebssystem benutzt.
Wenn man sich nicht sicher ist, hat man heutzutage fast immer 64-bit.

__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist MacTeX optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens VS Codium (oder einen anderen Texteditor) und MacTeX installieren.

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
Zur Installation folgendes im Terminal eingeben
```bash
xcode-select --install
```
Danach "Installieren" auswählen und warten. Der Download wiegt etwa 130 MB.

### Python Installation: Mambaforge

Hier müssen im Terminal die folgenden Zeilen eingegeben werden:
```bash
cd
curl -LO "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh
```

Die Lizenzvereinbarung muss, je nach Größe des Terminals mit `Enter` bis zum Ende erweitert werden.
Und kann mit `yes` akzeptiert werden.
Den Ort der Installation kannst du mit `Enter` akzeptieren.
_Do you wish the installer to initialize Mambaforge by running conda init?_ `yes`.

Damit ist die allgemeine Python Umgebung installiert.
Jetzt muss noch eine spezielle Python Umgebung für den Toolbox Workshop installiert werden.
Dafür musst du erst ein neues Terminal öffnen, dann:
```bash
mamba create -y -n toolbox python=3.11 ipython numpy matplotlib scipy uncertainties sympy
```

Diese startest du mit
```bash
mamba activate toolbox
```

Nach erfolgreicher Installation kannst du die Installationsdatei noch löschen
```bash
rm ~/.local/Mambaforge-*.sh
```

### Texteditor VSCodium

- [VSCodium](https://github.com/VSCodium/vscodium/releases).
   Lade die neuste Version der Datei `VsCodium-darwin-<VERSION>.zip` herunter.
-  Das Programm "VSCodium.app" befindet sich dann in der ZIP-Datei im Downloadordner und muss nach `Programme` verschoben werden.
-  Die App öffnen. Bei neueren macOS Versionen verhindert macOS eventuell den Start und man muss zunächst in den Systemeinstellungen unter "Allgemein" und "Sicherheit" auf den "Dennoch öffen" Button klicken.
-  In VSCodium mit `Shift+cmd+p` die Kommando-Palette öffnen und `Shell Command: Install 'code' command in PATH` ausführen. Nun wird VS Code auch geöffnet, wenn im Terminal `codium` eingeben wird.

Um git beizubringen, VSCodium zu benutzen, im Terminal:

```bash
git config --global core.editor "codium --wait"
```

- Damit VS Code LaTeX-Code besser darstellen kann, muss das Plugin `LaTeX language support`
  installiert werden
    - Mit `Shift+cmd+x` die Extensions öffnen
    - `LaTeX language support` suchen
    - `install` anklicken
    - VS Code neu starten

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
```bash
mamba activate toolbox
ipython
```

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

Mit `Strg-C` beenden.

    biber

Es sollte die Biber-Hilfe erscheinen.

    texdoc texlive

Es sollte die Dokumentation von TeXLive geöffnet werden (in einem PDF-Betrachter).

### TeXLive einstellen:

Im Terminal:
```bash
sudo tlmgr option autobackup -- -1
sudo tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```

## <a id="update"></a>Aktualisieren

### Python Update: Mambaforge

Im Terminal:
```bash
mamba update -n toolbox --all
```

### TeXLive

Im Terminal:
```bash
sudo tlmgr update --self --all --reinstall-forcibly-removed
```

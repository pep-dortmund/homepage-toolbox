---
layout: default
title: macOS-Installation
---

Wir empfehlen die Installation einer 64-bit Version, falls man ein 64-bit Betriebssystem benutzt.
Wenn man sich nicht sicher ist, hat man heutzutage fast immer 64-bit.

__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist MacTeX optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens Atom (oder einen anderen Texteditor) und MacTeX installieren.

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

Die command line tools beinhalten unter anderem Git und einen C/C++ Compiler.
Zur installation folgendes im Terminal eingeben
```bash
xcode-select --install
```
Danach "Installieren" auswählen und warten. Der Download wiegt etwa 130MB.

### Anaconda

- [Anaconda](http://www.continuum.io/downloads#osx): Python und
  Bibliotheken

__Wichtig__: Wir wollen Python 3.6 Graphical Installer (oben).  Das Paket installieren.

### Atom

- [Atom](https://atom.io/): Texteditor. 'Download for Mac' wählen und die
  Heruntergeladene Datei öffnen. Die `Atom.app` wird dann extrahiert und muss
  nach `Programme` verschoben werden.  Zum Test einmal die App öffnen.

Um git beizubringen, Atom zu benutzen, Im terminal:

```bash
git config --global core.editor "atom --wait"
```

- Damit Atom LaTeX-Code besser darstellen kann muss das Plugin `language-latex`
  installiert werden
    - Dazu in den Einstellungen (Unter `Atom → Preferences`) auf `Install`
      klicken
    - Nach `language-latex` suchen
    - Auf `Install` klicken

### Uncertainties

- [Uncertainties](http://pythonhosted.org/uncertainties/): Python-Bibliothek
  für automatisierte Fehlerrechnung

Im terminal:

    pip install uncertainties

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
    git config --global pull.rebase true
    git config --global rebase.stat true
    git config --global merge.conflictstyle diff3

### Python

Ebenfalls im Terminal:

    ipython
    %matplotlib
    import matplotlib.pyplot as plt
    plt.plot([1, 2, 4])

Es sollte ein Fenster mit einem Plot erscheinen, beenden mit  

    quit

### Uncertainties

Ebenfalls im Terminal:

    ipython
    import uncertainties

Es sollte keine Fehlermeldung erscheinen.

### Make

Ebenfalls im Terminal:

    make

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:

    make: *** No targets specified and no makefile found.  Stop.

### TeX

Im Terminal:

    luatex

Es sollte folgende Ausgabe erscheinen:

    This is LuaTeX, Version 1.0.4 (TeX Live 2017) 
    restricted system commands enabled.
    **

Mit Strg-C beenden.

    biber

Es sollte die Biber-Hilfe erscheinen.

    texdoc texlive

Es sollte die Dokumentation von TeXLive geöffnet werden (in einem PDF-Betrachter).

### TeXLive einstellen: 

Im Terminal:

    sudo tlmgr option autobackup -- -1
    sudo tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

## <a id="update"></a>Aktualisieren

### Anaconda

Im Terminal:

    conda update anaconda

### Unix-Tools und Make (Windows)

Im Terminal:

    pacman -Syu

### Uncertainties

Im Terminal:

    pip install -U uncertainties

### TeXLive

Im Terminal:

    sudo tlmgr update --self --all --reinstall-forcibly-removed

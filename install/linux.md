---
layout: default
title: Linux-Installation
---

__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist TeXLive optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens Sumatra und Atom (oder einen anderen Texteditor) und TeXLive installieren.


<div class="row" style="padding: 10px">
  <div class="col-md-1" align="center"></div>
  <div class="col-md-4" align="center">
  <a href="#test" class="btn btn-default btn-lg btn-block" role="button">
  Testen
  </a>
  </div>
  <div class="col-md-2" align="center"></div>
  <div class="col-md-4" align="center">
  <a href="#update" class="btn btn-default btn-lg btn-block" role="button">
  Aktualisieren 
  </a>
  </div>
  <div class="col-md-1" align="center"></div>
</div>

## <a id="Installation"></a>Installation

**Wichtig: Befehle Zeile für Zeile eingeben und mit Enter bestätigen**

Es werden die Installationen für die verbreitetsten Distributionen angegeben.
Man muss immer nur die Befehle für die jeweils eigene Distribution (z.B. Ubuntu) ausführen.

Der `sudo` Befehl verleiht weitreichende Administratorrechte, jede Eingabe mit einem `sudo` Befehl sollte penibel geprüft werden.

### Git und Make

- Debian, Ubuntu, Mint:

        sudo apt-get update
        sudo apt-get install git make

- Fedora:

        sudo yum install git-core make

- OpenSUSE:

        sudo zypper in git make

- Arch Linux:

        sudo pacman -S git make

### Atom

- Debian, Ubuntu, Mint:
  - Download der .deb Datei hier: [http://atom.io](http://atom.io)
  - Doppelklick auf die Datei und im Software-Center installieren

- Fedora
  - Download der .rpm Datei hier: [http://atom.io](http://atom.io)
  - installieren mit `rpm -i /path/to/atom.x86_64.rpm`

- Arch Linux:
  - atom gibt es im AUR, Installation mit dem Lieblings-AUR tool
  - z. B. `yaourt -S atom-editor-bin` oder `sudo aura -A atom-editor-bin`

### Anaconda

- [Anaconda](http://www.continuum.io/downloads#linux): Python und Bibliotheken

__Wichtig__: Wir wollen Python 3.6.

Im Terminal:

    bash Anaconda3-*-Linux-*.sh
    <Enter>
    yes
    ~/.local/anaconda3
    yes

Nach der Installation muss man ein neues Terminal öffnen, damit Anaconda gefunden wird.

### Uncertainties

    pip install uncertainties

### TeXLive

- [TeXLive](https://www.tug.org/texlive/): [Installationsanleitung](https://www.tug.org/texlive/quickinstall.html)
    - [Versionsunabhängiger Link (install-tl-unx.tar.gz)](http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz)
    - __Achtung__ während des Installationsvorgangs werden ca. 4 GiB Dateien heruntergeladen

Im Terminal:

    tar xvzf install-tl-unx.tar.gz
    TEXLIVE_INSTALL_PREFIX=~/.local/texlive install-tl-*/install-tl
    I
    echo export PATH=\"$(echo ~/.local/texlive/*/bin/*):\$PATH\" >> ~/.bashrc

Nach der Installation Terminal schließen und für die weiteren Schritte ein neues öffnen.

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

Beenden mit `quit`

### Make

Ebenfalls im Terminal:

    make

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:

    make: *** No targets specified and no makefile found.  Stop.

### TeX

Im Terminal:

    luatex

Es sollte folgende Ausgabe erscheinen:

    This is LuaTeX, Version beta-1.0.4 (TeX Live 2017)
     restricted \write18 enabled.
    **

Mit Strg-C beenden.

    biber

Es sollte die Biber-Hilfe erscheinen.

    texdoc texlive

Es sollte die Dokumentation von TeXLive geöffnet werden (in einem PDF-Betrachter).

### TeXLive einstellen: 

Im Terminal:

    tlmgr option autobackup -- -1
    tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

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

    tlmgr update --self --all --reinstall-forcibly-removed

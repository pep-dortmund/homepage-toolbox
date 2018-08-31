---
layout: default
title: Linux-Installation
---

<span style="color: crimson;"><em>Wir updaten die Installationsanleitung im Moment für 2018, schaut am besten Anfang September noch einmal vorbei</em></span>

__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist TeXLive optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens Sumatra und Atom (oder einen anderen Texteditor) und TeXLive installieren.


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

**Wichtig: Befehle Zeile für Zeile eingeben und mit Enter bestätigen**

Es werden die Installationen für die verbreitetsten Distributionen angegeben.
Man muss immer nur die Befehle für die jeweils eigene Distribution (z.B. Ubuntu) ausführen.

Der `sudo` Befehl verleiht weitreichende Administratorrechte, jede Eingabe mit einem `sudo` Befehl sollte penibel geprüft werden.

### Git,Make, curl

- Debian, Ubuntu, Mint:

        sudo apt-get update
        sudo apt-get install git make curl

- Fedora:

        sudo yum install git-core make curl

- OpenSUSE:

        sudo zypper in git make curl

- Arch Linux:

        sudo pacman -S git make curl

### Visual Studio Code


Gute Installationsanleitung hier: <https://code.visualstudio.com/docs/setup/linux>

Startet VS Code nach der Installation, klickt in der linken Leiste auf `Extensions` (Unterstes Symbol) und sucht nach „LaTeX Workshop” und „Python”, installiert jeweils mit klick auf den `install` Button die Pakete.

### Anaconda

__Wichtig__: Wir wollen Python 3.6.

- [Anaconda](http://www.anaconda.com/download/#linux): Python und Bibliotheken

Im Terminal im Ordner mit der heruntergeladenen Datei:

```
$ bash Anaconda3-5.2.0-Linux-x86_64.sh -p ~/.local/anaconda3 -b
```

Öffnet die Datei `~/.bashrc` und fügt diese beiden Zeilen am Ende hinzu:

```
. $HOME/.local/anaconda3/etc/profile.d/conda.sh
conda activate
```

Schließt die aktuelle Konsole und öffnet eine neue.
Am Anfang eures Prompts sollte ein `(base)` stehen.

### Uncertainties

```
$ pip install uncertainties
```

### TeXLive

- [TeXLive](https://www.tug.org/texlive/): [Installationsanleitung](https://www.tug.org/texlive/quickinstall.html)
    - [Versionsunabhängiger Link (install-tl-unx.tar.gz)](http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz)
    - __Achtung__ während des Installationsvorgangs werden ca. 5 GiB Dateien heruntergeladen

Im Terminal:

```
$ cd ~/.local
$ curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
$ TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Die Installition startet man mit `I` und `Enter`.

Öffnet die Datei `~/.bashrc` und fügt folgendeZeile am Ende hinzu:

```
export PATH="$HOME/.local/texlive/2018/bin/x86_64-linux:$PATH"
```

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

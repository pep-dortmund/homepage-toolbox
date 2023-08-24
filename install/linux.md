---
layout: default
title: Linux-Installation
---

__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls du nicht am LaTeX-Kurs teilnimmst, ist TeXLive optional.
Dann kannst du allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls du nur am LaTeX-Kurs teilnehmen willst,
solltest du mindestens VSCodium (oder einen anderen Texteditor)
und TeXLive installieren.


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

        $ sudo yum install git-core make curl

- Arch Linux:

        $ sudo pacman -S git make curl

### Texteditor VSCodium

Die Binärdateien, die Microsoft bei VSCode zur Verfügung stellt, sind proprietär
und enthalten Tracking Software. Deswegen empfehlen wir VSCodium, eine Open-Source-Variante von VSCode.


- Debian, Ubuntu, Mint:

  Lade die Datei `codium_<VERSION>_amd64.deb` von
  <https://github.com/VSCodium/vscodium/releases> herunter und öffne sie mit
  dem Software-Center (Doppelklick auf den Download). Klicke auf `Installieren`.

- Fedora

  Lade die Datei `codium_<VERSION>_el7.x86_64.rpm` von
  <https://github.com/VSCodium/vscodium/releases> herunter und öffne sie mit
  dem Software-Center (Doppelklick auf den Download). Klicke auf `Installieren`.


- Arch Linux

      $ sudo pacman -S code

Starte VSCodium nach der Installation, klicke in der linken Leiste auf
`Extensions` (unterstes Symbol) und suche nach „TexLab LSP Client“,
installiere die Extension mit einem Klick auf den `install` Knopf.

### Anaconda

__Wichtig__: Wir wollen Python 3.9 für Linux. [64-Bit (x86) Installer]

- [Anaconda](https://www.anaconda.com/products/individual#Downloads): Python und Bibliotheken

Im Terminal im Ordner mit der heruntergeladenen Datei den Befehl:

```
$ bash Anaconda3-2022.10-Linux-x86_64.sh -p ~/.local/anaconda3 -b
```

ausführen. Wenn es eine neue Version von Anaconda gibt, ändert sich der Dateiname und muss entsprechend angepasst werden.

Öffnet die Datei `~/.bashrc` und fügt diese beiden Zeilen am Ende hinzu:

```
. $HOME/.local/anaconda3/etc/profile.d/conda.sh
conda activate
```

oder schreibt die beiden Zeilen mit den beiden folgenden Befehlen in die `~/.bashrc`

```
$ echo '. "$HOME/.local/anaconda3/etc/profile.d/conda.sh"' >> ~/.bashrc
$ echo 'conda activate' >> ~/.bashrc
```

Schließt die aktuelle Konsole und öffnet eine neue.
Am Anfang eures Prompts sollte ein `(base)` stehen.

### Uncertainties

```
$ pip install uncertainties
```

### TeXLive

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
$ echo 'export PATH="$HOME/.local/texlive/2023/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Jetzt einmal das Terminal schließen und für die weiteren Schritte ein Neues öffnen.
In dem neuen Terminal die folgenden Befehle eingeben:

```
$ tlmgr option autobackup -- -1
$ tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```

Falls diese Installation aufgrund von zu geringem Speicherplatz nicht funktioniert,
gibt es [diese Möglichkeit](/install/latex_mini.html), eine minimale Version von
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

    $ ipython

Das Programm ipython sollte starten und ihr bekommt statt dem `$` einen
nummerierten Prompt, nun folgende Befehle eingeben.

    In [1]: %matplotlib
    In [2]: import matplotlib.pyplot as plt
    In [3]: plt.plot([1, 2, 4])

Es sollte ein Fenster mit einem Plot erscheinen, beenden mit

    In [4]: quit

### Uncertainties

Ebenfalls im Terminal:

    $ ipython
    In [1]: import uncertainties

Es sollte keine Fehlermeldung erscheinen.

Beenden mit `quit`

### Make

Ebenfalls im Terminal:

    $ make

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:

    make: *** No targets specified and no makefile found.  Stop.

### TeX

Im Terminal:

    $ luatex

Es sollte folgende Ausgabe erscheinen:

    This is LuaTeX, Version 1.15.0 (TeX Live 2022)
     restricted system commands enabled.
    **

Mit Strg-C beenden.

    $ biber

Es sollte die Biber-Hilfe erscheinen.

    $ texdoc texlive

Es sollte die Dokumentation von TeXLive geöffnet werden (in einem PDF-Betrachter).

## <a id="update"></a>Aktualisieren

### Anaconda

Im Terminal:

    $ conda update anaconda

### Uncertainties

Im Terminal:

    $ pip install -U uncertainties

### TeXLive

Im Terminal:

    $ tlmgr update --self --all --reinstall-forcibly-removed

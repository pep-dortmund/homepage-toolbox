---
layout: default
title: Linux-Installation
---

__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist TeXLive optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens Visual Studio Code (oder einen anderen Texteditor) und TeXLive installieren.


<div class="row" style="padding: 10px">
  <div class="col-md-4" align="center">
  <a href="#test" class="btn btn-secondary btn-lg btn-block" role="button">
  Testen
  </a>
  </div>
  <div class="col-md-4" align="center">
  <a href="#update" class="btn btn-secondary btn-lg btn-block" role="button">
  Aktualisieren
  </a>
  </div>
  <div class="col-md-4" align="center">
  <a href="#w-lan" class="btn btn-secondary btn-lg btn-block" role="button">
  W-Lan
  </a>
  </div>
</div>

## <a id="Installation"></a>Installation

**Wichtig: Befehle die ins Terminal eingegeben werden sollen, starten mit $. Befehle Zeile für Zeile eingeben und mit Enter bestätigen**

Es werden die Installationen für die verbreitetsten Distributionen angegeben.
Man muss immer nur die Befehle für die jeweils eigene Distribution (z.B. Ubuntu) ausführen.

Der `sudo` Befehl verleiht weitreichende Administratorrechte, jede Eingabe mit einem `sudo` Befehl sollte penibel geprüft werden.

### Git, Make, curl

- Debian, Ubuntu, Mint:

        $ sudo apt update
        $ sudo apt upgrade
        $ sudo apt install git make curl

- Fedora:

        $ sudo yum install git-core make curl

- Arch Linux:

        $ sudo pacman -S git make curl

### Visual Studio Code

Die Binärdateien, die Microsoft zur Verfügung stellt, haben eine Closed Source
Lizenz und enthalten Tracking Software. Deswegen nutzen wir VSCodium.


- Debian, Ubuntu, Mint:

  Ladet die Datei `codium_<VERSION>_amd64.deb` von <https://github.com/VSCodium/vscodium/releases> herunter und öffnet sie mit
  dem Software Center (Doppelklick auf den Download). Klickt auf `Installieren`

- Fedora

  Ladet die Datei `codium_<VERSION>_el7.x86_64.rpm` von <https://github.com/VSCodium/vscodium/releases> herunter und öffnet sie mit
  dem Software Center (Doppelklick auf den Download). Klickt auf `Installieren`.


- Arch Linux

      $ sudo pacman -S code

Startet VS Code nach der Installation, klickt in der linken Leiste auf `Extensions` (Unterstes Symbol) und sucht nach „LaTeX Language Support”,  installiert die Extension mit klick auf den `install` Button.

### Anaconda

__Wichtig__: Wir wollen Python 3.8 für Linux. [64-Bit (x86) Installer]

- [Anaconda](https://www.anaconda.com/products/individual#Downloads): Python und Bibliotheken

Im Terminal im Ordner mit der heruntergeladenen Datei den Befehl:

```
$ bash Anaconda3-2020.11-Linux-x86_64.sh -p ~/.local/anaconda3 -b
```

ausführen. Wenn es eine neue Version von Anaconda gibt, ändert sich der Dateiname und muss entsprechend angepasst werden.

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

- TeXLive:
    - [Download Link für die aktuellste Version (install-tl-unx.tar.gz)](http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz)
    - __Achtung__ während des Installationsvorgangs werden ca. 5 GiB Dateien heruntergeladen

Es reichen folgende Befehle im Terminal:

```
$ cd ~/.local
$ curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
$ TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Die Installition startet man mit `I` und `Enter`.

Öffnet die Datei `~/.bashrc` und fügt folgendeZeile am Ende hinzu:

```
export PATH="$HOME/.local/texlive/2021/bin/x86_64-linux:$PATH"
```

Nach der Installation Terminal schließen und für die weiteren Schritte ein neues öffnen.

In dem neuen Terminal die folgenden Befehle eingeben:

    $ tlmgr option autobackup -- -1
    $ tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet


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

    This is LuaTeX, Version 1.13.0 (TeX Live 2021)
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

## <a id="w-lan"></a>W-Lan

Um das eduroam-Netz an der TU Dortmund einzurichten, können folgende Optionen verwendet werden:
 - Wi-Fi security: WPA- & WPA2-Enterprise
 - Authentication: Geschütztes EAP (PEAP)
 - Anonymous Identity: telesec@tu-dortmund.de
 - Domain: tu-dortmund.de
 - CA-Zertifikat: T-TeleSec_GlobalRoot_Class_2.crt
    - zu finden in /usr/share/ca-certificates/mozilla/T-TeleSec_GlobalRoot_Class_2.crt
 - PEAP-Version: Automatisch
 - Inner authentication: MSCHAPv2
 - Username: smxxxx@udo.edu
 - Passwort: ******* (W-Lan Passwort)

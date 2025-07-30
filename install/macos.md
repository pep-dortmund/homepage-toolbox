---
layout: install
permalink: /install/macos/
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


## <a id="Installation"></a>Installation

{% include admonition.html
  type="warning"
  title="Wichtig"
  body="Gib die Befehle Zeile für Zeile ein und bestätige sie mit Enter."
%}

### Terminal

- Das Terminal ist in jeder OS X Distribution enthalten.
- Suche im Spotlight nach „Terminal“.
- Das Programm befindet sich in `Programme/Dienstprogramme/Terminal.app`.

### Command Line Tools

Die Command Line Tools beinhalten unter anderem Git und einen C/C++ Compiler.
Zur Installation gibst du Folgendes im Terminal ein,

    xcode-select --install

und führst den Befehl mit `Enter` aus.
Danach „Installieren“ auswählen und warten. Der Download wiegt etwa 130 MB.

### Python Installation: Miniforge3

Hier müssen im Terminal die folgenden Zeilen einzeln nacheinander eingegeben werden:
```
cd
```
```
curl -LO "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
```
```
bash Miniforge3-$(uname)-$(uname -m).sh
```

Die Lizenzvereinbarung musst du je nach Größe des Terminals mit `Enter` bis zum Ende erweitern.
Und dann kannst du sie mit `yes` akzeptieren.
Den Ort der Installation haben wir im dritten Befehl gesetzt, die Abfrage bestätigst du mit `Enter`.
_Do you wish the installer to initialize Miniforge3 by running conda init?_ `yes`.

Damit ist die allgemeine Python-Umgebung installiert.

{% include admonition.html
  type="warning"
  title="Wichtig"
  body='Für den folgenden Schritt musst du ein neues Terminal öffnen.
  Wähle dazu in der App „Terminal“ den Punkt „<b>Terminal</b>“ und dann „<b>Terminal beenden</b>“.' %}

Im Anschluss erstellst du jetzt noch einen spezielle Python-Umgebung für den Toolbox Workshop mittels:

    mamba create -y -n toolbox python=3.13 ipython numpy matplotlib scipy uncertainties sympy

Diese startest du mit

    mamba activate toolbox

Nach erfolgreicher Installation kannst du die Installationsdatei noch löschen. Diese sollte im aktuellen Ordner liegen, um das zu überprüfen, gib einmal

    ls

im Terminal ein. In der ausgegebenen Liste sollte `Miniforge3-Darwin-arm64.sh`
oder ähnlich auftauchen.
Wenn das so ist, kannst du sie mit dem folgenden Befehl löschen

    rm Miniforge3-Darwin-arm64.sh

oder dem entsprechenden Dateinamen.
Falls du dir nicht sicher bist, kannst du uns für diesen Punkt auch im Workshop ansprechen.


### Texteditor VSCodium

Die Binärdateien, die Microsoft bei VSCode zur Verfügung stellt,
sind proprietär und enthalten Tracking Software.
Deswegen empfehlen wir dir VSCodium, eine Open-Source-Variante von VSCode.

- Lade die neueste Version der Datei `VsCodium-darwin-<VERSION>.zip` von
  [dieser Webseite](https://github.com/VSCodium/vscodium/releases){:target="_blank"} herunter.
- Das Programm „VSCodium.app“ findest du in der ZIP-Datei im Downloadordner
  und musst sie nach `Programme` verschieben.
- Als nächsten Schritt öffnest du die App.
  Bei neueren macOS-Versionen verhindert macOS eventuell den Start,
  und du musst zunächst in den Systemeinstellungen unter „Allgemein“
  und „Sicherheit“ auf den „Dennoch öffnen“ Button klicken.
- In VSCodium öffnest du mit `Shift` + `cmd` + `p` die Kommando-Palette
  und schreibst dort
  ```
  Shell Command: Install 'codium' command in PATH
  ```
  führst es dann mit `Enter` aus.
  So wird VSCodium nun auch geöffnet, wenn du im Terminal `codium` eingibst.

Um git beizubringen, VSCodium zu benutzen, gibst du im Terminal ein:

    git config --global core.editor "codium --wait"

### MacTeX

Für die Installation von LaTeX kannst du von [dieser Webseite](http://tug.org/cgi-bin/mactex-download/MacTeX.pkg){:target="_blank"} `MacTeX.pkg` herunterladen.
Nach dem Download musst du nur noch das Paket installieren.

__Jetzt noch die Installation [testen](#test)!__


## <a id="test"></a>Testen

Im folgenden Abschnitt zeigen wir dir, wie du testen kannst, dass die Installationen funktioniert haben 
und somit entspannt in den Workshop starten kannst.

### Git

Öffne ein Terminal und gib nacheinander alle folgenden Befehle ein.
Wir erklären parallel, welche Ausgabe passieren sollte.

    git

Es sollte die Git-Hilfe erscheinen.

Für git kannst du im Terminal noch etwas einstellen.
Tippe die folgenden Zeilen __nacheinander__ in dein Terminal und bestätige sie mit `Enter`,
aber <span style="color: red;">__trage deine eigenen Daten ein!!!__</span>:

    git config --global user.name "Max Mustermann"
    git config --global user.email "max.mustermann@udo.edu"
    git config --global rebase.stat true
    git config --global merge.conflictstyle diff3

### Python

Um Python zu testen, musst du erst im Terminal die oben installierte Umgebung installieren:

    mamba activate toolbox

Danach kannst du das Programm `ipython` starten:

    ipython

`ipython` sollte gestartet sein und du hast statt des `$`-Zeichens einen nummerierten Prompt.
Jetzt gibst du jeweils den Teil der Zeile nach dem `:` ein und bestätigst mit `Enter`.

    In [1]: %matplotlib
    In [2]: import matplotlib.pyplot as plt
    In [3]: import numpy as np
    In [4]: import scipy
    In [5]: import sympy
    In [6]: import uncertainties
    In [7]: plt.plot([1, 2, 4])

Es sollte ein Fenster mit einem Plot erscheinen, dieses kannst du schließen und `ipython` beenden.

    In [8]: quit

### Make

Tippe

    make

im Terminal und führe es aus.
Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:

    make: *** No targets specified and no makefile found.  Stop.

### TeX

Erneut sind wir im Terminal; tippe

    luatex

ein. Es sollte folgende oder ähnliche Ausgabe erscheinen:

    This is LuaTeX, Version 1.22.0 (TeX Live 2025)
    restricted system commands enabled.
    **

Mit `Strg` + `c` kannst du es beenden.
Dann testen wir als Nächstes

    biber

Es sollte die Biber-Hilfe erscheinen.

    texdoc texlive

Es sollte die Dokumentation von TeXLive geöffnet werden (in einem PDF-Betrachter).

## <a id="update"></a>Aktualisieren

### Python Update

Im Terminal:

    mamba update -n toolbox --all

### TeXLive

Im Terminal:

    sudo tlmgr update --self --all --reinstall-forcibly-removed

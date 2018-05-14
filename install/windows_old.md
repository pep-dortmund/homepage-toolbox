---
layout: default
title: Windows-Installation
---

Wir empfehlen die Installation einer 64-bit Version, falls man ein 64-bit Betriebssystem benutzt.
Wenn man sich nicht sicher ist, hat man heutzutage fast immer 64-bit.


__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist TeXLive optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens Sumatra und Atom (oder einen anderen Texteditor) und TeXLive installieren.
Dann ist mit Terminal die Windows-Konsole gemeint (wenig bequem).

<div class="row" style="padding: 10px">
  <div class="col-md-4" align="center">
  <a href="#installation" class="btn btn-secondary btn-lg btn-block" role="button">
  Installation
  </a>
  </div>
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
  <div class="col-md-2" align="center"></div>
</div>

## <a id="Installation"></a>Installation

Findet heraus, ob ihr ein 64- oder 32-bit Betriebssystem habt. Das geht mit Rechtsklick 
auf `Computer` (Windows 7) bzw. `Dieser PC` (Windows 10) und dann Eigenschaften.

Getestet auf Windows 10, funktioniert ähnlich auch für 8 und 7.

**Wichtig: Befehle im Terminal Zeile für Zeile eingeben und mit Enter bestätigen**


### Dateiendungen einschalten

<span style="font-size: large;">[Anleitung](https://support.microsoft.com/kb/865219/de)</span>

### Sumatra PDF

- [Sumatra](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html){:target="_blank"}: PDF-Betrachter

Für 64-Bit Systeme die Datei unter `64-bit builds` herunterladen!

Die Verwendung von Acrobat Reader wird nicht empfohlen, da er die PDF-Datei blockiert, sodass sie nicht von TeX überschrieben werden kann (warum das wichtig ist, erfährt man im Kurs).

Unter Options kann er als Standard-Programm für PDFs eingestellt werden:  
<img alt="" src="/img/sumatra.png" style="width: 100%;" />

### Atom

- Texteditor
- [Download Atom](https://atom.io/){:target="_blank"}
- Damit Atom LaTeX-Code besser darstellen kann muss das Plugin `language-latex` installiert werden
    - Klicke auf `File → Settings`
    - Wähle `Install` in der Leiste aus
    - Suche nach dem Paket `language-latex`
    - Installiere es mit einem Klick auf `Install`

### Anaconda

- Python-Distribution mit vorinstallierten Paketen für das wissenschaftliche Arbeiten

- [Download Anaconda](http://www.continuum.io/downloads#windows){:target="_blank"}
  (__Wichtig__: Wir wollen Python 3.6. Richtige Version (32-bit / 64-bit) für `X86` auswählen.)

Die Standardeinstellung ist ok:  
<img alt="" src="/img/anaconda-1.png" style="width: 100%;" />

Der Standardpfad ist ok:  
<img alt="" src="/img/anaconda-2.png" style="width: 100%;" />

So ist die Verwendung am bequemsten (auch die Standardeinstellungen):  
<img alt="" src="/img/anaconda-3.png" style="width: 100%;" />

### ConEmu

- Mächtiger Ersatz für die Windows-Konsole
- [Download ConEmu](https://github.com/Maximus5/ConEmu/releases)

Richtig ist die Datei `ConEmuSetup.*.exe`.

Hier `x64` für 64-bit oder `x86` für 32-bit auswählen:  
<img alt="" src="/img/conemu-1.png" style="width: 100%;" />

Die Standardeinstellungen sind ok:  
<img alt="" src="/img/conemu-2.png" style="width: 100%;" />

Einmal ConEmu (vom Desktop oder aus dem Startmenü) starten und die Standardeinstellungen absegnen:  
<img alt="" src="/img/conemu-3.png" style="width: 100%;" />

### Git

- Werkzeug für Versionskontrolle und Kollaboratives Arbeiten an Code
- [Download Git](http://git-scm.com/download/win){:target="_blank"}

Der Standardpfad ist ok:  
<img alt="" src="/img/git-1.png" style="width: 100%;" />

Hier "Git Bash Here" und "Associate .sh files to be run with Bash" abwählen:  
<img alt="" src="/img/git-2.png" style="width: 100%;" />

So ist git bequem nutzbar:  
<img alt="" src="/img/git-3.png" style="width: 100%;" />

Das ist besonders wichtig, falls man mit anderen zusammenarbeitet, die OS X oder Linux verwenden:  
<img alt="" src="/img/git-4.png" style="width: 100%;" />

Damit Python auch funktioniert:  
<img alt="" src="/img/git-5.png" style="width: 100%;" />

Auch hier die Standardeinstellungen übernehmen und auf `install` klicken:
<img alt="" src="/img/git-6.png" style="width: 100%;" />

### Unix-Kommandozeilentools und Make

- Unix-Kommandozeilentools für Windows und Make
- [Download MSys2](https://msys2.github.io/):
  `x86_64` ist für 64-bit, `i686` für 32-bit.

Der Standardpfad ist ok:  
<img alt="" src="/img/msys2-1.png" style="width: 100%;" />

Das geöffnete schwarze Fenster kann man einfach schließen.

Damit die installierten Programme wie Git und Python gefunden werden, muss noch eine
Umgebungsvariable angelegt werden.
* Rechtsklick auf `Computer` → `Eigenschaften`
* durchklicken: `Erweiterte Systemeinstellungen` → `Umgebungsvariablen`
* Unter `Benutzervariablen` auf `Neu` klicken
* Name: `MSYS2_PATH_TYPE`, Wert: `inherit`

<img alt="" src="/img/msys2-env.png" style="width: 50%;" />

ConEmu starten und über die drei Balken in der rechten oberen Ecke das Einstellungsfenster öffnen:  
<img alt="" src="/img/msys2-2.png" style="width: 100%;" />

Unter `Startup` / `Specified named task` `{Bash::Msys2-*}` (entweder 32 oder 64 statt *) auswählen:  
<img alt="" src="/img/msys2-3.png" style="width: 100%;" />

Unter "Integration" die obere Hälfte in die angezeigte Form bringen und dann "Register" drücken
(dabei den Eintragsnamen angeben, den man im letzten Schritt ausgewählt hat (für 32-bit))
(gegebenenfalls `Program Files` durch `Programme` oder ähnliches ersetzen):  
<img alt="" src="/img/msys2-integration.png" style="width: 100%;" />

Mit "Save settings" unten das Fenster schließen und auch das Hauptfenster schließen.

Jetzt sollte über Rechtsklick auf eine leere Stelle des Desktops oder eines Explorer-Fensters der Eintrag "Bash Here" ConEmu öffnen:  
<img alt="" src="/img/msys2-5.png" style="width: 30%;" />

Ab jetzt ist mit Terminal genau das gemeint.

Jetzt kann Make installiert werden.
Zuerst wird der Paketmanager aktualisiert.
Im geöffneten Terminal eingeben (Rechstklick auf das Terminal zum Einfügen von kopiertem Text):

    pacman -Syu

Hilfedateien und Make installieren:

    pacman -S man-db make

Eine Windows-Konsole kann man über ConEmu öffnen:  
![](/img/msys2-6.png)

### Git-Einstellung

Im Terminal (auf Anführungszeichen achten):

    git config --global core.editor "atom --wait"

### Uncertainties

- [Uncertainties](http://pythonhosted.org/uncertainties/): Python-Bibliothek für automatisierte Fehlerrechnung

Im Terminal eingeben

    pip install uncertainties

### TeXLive

- [TeXLive](https://www.tug.org/texlive/): [Installationsanleitung](https://www.tug.org/texlive/windows.html)
    - [Versionsunabhängiger Link (install-tl-windows.exe)](http://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe)
    - __Achtung__: während des Installationsvorgangs werden ca. 4 GiB Dateien heruntergeladen.
    - Es wird empfohlen, den Virenscanner für die Dauer der Installation abzuschalten, falls es zu Problemen kommt.

Die einfache Installation genügt:  
![](/img/texlive-1.png)

Der Standardpfad ist ok:  
![](/img/texlive-2.png)

Wir brauchen TeXworks nicht:  
![](/img/texlive-3.png)

__Jetzt noch die Installation [testen](#test)!__

## <a id="test"></a>Testen

### Git

ConEmu mit einer MSys2 Shell öffnen, zum Beispiel auf dem Desktop über `Rechtsklick → Bash Here`

    git

Es sollte die Git-Hilfe erscheinen.

Git einstellen: im Terminal (<span style="color: red;">__Eigene Daten eintragen!!!__</span>):

    git config --global user.name "Max Mustermann"
    git config --global user.email "max.mustermann@udo.edu"
    git config --global pull.rebase true
    git config --global rebase.stat true
    git config --global merge.conflictstyle diff3

### Python

Ebenfalls in ConEmu:

    ipython
    %matplotlib
    import matplotlib.pyplot as plt
    plt.plot([1, 2, 4])

Es sollte ein Fenster mit einem Plot erscheinen.

### Uncertainties

Ebenfalls in ConEmu:

    ipython
    import uncertainties

Es sollte keine Fehlermeldung erscheinen.

### Make

Ebenfalls in ConEmu:

    make

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:

    make: *** No targets specified and no makefile found.  Stop.

### TeX

In ConEmu:

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

`cmd.exe` oder ein `cmd`-Terminal in ConEmu benutzen

    tlmgr option autobackup -- -1
    tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

## <a id="update"></a>Aktualisieren

### Anaconda

In ConEmu (Bash):

    conda update anaconda

### Unix-Tools und Make (Windows)

In ConEmu:

    pacman -Syu

### Uncertainties

In ConEmu:

    pip install -U uncertainties

### TeXLive

`cmd.exe` oder ein `cmd` Terminal in ConEmu benutzen

    tlmgr update --self --all --reinstall-forcibly-removed

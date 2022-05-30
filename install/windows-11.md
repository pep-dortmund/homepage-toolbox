---
layout: default
title: Windows-11-Installation α-build
---

*Dies ist eine vorläufige Version für die Installation unter Windows 11.
Für Rückmeldungen zur Verständlichkeit und Fragen bei Problemen erreicht ihr uns am besten per [E-Mail](mailto:pep-toolbox.physik@lists.tu-dortmund.de).*

__Es treten vermehrt Probleme in der Internetanknüpfung vom WSL2 unter Windows 11 auf, wenn möglich erstmal auf Windows 10 bleiben.__

__Es müssen alle drei Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist TeXLive optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens Sumatra und VSCode (oder einen anderen Texteditor) und TeXLive installieren.
Dann ist mit Terminal die Windows-Konsole gemeint (wenig bequem).

Diese Installation verwendet das [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10),
um eine Ubuntu Installation verwenden zu können ohne ein komplett neues Betriebssystem installieren zu müssen.

__Lest euch jeden Schritt durch, stellt sicher,
dass Befehle richtig kopiert oder abgetippt wurden.
Falls etwas nicht funktioniert findet ihr unter [Hilfe](/problem.html)
die Hinweise wie ihr uns am besten kontaktieren könnt.__

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

**Wichtig: Befehle im Terminal Zeile für Zeile eingeben und mit Enter bestätigen**

### Windows Subsystem for Linux (WSL)

Mit `Win + x` öffnet sich eine Auswahlliste.
Wählt `Windows-Terminal (Administrator)` aus.
Wenn im Fenster oben nicht _Windows Powershell_, kann über den Pfeil nach unten die `Windows PowerShell` geöffnet werden.
Trage
```
wsl --install -d Ubuntu
```
ein und führe den _Befehl_ mit `Enter` aus.
Tritt der Fehler _0x80370102_ auf, folgt den Hinweisen auf [dieser Seite](
https://thefilibusterblog.com/ispravit-oshibku-0x80370102-wsl2-ne-zapuskaet-ubuntu-v-windows-11/).
Der Rechner muss nach erfolgreicher Installation neugestartet werden.

#### Einrichten eines Benutzerskontos

Nach dem Neustart erscheint folgendes Fenster mit der Aufforderung einen Benutzernamen für
das Linux-Betriebssystem einzugeben. Erscheint dieses Fenster nicht automatisch, muss `Win + s` gedrückt werden, dann `Ubuntu` eingeben und mit `Enter` starten.

<img alt="" src="/img/wsl-12.png" class="screenshot" />

Dieser Linux-Benutzername kann frei gewählt werden.
Der Linux-Benutzername __kann, muss aber nicht,__
mit dem Windows-Benutzernamen übereinstimmen.
Die Eingabe des Benutzernamens wird mit Drücken der `Enter`-Taste bestätigt.

<img alt="" src="/img/wsl-13.png" class="screenshot" />

Im Anschluss wird auch nach einem Passwort für das Linux-Betriebssystem gefragt.
Aus Sicherheitsgründen, wird das eingegebene Passwort nicht angezeigt.
Die Eingabe wird durch Drücken der `Enter`-Taste bestätigen.

<img alt="" src="/img/wsl-14.png" class="screenshot" />

Im Anschluss muss das Passwort erneut eingegeben werden, um Tippfehler auszuschließen.
Auch diese Eingabe wird wieder mit der `Enter`-Taste bestätigt.   
Sollte die Eingabe des zweiten Passworts nicht mit dem ersten übereinstimmen,
so muss dieses erneut (zweimal) eingegeben werden.

<img alt="" src="/img/wsl-15.png" class="screenshot" />

Ist die Installation erfolgreich durchgeführt worden,
erhält man die im Screenshot gezeigte Ausgabe.
Die unterste Zeile besteht aus zwei Teilen.   
Die Information vor dem Doppelpunkt setzt sich dabei aus dem Benutzernamen und dem Computernamen zusammen.
Der Teil nach dem Doppelpunkt besteht aus einer Tilde `~` und einem Dollarzeichen `$`.
Dies ist der typische Aufbau der Linux-Kommandozeile `bash`, die maßgeblich zur Interaktion
mit dem Linux-Betriebssystem verwendet wird. Eine Einführung in den Umgang erfolgt während
des Workshops, im Folgenden wird diese jedoch schon zur
Installation der benötigten Software verwendet.

<img alt="" src="/img/wsl-16.png" class="screenshot" />

### Windows Terminal
Das Windows Terminal stellt einen Ersatz der Standard WSL-Kommandozeile dar.
Wir haben es ganz zu Anfang der Anleitung schon benutzt.
Starte es erneut und öffne mit `Strg + ,` oder über den Pfeil nach unten die Einstellungen. Dort muss unter dem  Punkt _Standardprofil_ `Ubuntu` ausgewählt werden.

<img alt="" src="/img/windows_terminal_02.png" class="screenshot" />

### Dateiendungen einschalten

Die Endungen einer Datei sind unter Windows nicht Standardmäßig aktiviert.
Diese können und sollen aktiviert werden.

Dafür wird in der Taskleiste auf das Windows-Symbol, oder die Lupe geklickt und `Dateien` eingegeben.

<img alt="" src="/img/windows-installation/windows-3.PNG" class="screenshot" />

In der obersten Zeile gibt es den Punkt `Ansicht`, das Kästchen für den Punkt `Dateinamenerweiterungen` muss ausgewählt werden.

<img alt="" src="/img/windows-installation/windows-4.PNG" class="screenshot" />

### Visual Studio Code

Visual Studio Code (VSCode) ist ein Text-Editor der sowohl zum schreiben von Programm-Code in Python als auch Texten in LaTeX geeignet ist.
Drüber hinaus hat dieser auch noch viele weitere Funktionen.
Die Installationsdatei `VSCodiumSetup-x64-<VERSION>.exe` kann unter dem folgenden Link heruntergeladen werden:

[Download VSCodium](https://github.com/VSCodium/vscodium/releases){:target="_blank"}

In den aufploppenden Setup-Fenstern können bis zum Fenster mit dem Titel `Zusätzliche Aufgaben auswählen` die Standard-Optionen gewählt werden.
Die ersten vier Optionen sind nach persönlichen Vorlieben zu wählen.
Die fünfte Option _**Zu PATH hinzufügen**_ soll gewählt werden.

Auch wenn es vielleicht ungewohnt ist, kann es von Vorteil sein Software mit englischen Spracheinstellungen
zu verwenden. Um die Spracheinstellungen von VSCode zu ändern müssen die folgenden Schritte befolgt werden.
Diese ist **nicht** nötig, wenn die Sprache bereits auf Englisch eingestellt ist oder eine Änderung der
Sprache nicht gewünscht ist.

Zum Öffnen der Spracheinstellungen muss zunächst die Taste `F1` gedrückt werden. Dies öffnet ein
Eingabefenster in dem nach Einstellungen gesucht werden kann.

<img alt="" src="/img/vscode-16.png" class="screenshot" />

Hier muss nun nach _Configure Display Language_ gesucht werden. Die Einstellung kann dann durch drücken
der `Entertaste` ausgewählt werden.

<img alt="" src="/img/vscode-17.png" class="screenshot" />

Viele Programme verwenden Textdateien, um Einstellungen zu speichern. Die Details sind an dieser
Stelle aber noch nicht von Belang. In dieser Datei muss die Abkürzung der eingestellten Sprache,
`"de"` (Deutsch) auf `"en"`(Englisch) geändert werden. Danach muss die Datei mit `Strg + S` gespeichert
werden. Die Änderung der Sprache tritt erst nach dem Schließen und Neustarten von VSCode in Kraft.

<img alt="" src="/img/vscode-18.png" class="screenshot" />

Mit `Strg + Shift + ö` oder über den Punkt _Terminal → Neues Terminal_
kann ein Terminal in VSCodium geöffnet werden. Klickt rechts auf den Pfeil nach unten,
neben dem `+`, und wählt den Punkt _Select Default Profile_ aus.
Dort dann auf den Punkt _Ubuntu-20.04 (WSL)_ klicken.

<img alt="" src="/img/vscode-18.png" class="screenshot" />

### Sumatra PDF

Als PDF-Betrachter sollte Sumatra PDF verwendet werden.
Die Verwendung von Acrobat Reader wird nicht empfohlen, da er die PDF-Datei blockiert,
sodass sie nicht von TeX überschrieben werden kann (warum das wichtig ist, erfährt man im Kurs).   
Den Download findet man unter dem folgenden Link.

[Sumatra Download](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html){:target="_blank"}

Auf der Download-Seite kann dann die `x64` Version von Sumatra PDF mit einem `Linksklick` auf den
hervorgehobenen Link heruntergeladen werden.

<img alt="" src="/img/sumatra-1.png" class="screenshot" />


Durch einen doppelten `Linksklick` kann die heruntergeladene Datei ausgeführt werden.
Infolgedessen öffnet sich das folgende Fenster. Vor der Installation werden durch einen `Linksklick`
die _Optionen_ geöffnet.

<img alt="" src="/img/sumatra-2.png" class="screenshot" />

In diesem Fenster kann zum einen der Installationspfad angepasst werden. Dies ist jedoch __optional__, der
bereits eingetragene Dateipfad ist kann unverändert bleiben. Zum anderen sollten die drei möglichen
Haken gesetzt sein. Im Anschluss kann Sumatra PDF mit einem `Linksklick` auf _Installieren_ installiert werden.

<img alt="" src="/img/windows-installation/windows-8.PNG" class="screenshot" />

Nach einer erfolgreichen Installation wird das folgende Fenster angezeigt. Mit einem `Linksklick`
auf _Sumatra Starten_ kann Sumatra PDF nun gestartet werden.

<img alt="" src="/img/sumatra-5.png" class="screenshot" />

### Git, Make und weiteres

Für die Installation der beiden Programme git und und make muss zunächst eine
Bash-Kommandozeile unter Verwendung von Windows Terminal geöffnet werden, zum Beispiel
über den oben beschriebenen Eintrag im Kontextmenü.   
Wie unten gezeigt wird in dieses Fenster nun der Befehl
```
sudo apt update
```
eingetragen. Und mit drücken der `Entertaste` bestätigt.
Die Ausführung dieses Befehls kann einige Zeit in Anspruch nehmen und setzt eine
Internetverbindung voraus über die einige 100MB große Datenmengen heruntergeladen
werden können.


Befehle die mit `sudo` beginnen erfordern besondere Zugriffsrechte. Daher muss zunächst immer
das Linux-Benutzerpasswort (**nicht** notwendigerweise das Windows-Benutzerpasswort) eingegeben werden.
(Wundert euch nicht, dass das Terminal in den folgenden Screenshots anders aussieht als euers.
Bis 2020 wurde das Programm ConEmu statt Windows Terminal verwendet)

<img alt="" src="/img/unix-tools-01.png" class="screenshot" />


Ein erfolgreiches Update sieht in etwa wie folgt aus, jedoch wird die ausgegebene Liste der Programme die geupdated
werden können beim ersten Ausführen wesentlich länger sein.

<img alt="" src="/img/unix-tools-02.png" class="screenshot" />

Die Updates müssen nun noch installiert werden, denn bisher wurden diese nur heruntergeladen.
Dies erfolgt durch Eingabe des Befehls
```
sudo apt upgrade
```
und auch dieser Befehl wird mit der `Entertaste` bestätigt.

<img alt="" src="/img/unix-tools-03.png" class="screenshot" />

Anschließend kann eine erneute Bestätigung durch Eingabe des Buchstabens `y` und drücken der
`Entertaste` nötig sein. (Auch hier wird die ausgegebene Liste wesentlich länger sein.)

<img alt="" src="/img/unix-tools-04.png" class="screenshot" />

Nun können die beiden Programme `git`, `make` und `curl` installiert werde. Dies erfolgt durch die Eingabe des
Befehls
```
sudo apt install git make curl
```
und anschließende Bestätigung mit der `Entertaste`. Auch dies Installation kann wieder etwas Zeit in Anspruch nehmen.

<img alt="" src="/img/unix-tools-05.png" class="screenshot" />

Eine erfolgreiche Installation, wie unten gezeigt, kann daran erkannt werden, dass keine Fehlermeldungen ausgegeben werden.

<img alt="" src="/img/unix-tools-06.png" class="screenshot" />


#### Git-Einstellungen

Für Git müssen noch ein paar Einstellungen vorgenommen werden. Dafür werden in die Bash-Kommandozeile wie zuvor
die folgenden Befehle eingegeben und jeweils mit der `Entertaste` bestätigt.

Anstelle von `Max Mustermann` sollte natürlich der **eigene Name** und auch die **eigene Email Adresse** verwendet werden!
```
git config --global user.name "Max Mustermann"
```
```
git config --global user.email "max.mustermann@tu-dortmund.de"
```
```
git config --global rebase.stat true
```
```
git config --global merge.conflictstyle diff3
```

Hier wurden absichtlich keine Screenshots eingefügt, damit der Umgang mit der Bash-Kommandozeile selbst geübt werden kann.
Falls noch Unsicherheit darüber besteht was mit den obigen Befehl angestellt werden soll, kann zunächst mit
der restlichen Anleitung (mit Bildern) fortgefahren werden. Diese Einstellung kann dann im Anschluss mit mehr Sicherheit nachgeholt werden.


### Anaconda

Anaconda ist eine Python-Distribution mit vorinstallierten Paketen für das wissenschaftliche Arbeiten.
Die Installationsdatei kann unter dem angegebenen Link herunter geladen werden.

[Anaconda Download](https://www.anaconda.com/products/individual#Downloads){:target="_blank"}

Auf der Website ist es wichtig das die Installationsdatei für **Linux** ausgewählt wird.
Außerdem soll die _x64-Bit_ Version der Python Version 3.8 verwendet werden. Diese kann mit einem
`Linksklick` auf den Schriftzug `64-Bit (x86) Installer (529 MB)` heruntergeladen werden.
Der Download kann einige Minuten in Anspruch nehmen.

<img alt="" src="/img/anaconda-0-2.png" class="screenshot" />

Um die Beschreibung der Installationsschritte etwas zu vereinfachen, sollte nun die heruntergeladene Datei,
deren Name mit _**Anaconda3**_ beginnt und auf _**.sh**_ endet, auf den Desktop kopiert werden.

<img alt="" src="/img/anaconda-02.png" class="screenshot" />

Im Anschluss wird mit Windows Terminal erneut eine Bash-Kommandozeile geöffnet.
In diese werden nacheinander die folgenden Befehle eingegeben und jeweils mit drücken der
`Entertaste` bestätigt.
```
cd Desktop
```
```
ls
```
Der erste Befehl ändert den aktuellen Pfad auf den Desktop.
Der aktuelle Pfad wird in blau vor dem _`$`_ angezeigt, dieser sollte nun auf `/Desktop` enden.
(Wurde für das öffnen der Bash-Kommandozeile der Eintrag im Kontextmenü auf dem Desktop verwendet,
so ist der erste Befehl nicht mehr notwendig.)

Der zweite Befehl zeigt alle Dateien an, die sich im aktuellen Pfad befinden.
In dieser Liste muss sich auch die zuvor auf den Desktop
kopierte Installationsdatei für Anaconda befinden (wie im Screenshot hervorgehoben).

Zum Installieren muss der folgende Befehl ausgeführt werden.
**Wichtig**: Der Dateiname muss mit dem Namen der heruntergeladenen Datei übereinstimmen.
Passt den Befehl an sollte dies nicht der Fall sein.
```
bash Anaconda3-2020.11-Linux-x86_64.sh -p ~/.local/anaconda3 -b
```

Wie zuvor wird auch dieser Befehl durch drücken der `Entertaste` bestätigt.

<img alt="" src="/img/anaconda-03.png" class="screenshot" />

Nun beginnt die Installation. Auch diese benötigt einige Minuten Zeit.

Zum Abschluss der Installation müssen noch die folgenden Befehle in die Kommandozeile eingegeben
und jeweils mit der `Entertaste` bestätigt werden. Wichtig: Die Reihenfolge der Befehle muss
eingehalten werden. Da hier besonders darauf geachtet werden muss, keinen Tippfehler zu machen,
empfiehlt es sich hier (mehr als sonst), die Befehle zu kopieren und einzufügen.

```
echo '. "$HOME/.local/anaconda3/etc/profile.d/conda.sh"' >> ~/.bashrc
```
```
echo 'conda activate' >> ~/.bashrc
```

<img alt="" src="/img/anaconda-04.png" class="screenshot" />

Wird nun die Bash-Kommandozeile geschlossen und eine neue geöffnet,
so sollte zu Begin der Eingabezeile nun _(base)_ stehen.

<img alt="" src="/img/anaconda-05.png" class="screenshot" />

Nach erfolgreicher Installation kann die Installationsdatei _Anaconda3-2020.11-Linux-x86_64.sh_
vom Desktop gelöscht werden.

__Jetzt noch die Python-Installation [updaten](#update) und anschließend [testen](#test)!__


### Uncertainties

Uncertainties ist eine Python-Bibliothek für automatisierte Fehlerrechnung. Detaillierte Informationen
können auf der verlinkten Website gefunden werden.

[Uncertainties Website](http://pythonhosted.org/uncertainties/)

Installiert werden kann Uncertainties über die Bash-Kommandozeile. In diese muss der folgende Befehl
eingetragen werden.

```
pip install uncertainties
```

<img alt="" src="/img/uncertainties-01.png" class="screenshot" />



### TeXLive

Im Terminal werden mit folgenden drei Befehlen das Installationsskript
herunterladen und ausgeführt.
```
cd ~/.local
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Die Installation startet man mit `I` und `Enter`.

Öffnet die Datei `~/.bashrc` und fügt folgende Zeile am Ende hinzu:

```
export PATH="$HOME/.local/texlive/2021/bin/x86_64-linux:$PATH"
```

Nach der Installation Terminal schließen und für die weiteren Schritte ein neues öffnen.

In dem neuen Terminal die folgenden Befehle eingeben:

```
tlmgr option autobackup -- -1
tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```

Falls diese Installation aufgrund von zu geringem Speicherplatz nicht funktioniert
gibt es [diese Möglichkeit](/install/latex_mini.html) eine minimale Version von
TeXLive zu installieren.

__Jetzt noch die Installation [testen](#test)!__

## <a id="test"></a>Testen

Sollte während des Testens ein Fehler auftreten, kann die [Problembehandlung](#troubleshooting) helfen.

### Python

Um die Python Installation (durch Anaconda) zu testen, sollten alle offenen Fenster der Bash-Kommandozeile
geschlossen und ein neues geöffnet werden.
Zusätzlich muss auch das Programm XLaunch über die zuvor angelegte Datei _Praktikum.xlaunch_ gestartet werden.

In die Bash-Kommandozeile werden nun nacheinander die folgenden Befehle eingeben. Nach Eingabe des ersten Befehls
wird sich das Erscheinungsbild der Kommandozeile etwas verändern.

```
ipython
```
```
In [1]: %matplotlib
In [2]: import matplotlib.pyplot as plt
In [3]: plt.plot([1, 2, 4])
```

Es sollte ein Fenster mit einem Koordinatensystem und einer eingezeichneten Linie erscheinen.
Mit
```
In [4]: quit
```
kann das Programm _ipython_ beendet werden



### Uncertainties

Auch Uncertainties wird über die Bash-Kommandozeile getestet. In diese werden die folgenden Befehle
nacheinander eingegeben. Nach Eingabe des ersten Befehls wird sich das Erscheinungsbild der Kommandozeile etwas verändern.

```
ipython
In [1]: import uncertainties
In [2]: quit
```

Es sollte keine Fehlermeldung erscheinen.

### Make

Make kann durch öffnen einer Bash-Kommandozeile und durch eingeben des folgenden Befehls getestet werden.

```
make
```

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:
```
    make: *** No targets specified and no makefile found.  Stop.
```

### TeXLive

Die TeXLive Installation wird ebenfalls unter Verwendung der Bash-Kommandozeile getestet.
In diese wird der folgende Befehl eingegeben.

```
luatex
```

Es sollte folgende Ausgabe erscheinen:

```
This is LuaTeX, Version 1.13.0 (TeX Live 2021)
restricted system commands enabled.
**
```

Diese kann mit drücken der Tastenkombination `Strg-C` (`Strg` und `C`) beendet werden.
Nun wird ein weiteres Program getestet, das von LaTeX verwendet wird. Dies wird durch
Eingabe des Befehls
```
biber
```
erreicht.

Es sollte die Biber-Hilfe erscheinen.
```
Usage:
      biber [options] file[.bcf]
      biber [options] --tool <datasource>

      Creates "file.bbl" using control file "file.bcf" (".bcf" extension is
      optional). Normally use with biblatex requires no options as they are
      all set in biblatex and passed via the ".bcf" file

      In "tool" mode (see B<--tool> option), takes a datasource (defaults to
      "bibtex" datasource) and outputs a copy of the datasource with any command-line
      or config file options applied.

      Please run "biber --help" for option details
```

Zuletzt wird noch das Programm zur Betrachtung von Paket-Dokumentationen getestet.
Für diesen Test muss das Programm XLaunch gestartet worden sein.   
Der Test-Befehl lautet:
```
texdoc texlive
```

Es sollte nun die Dokumentation von TeXLive in einem PDF-Betrachter geöffnet werden.
Falls das nicht der Fall ist und die Fehlermeldung
_error: no "view" mailcap rules found for type "application/pdf"_
erscheint, kann dieser Fehler mit der Eingabe des Befehls
```
sudo apt install evince
```
behoben werden.

## <a id="update"></a>Aktualisieren

### Anaconda

Um Updates für Anaconda zu installieren wird in einer Bash-Kommandozeile folgender Befehl eingetragen.
```
conda update anaconda
```
### Uncertainties

Für Updates für die Python-Bibliothek Uncertainties wird folgender Befehl in eine Bash-Kommandozeile eingegeben.

```
pip install -U uncertainties
```

### Git, Make und weitere Unix-Tools

Um Updates für dies sogenannten Unix-Tools (Software für die Bash-Kommandozeile) zu erhalten
müssen wie schon nach der Installation nacheinander die beiden folgenden Befehle in eine
Bash-Kommandozeile eingegeben werden.
```
sudo apt update
```
```
sudo apt upgrade
```


### TeXLive

Die Updates für TeXLive werden durch eingeben des folgenden Befehls in eine Bash-Kommandozeile installiert.
```
tlmgr update --self --all --reinstall-forcibly-removed
```

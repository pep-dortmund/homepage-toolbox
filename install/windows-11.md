---
layout: default
title: Windows-11-Installation α-build
---
<span style="color:crimson"> __Aktuell überarbeiten wir die Anleitungen für Windows 10 & 11!__ </span>


__Es treten vermehrt Probleme in der Internetanknüpfung vom WSL2 unter Windows 11 auf, wenn möglich erstmal auf Windows 10 bleiben.__

__Es müssen alle drei Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist TeXLive optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens Sumatra und VSCodium (oder einen anderen Texteditor) und TeXLive installieren.
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
Wenn im Fenster oben nicht _Windows PowerShell_, kann über den Pfeil nach unten die `Windows PowerShell` geöffnet werden.
Trage
```
wsl --install -d Ubuntu
```
ein und führe den _Befehl_ mit `Enter` aus.
Tritt der Fehler _0x80370102_ auf, folgt den Hinweisen auf [dieser Seite](
https://thefilibusterblog.com/ispravit-oshibku-0x80370102-wsl2-ne-zapuskaet-ubuntu-v-windows-11/).
Der Rechner muss nach erfolgreicher Installation neu gestartet werden.

#### Einrichten eines Benutzerkontos

Nach dem Neustart erscheint folgendes Fenster mit der Aufforderung, einen Benutzernamen für
das Linux-Betriebssystem einzugeben. Erscheint dieses Fenster nicht automatisch, muss `Win + s` gedrückt werden, dann `Ubuntu` eingeben und mit `Enter` starten.

<img alt="" src="/img/windows-ubuntu/wsl-install-1.png" class="screenshot" />

Gebt einen Nutzernamen an. Dieser Linux-Benutzername kann frei gewählt werden.
Der Linux-Benutzername __kann, muss aber nicht,__
mit dem Windows-Benutzernamen übereinstimmen.
Die Eingabe des Benutzernamens wird mit Drücken der `Enter`-Taste bestätigt.

<img alt="" src="/img/windows-ubuntu/wsl-install-2.png" class="screenshot" />

Im Anschluss wird auch nach einem Passwort für das Linux-Betriebssystem gefragt.
Aus Sicherheitsgründen, wird das eingegebene Passwort nicht angezeigt.
Die Eingabe wird durch Drücken der `Enter`-Taste bestätigen.

<img alt="" src="/img/windows-ubuntu/wsl-install-3.png" class="screenshot" />

Im Anschluss muss das Passwort erneut eingegeben werden, um Tippfehler auszuschließen.
Auch diese Eingabe wird wieder mit der `Enter`-Taste bestätigt.
Sollte die Eingabe des zweiten Passworts nicht mit dem ersten übereinstimmen,
so muss dieses erneut (zweimal) eingegeben werden.

<img alt="" src="/img/windows-ubuntu/wsl-install-4.png" class="screenshot" />

Ist die Installation erfolgreich durchgeführt worden,
erhält man die im Screenshot gezeigte Ausgabe.
Die unterste Zeile besteht aus zwei Teilen.
Die Information vor dem Doppelpunkt setzt sich dabei aus dem Benutzernamen und dem Computernamen zusammen.
Der Teil nach dem Doppelpunkt besteht aus einer Tilde `~` und einem Dollarzeichen `$`.
Dies ist der typische Aufbau der Linux-Kommandozeile `bash`, die maßgeblich zur Interaktion
mit dem Linux-Betriebssystem verwendet wird. Eine Einführung in den Umgang erfolgt während
des Workshops, im Folgenden wird diese jedoch schon zur
Installation der benötigten Software verwendet.



### Windows Terminal
Das Windows Terminal stellt einen Ersatz der Standard WSL-Kommandozeile dar.
Wir haben es ganz zu Anfang der Anleitung schon benutzt.
Wir möchten es für unsere Zwecke noch anpassen.
Starte es dazu erneut.

Standardmäßig wird mit dem Windows Terminal die Windows PowerShell geöffnet. Um eine Ubuntu-Kommandozeile zu öffnen,
klickt zunächst oben im Fenster auf den Pfeil nach unten, es öffnet sich ein Dropdown-Menü:

<img alt="" src="/img/windows-terminal/windows-terminal-3.png" class="screenshot" />

Klickt auf _Einstellungen_/_Settings_ um die Einstellungen zu öffnen.
Hier könnt ihr einstellen, dass sich beim Start von Windows Terminal
standardmäßig Ubuntu öffnet.
Unter dem Punkt _Startup_ → _Default Profile_ muss _Ubuntu_ ausgewählt werden.
Speichert die Änderungen dann ab.

<img alt="" src="/img/windows-terminal/windows-terminal-4.png" class="screenshot" />

### Dateiendungen einschalten

Die Endungen einer Datei sind unter Windows nicht Standardmäßig aktiviert.
Diese können und sollen aktiviert werden.

Dafür wird in der Taskleiste auf das Windows-Symbol, oder die Lupe geklickt und `Dateien` eingegeben.

<img alt="" src="/img/explorer/explorer-1.png" class="screenshot" />

In der obersten Zeile gibt es den Punkt `Ansicht`, das Kästchen für den Punkt `Dateinamenerweiterungen` muss ausgewählt werden.

<img alt="" src="/img/explorer/explorer-2.png" class="screenshot" />

### Visual Studio Code

Visual Studio Code (VSCode) ist ein Text-Editor der sowohl zum schreiben von Programm-Code in Python als auch Texten in LaTeX geeignet ist.
Drüber hinaus hat dieser auch noch viele weitere Funktionen.
Die Installationsdatei `VSCodiumSetup-x64-<VERSION>.exe` kann unter dem folgenden Link heruntergeladen werden:

[Download VSCodium](https://github.com/VSCodium/vscodium/releases){:target="_blank"}

In den aufploppenden Setup-Fenstern können bis zum Fenster mit dem Titel `Zusätzliche Aufgaben auswählen` die Standard-Optionen gewählt werden.
Die ersten vier Optionen sind nach persönlichen Vorlieben zu wählen.
Die fünfte Option _**Zu PATH hinzufügen**_ soll gewählt werden.

Neben dem Funktionsumfang, den VSCode von sich aus mitbringt, können zusätzliche Extensions installiert werden,
um weitere Funktionen hinzuzufügen. Der Prozess wird hier an dem einzigen Plugin vorgeführt, das
(in der zweiten Woche) für den Workshop benötigt wird. Das Plugin heißt _LaTeX language support_ und sorgt
für die farbliche Darstellung (Syntax Highlighting) von LaTeX Dokumenten, die mit VSCode geöffnet werden.

Ein `Linksklick` auf die unterste Schaltfläche am linken Rand öffnet das _Extensions_ Menü.

<img alt="" src="/img/vscodium/vscode-1.png" class="screenshot" />

In diesem Menü können alle _Extensions_ durchsucht werden. Nach Eingabe von _LaTeX language_
in das Eingabefeld wird die Extension _LaTeX language support_ in der Liste angezeigt. **Wichtig** ist,
dass der Name der Extension übereinstimmt, die Position in der angezeigten Liste ist nicht ausschlaggebend.
Es ist möglich, dass die Extension zu einem späteren Zeitpunkt nicht mehr das oberste Ergebnis in der Liste ist.

Eine Beschreibung der Funktion der Extension kann in einem neuen Tab angezeigt werden,
indem mit einem `Linksklick` auf einen Listeneintrag geklickt wird.
Installiert wird die Extension durch einen `Linksklick` auf die Schaltfläche _Install_.

<img alt="" src="/img/vscodium/vscode-2.png" class="screenshot" />

Nach der Installation von neuen Extensions muss VSCode geschlossen und neu gestartet werden.

Nach erfolgreicher Installation wird die Extension (zusammen mit allen anderen installierten Extensions)
in der Liste _ENABLED_ aufgeführt, die angezeigt wird, wenn das Eingabefeld der Suche leer ist.

<img alt="" src="/img/vscodium/vscode-3.png" class="screenshot" />


Auch wenn es vielleicht ungewohnt ist, kann es von Vorteil sein, Software mit englischen Spracheinstellungen
zu verwenden. Um die Spracheinstellungen von VSCode zu ändern, müssen die folgenden Schritte befolgt werden.
Diese sind **nicht** nötig, wenn die Sprache bereits auf Englisch eingestellt ist oder eine Änderung der
Sprache nicht gewünscht ist.

Zum Öffnen der Spracheinstellungen muss zunächst die Taste `F1` gedrückt werden. Dies öffnet ein
Eingabefenster, in dem nach Einstellungen gesucht werden kann.

<img alt="" src="/img/vscodium/vscode-4.png" class="screenshot" />

Hier muss nun nach _Configure Display Language_ gesucht werden. Die Einstellung kann dann durch Drücken
der `Entertaste` ausgewählt werden.

<img alt="" src="/img/vscodium/vscode-5.png" class="screenshot" />

Viele Programme verwenden Textdateien, um Einstellungen zu speichern. Die Details sind an dieser
Stelle aber noch nicht von Belang. In dieser Datei muss die Abkürzung der eingestellten Sprache,
`"de"` (Deutsch) auf `"en"`(Englisch) geändert werden. Danach muss die Datei mit `Strg + S` gespeichert
werden. Die Änderung der Sprache tritt erst nach dem Schließen und Neustarten von VSCode in Kraft.

<img alt="" src="/img/vscodium/vscode-6.png" class="screenshot" />

Mit `Strg + Shift + ö` oder über den Punkt _Terminal → Neues Terminal_
kann ein Terminal in VSCodium geöffnet werden. Klickt rechts auf den Pfeil nach unten,
neben dem `+`, und wählt den Punkt _Select Default Profile_ aus.
Dort dann auf den Punkt _Ubuntu-20.04 (WSL)_ klicken.

<img alt="" src="/img/vscodium/vscode-7.png" class="screenshot" />

### Sumatra PDF

Als PDF-Betrachter sollte Sumatra PDF verwendet werden.
Die Verwendung von Acrobat Reader wird nicht empfohlen, da er die PDF-Datei blockiert,
sodass sie nicht von TeX überschrieben werden kann (warum das wichtig ist, erfährt man im Kurs).
Den Download findet man unter dem folgenden Link.

[Sumatra Download](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html){:target="_blank"}

Auf der Download-Seite kann dann die `x64` Version von Sumatra PDF mit einem `Linksklick` auf den
hervorgehobenen Link heruntergeladen werden.

<img alt="" src="/img/sumatra/sumatra-1.png" class="screenshot" />


Durch einen doppelten `Linksklick` kann die heruntergeladene Datei ausgeführt werden.
Infolgedessen öffnet sich das folgende Fenster. Vor der Installation werden durch einen `Linksklick`
die _Optionen_ geöffnet.
In diesem Fenster kann zum einen der Installationspfad angepasst werden. Dies ist jedoch __optional__, der
bereits eingetragene Dateipfad ist kann unverändert bleiben.
Im Anschluss kann Sumatra PDF mit einem `Linksklick` auf _Installieren_ installiert werden.

Starte Sumatra und öffne das Optionsmenü wie im Screenshot gezeigt.

<img alt="" src="/img/sumatra/sumatra-2.png" class="screenshot" />

Wähle dann die untere Option aus, Sumatra als Standard PDF-Betrachter zu nutzen.

<img alt="" src="/img/sumatra/sumatra-3.png" class="screenshot" />

### Git, Make und weiteres

Für die Installation der beiden Programme git und make muss zunächst eine
Bash-Kommandozeile unter Verwendung von Windows Terminal geöffnet werden, zum Beispiel
über den oben beschriebenen Eintrag im Kontextmenü.
Wie unten gezeigt wird in dieses Fenster nun der Befehl
```
sudo apt update
```
eingetragen und mit Drücken der `Entertaste` bestätigt.
Die Ausführung dieses Befehls kann einige Zeit in Anspruch nehmen und setzt eine
Internetverbindung voraus, über die einige 100 MB große Datenmengen heruntergeladen
werden können.


Befehle, die mit `sudo` beginnen, erfordern besondere Zugriffsrechte. Daher muss zunächst immer
das Linux-Benutzerpasswort (**nicht** notwendigerweise das Windows-Benutzerpasswort) eingegeben werden.

<img alt="" src="/img/unix/unix-1.png" class="screenshot" />


Ein erfolgreiches Update sieht in etwa wie folgt aus, jedoch wird die ausgegebene Liste der Programme die geupdated
werden können beim ersten Ausführen wesentlich länger sein.

<img alt="" src="/img/unix/unix-2.png" class="screenshot" />

Die Updates müssen nun noch installiert werden, denn bisher wurden diese nur heruntergeladen.
Dies erfolgt durch Eingabe des Befehls
```
sudo apt upgrade
```
und auch dieser Befehl wird mit der `Entertaste` bestätigt.
Anschließend kann eine erneute Bestätigung durch Eingabe des Buchstabens `y` und drücken der
`Entertaste` nötig sein. (Auch hier wird die ausgegebene Liste wesentlich länger sein.)

<img alt="" src="/img/unix/unix-3.png" class="screenshot" />

Nun können die beiden Programme `git`, `make` und `curl` installiert werde. Dies erfolgt durch die Eingabe des
Befehls
```
sudo apt install git make curl
```
und anschließende Bestätigung mit der `Entertaste`. Auch diese Installation kann wieder etwas Zeit in Anspruch nehmen.

<img alt="" src="/img/unix/unix-4.png" class="screenshot" />

Eine erfolgreiche Installation, wie unten gezeigt, kann daran erkannt werden, dass keine Fehlermeldungen ausgegeben werden.

<img alt="" src="/img/unix/unix-5.png" class="screenshot" />


#### Git-Einstellungen

Für Git müssen noch ein paar Einstellungen vorgenommen werden. Dafür werden in die Bash-Kommandozeile wie zuvor
die folgenden Befehle eingegeben und jeweils mit der `Entertaste` bestätigt.

Anstelle von `Max Mustermann` sollte natürlich der **eigene Name** und auch die **eigene E-Mail-Adresse** verwendet werden!
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
Falls noch Unsicherheit darüber besteht, was mit dem obigen Befehl angestellt werden soll, kann zunächst mit
der restlichen Anleitung (mit Bildern) fortgefahren werden. Diese Einstellung kann dann im Anschluss mit mehr Sicherheit nachgeholt werden.


### Python Installation: Mambaforge

Hier müssen im Terminal die folgenden Zeilen eingegeben werden:
```bash
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh -p ~/.local/mambaforge -b
source "${HOME}/.local/mambaforge/etc/profile.d/conda.sh"
source "${HOME}/.local/mambaforge/etc/profile.d/mamba.sh"
mamba activate
mamba init ${0//-}
```
Damit ist die allgemeine Python Umgebung installiert.
Jetzt muss noch eine spezielle Python Umgebung für den Toolbox Workshop installiert werden.
```bash
mamba create -y -n toolbox numpy matplotlib scipy uncertainties sympy jupyterlab ipython
```
Diese startet ihr mit
```bash
mamba activate toolbox
```

### TeXLive

Im Terminal werden mit folgenden drei Befehlen das Installationsskript
heruntergeladen und ausgeführt.
```
cd ~/.local
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Die Installation startet man mit `I` und `Enter`.

Nach der Installation muss dem System mitgeteilt werden, wo LaTeX installiert wurde,
das machen wir in der Datei `~/.bashrc`.
Führe dazu folgenden Befehl im Terminal aus:

```
echo 'export PATH="$HOME/.local/texlive/2022/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Jetzt einmal das Terminal schließen und für die weiteren Schritte ein neues öffnen.

In dem neuen Terminal die folgenden Befehle eingeben:

```
tlmgr option autobackup -- -1
tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```

Falls diese Installation aufgrund von zu geringem Speicherplatz nicht funktioniert,
gibt es [diese Möglichkeit](/install/latex_mini.html), eine minimale Version von
TeXLive zu installieren.

__Jetzt noch die Installation [testen](#test)!__

## <a id="test"></a>Testen

Sollte während des Testens ein Fehler auftreten, kann die [Problembehandlung](#troubleshooting) helfen.

### Python

Um die Python Installation zu testen, sollten alle offenen Fenster der Bash-Kommandozeile
geschlossen und ein neues geöffnet werden.

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

Make kann durch Öffnen einer Bash-Kommandozeile und durch Eingeben des folgenden Befehls getestet werden.

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
This is LuaTeX, Version 1.15.0 (TeX Live 2022)
restricted system commands enabled.
**
```

Diese kann mit Drücken der Tastenkombination `Strg-C` (`Strg` und `C`) beendet werden.
Nun wird ein weiteres Programm getestet, das von LaTeX verwendet wird. Dies wird durch
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
```bash
sudo apt install evince
```
behoben werden.

## <a id="update"></a>Aktualisieren

### Python Updates: Mambaforge

Um Updates für Mambaforge zu installieren wird in einer Bash-Kommandozeile folgender Befehl eingetragen.
```bash
mamba update --all
```

### Git, Make und weitere Unix-Tools

Um Updates für diese sogenannten Unix-Tools (Software für die Bash-Kommandozeile) zu erhalten,
müssen wie schon nach der Installation nacheinander die beiden folgenden Befehle in eine
Bash-Kommandozeile eingegeben werden.
```
sudo apt update
```
```
sudo apt upgrade
```


### TeXLive

Die Updates für TeXLive werden durch Eingeben des folgenden Befehls in eine Bash-Kommandozeile installiert.
```
tlmgr update --self --all --reinstall-forcibly-removed
```

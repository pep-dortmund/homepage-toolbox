---
layout: default
title: Windows-Installation
---

Wir empfehlen die Installation einer 64-bit Version, falls man ein 64-bit Betriebssystem benutzt.
Wenn man sich nicht sicher ist, hat man heutzutage fast immer 64-bit.


__Es müssen alle Schritte (Installieren, Testen, Aktualisieren) ausgeführt werden!__

Falls man nicht am LaTeX-Kurs teilnimmt, ist TeXLive optional.
Dann kann man allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls man nur am LaTeX-Kurs teilnehmen will, sollte man mindestens Sumatra und VSCode (oder einen anderen Texteditor) und TeXLive installieren.
Dann ist mit Terminal die Windows-Konsole gemeint (wenig bequem).

Diese Installation verwendet das [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10),
um eine Ubuntu Installation verwenden zu können ohne ein komplett neues Betriebssystem installieren zu müssen.

__Die Installationsanleitung wirkt lang, das liegt daran, dass
wir jeden Schritt erklären und fast immer Screenshots eingefügt haben.__

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

Findet heraus, ob ihr ein 64- oder 32-bit Betriebssystem habt.
Hierfür klickt man auf das Windows-Symbol und dann auf das Zahnrad, um die Einstellungen zu öffnen.

<img alt="" src="/img/windows-installation/windows-0.PNG" class="screenshot"/>

Dann wählt man den ersten Punkt `System` aus. In der Liste am linken Rand lautet der letzte Punkt `Info`.
Unter dem Schlagwort `Systemtyp` kann die Art des Betriebssystem gesehen werden.

<img alt="" src="/img/windows-installation/windows-1.PNG" class="screenshot" />

**Wichtig: Befehle im Terminal Zeile für Zeile eingeben und mit Enter bestätigen**

### Windows Subsystem for Linux (WSL)

#### Aktivierung des WSL
Zunächst muss eine Powershell Konsole als Administrator gestartet werden. Eine Möglichkeit dafür
bietet die im Bild gezeigte Suche (die Lupe in der Startleiste), in dem in diese der Suchbegriff
_Powershell_ eingegeben wird. Alternativ kann auch im Startmenü (Windows-Symbol in der Startleiste)
gesucht werden. Öffnet man dieses mit einem `Linksklick`, so öffnet sich die Suche nachdem man einen
Buchstaben über die Tastatur eingibt.

<img alt="" src="/img/wsl-0.png" class="screenshot" />

Mit einem `Rechtsklick` auf _Windows PowerShell_
das Kontextmenü zu öffnen. Dann kann die Anwendung mit `Linksklick` auf _Als Administrator ausführen_
gestartet werden.

<img alt="" src="/img/wsl-1.png" class="screenshot" />

In den meisten Fällen wird das folgende Fenster erscheinen. Dieser kann einfach _Ja_ bestätigt werden.
Es ist kein Problem, wenn dieses Fenster nicht erscheint.

<img alt="" src="/img/wsl-2.png" class="screenshot" />

Nun öffnet sich eine Fenster wie unten zusehen, dies ist die Powershell Konsole.
Um sicher zugehen, dass eine Powershell mit Administrator-Rechten geöffnet wurde,
kann der Titel des Fensters überprüft werden, dieser muss mit _Administrator:_ beginnen.

<img alt="" src="/img/wsl-3.png" class="screenshot" />

In die Powershell muss nun der folgende Befehl eingegeben werden. Dieser kann auch kopiert
und eingefügt werden, einfügen funktioniert in der Powershell mit einem `Rechtsklick`.
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux   
```
<img alt="" src="/img/wsl-4.png" class="screenshot" />

Durch drücken der `Enter`-Taste wird die Eingabe bestätigt.

Die darauf folgende Abfrage ob der Computer neu gestartet werden soll,
kann durch einen weiteren Druck auf die `Enter`-Taste bestätigt werden.

<img alt="" src="/img/wsl-6.png" class="screenshot" />

Nachdem der Computer neu gestartet wurde ist das WSL nun aktiviert.
Der nächste Schritt ist die Auswahl der Linux Variante, die in diesem
Subsystem installiert werden soll.

#### Installation der Linux Variante Ubuntu

Die Auswahl aller verfügbaren Versionen findet sich auf dieser Seite:   
[https://docs.microsoft.com/en-us/windows/wsl/install-win10](https://docs.microsoft.com/en-us/windows/wsl/install-win10#fall-creators-update-and-later-install-from-the-microsoft-store).

Die Anzahl der verfügbaren Versionen kann sich im Vergleich zum Screenshot geändert haben.
Dies ist jedoch kein Problem, die im Folgenden verwendete Variante ist __Ubuntu__.
(Stand 20.07.2020 ist die neueste Version: __Ubuntu 20.04 LTS__)
Ausgewählt wird diese, mit einem `Linksklick` auf den entsprechenden Listeneintrag.

<img alt="" src="/img/windows-installation/windows-2.PNG" class="screenshot" />

Es öffnet sich ein neues Fenster des Microsoft-Stores. Durch `Linksklick` auf die
Schaltfläche _Herunterladen_ wird der Download begonnen.  

<img alt="" src="/img/wsl-8.png" class="screenshot" />

Der Download lädt einige 100 Megabyte an Daten herunter und kann einige Minuten in Anspruch nehmen.

<img alt="" src="/img/wsl-9.png" class="screenshot" />

Nachdem der Download abgeschlossen ist, kann die Installation, durch einen `Linksklick`
auf die Schaltfläche _Starten_ gestartet werden.

<img alt="" src="/img/wsl-10.png" class="screenshot" />

Auch diese Installation kann einige Minuten in Anspruch nehmen.

<img alt="" src="/img/wsl-11.png" class="screenshot" />

#### Einrichten eines Benutzerskontos

Nach erfolgreicher Installation erscheint die Aufforderung einen Benutzernamen für
das Linux-Betriebssystem einzugeben.

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

Das Windows Terminal stellt einen Ersatz der standard WSL-Kommandozeile dar. Für die Installation
des Programms benötigt ihr mindestens die Windows-Version 18362.0. Ihr könnt eure Windows-Version
unter Start/Einstellungen/System/Info überprüfen. Dort findet ihr unter Windows-Spezifikationen eine Nummer
neben Betriebssystembuild, die größer oder gleich 18362.0 sein muss. Falls eure Version zu alt ist, könnt ihr unter
Start/Einstellungen/Update-und-Sicherheit/Windows-Update ein System-Update durchführen.

Das Windows Terminal könnt ihr unter folgendem Link herunter laden und anschließend installieren:

[Windows Terminal](https://www.microsoft.com/de-de/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab).

Nach der Installation startet das Programm. Erscheint folgendes Fenster:

<img alt="" src="/img/windows_terminal_01.png" class="screenshot" />

Standardmäßig wird mit dem Windows Terminal die Windows PowerShell geöffnet. Um eine Ubuntu-Kommandozeile zu öffnen,
klickt zunächst oben im Fenster auf den Pfeil nach unten, es öffnet sich ein Dropdown-Menü:

<img alt="" src="/img/windows_terminal_02.png" class="screenshot" />

Klickt auf Ubuntu um eine einen neuen Tab mit der Ubuntu-Kommandozeile zu öffnen. Ihr könnt einstellen, dass sich beim Start von Windows Terminal
standardmäßig Ubuntu öffnet.
Mit `Strg + ,` können die Einstellungen geöffnet werden,
der erste Punkt ist _Default profile_, dort kann auf *Ubuntu* gewechselt werden.



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

Neben dem Funktionsumfang, den VSCode von sich aus mitbringt können zusätzliche Extensions installiert werden,
um weitere Funktionen hinzuzufügen. Der Prozess wird hier an dem einzigen Plugin vorgeführt, das
(in der zweiten Woche) für den Workshop benötigt wird. Das Plugin heißt _LaTeX language support_ und sorgt
für die farbliche Darstellung (Syntax Highlighting) von LaTeX Dokumenten, die mit VSCode geöffnet werden.

Ein `Linksklick` auf die unterste Schaltfläche am linken Rand öffnet das _Extensions_ Menü.

<img alt="" src="/img/vscode-12.png" class="screenshot" />

In diesem Menü können alle _Extensions_ durchsucht werden. Nach Eingabe von _LaTeX language_ in die
in das Eingabefeld wird die Extension _LaTeX language support_ in der Liste angezeigt. **Wichtig** ist,
dass der Name der Extension übereinstimmt, die Position in der angezeigten Liste ist nicht ausschlaggebend.
Es ist möglich das die Extension zu einem späteren Zeitpunkt nicht mehr das oberste Ergebnis in der Liste ist.

Eine Beschreibung der Funktion der Extension, kann in einem neuen Tab angezeigt werden,
indem mit einem `Linksklick` auf einen Listeneintrag geklickt wird.
Installiert wird die Extension durch einen `Linksklick` auf die Schaltfläche _Install_.

<img alt="" src="/img/vscode-13.png" class="screenshot" />

Nach der Installation von neuen Extensions muss VSCode geschlossen und neu gestartet werden.

Nach erfolgreicher Installation wird die Extension (zusammen mit allen anderen installierten Extensions)
in der Liste _ENABLED_ aufgeführt, die angezeigt wird, wenn das Eingabefeld der Suche leer ist.

<img alt="" src="/img/vscode-15.png" class="screenshot" />

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

Mit `Strg + Shift + ö` oder über den Punkt _Terminal_ → _Neues Terminal_ kann ein Terminal in VSCodium geöffnet werden.
Klickt rechts auf den Pfeil nach unten, neben dem `+`,
und wählt den Punkt _Select Default Profile_ aus.
Dort dann auf den Punkt _Ubuntu-20.04 (WSL)_ klicken.

<img alt="" src="/img/vscode-19.png" style="width: 100%;" />

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


### X-Server
Da das WSL nur Zugriff über die Kommandozeile erlaubt muss ein weiteres Programm installiert werden,
um grafische Benutzeroberflächen (GUIs) anzeigen zu können. Die Installationsdatei kann unter dem
folgenden Link heruntergeladen werden.

[X-Server Download](https://sourceforge.net/projects/vcxsrv/)

Dies wird mit einem `Linksklick` auf die unten hervorgehobene Schaltfläche _Download_ erreicht.

<img alt="" src="/img/xserver-0.png" class="screenshot" />


Durch einen doppelten `Linksklick` kann die heruntergeladen Datei ausgeführt werden.
Infolgedessen kann das folgende Fenster erscheinen, welches mit einem `Linksklick` auf
_Ja_ bestätigt werden muss.

<img alt="" src="/img/xserver-1.png" class="screenshot" />

Im nachfolgenden Fenster kann nun der Umfang der Installation ausgewählt werden. Hier ist _Full_ auszuwählen.
Die Auswahl wird durch einen `Linksklick` auf _Next_ bestätigt.

<img alt="" src="/img/xserver-2.png" class="screenshot" />

Im folgenden Fenster kann der Installationspfad angepasst werden. Dies ist optional und der bereits
eingetragene Pfad kann durch einen `Linksklick` auf _Install_ unverändert bestätigt werden.


<img alt="" src="/img/xserver-3.png" class="screenshot" />

Nach vollständiger Installation, kann diese mit einem `Linksklick` auf _Close_ abgeschlossen werden.

<img alt="" src="/img/xserver-4.png" class="screenshot" />

Auf dem Desktop befindet sich nun die unter dargestellte Verknüpfung mit dem Namen _XLaunch_.
Durch einen doppelten `Linksklick` kann das Programm nun gestartet werden.

<img alt="" src="/img/xserver-5.png" class="screenshot" />

Vor dem Start des Programms müssen einige Einstellungen vorgenommen werden. Zunächst wird hier
_Multiple Window_ ausgewählt und mit einem `Linksklick` auf _Weiter_ bestätigt.

<img alt="" src="/img/xserver-6.png" class="screenshot" />

Im nächsten Fenster wird die Option _Start no client_ ausgewählt und ebenfalls mit einem `Linksklick`
auf _Weiter_ bestätigt.

<img alt="" src="/img/xserver-7.png" class="screenshot" />

Im letzten Einstellungs-Fenster werden alle vier Optionen ausgewählt und abschließend mit einem
`Linksklick` auf _Weiter_ bestätigt.

<img alt="" src="/img/xserver-9.png" class="screenshot" />

Nun können die vorgenommenen Einstellungen gespeichert werden. Der entsprechende Dialog wird
durch einen `Linksklick` auf _Save configuration_ geöffnet.

<img alt="" src="/img/xserver-10.png" class="screenshot" />

Die entsprechende Datei kann nach eigenem Belieben benannt werden und auch der Speicherort ist freiwählbar.
Hier wird als Speicherort der _Desktop_ und als Dateiname _Praktikum.xlaunch_ ausgewählt.

<img alt="" src="/img/windows-installation/windows-10.PNG" class="screenshot" />

Nun kann die Einstellung des Programms mit einem `Linksklick` auf _Fertig stellen_ abgeschlossen
und das Programm gestartet werden.

<img alt="" src="/img/xserver-12.png" class="screenshot" />


Nach dem ersten Ausführen kann folgendes Fenster erscheinen,
dieses muss mit einem `Linksklick` auf _Abbrechen_ abgelehnt werden.

<img alt="" src="/img/xserver-13.png" class="screenshot" />

Das Programm _XLaunch_ selbst öffnet zunächst keine Fenster. Das das Programm gestartet wurde lässt
sich an einem Icon in der Taskleiste (in der Nähe der Uhrzeit) erkennen. Sollte das Icon nicht
zusehen sein, kann ein `Linksklick` auf den nach unter (oder oben) gerichteten Pfeil nötig sein.

<img alt="" src="/img/xserver-14.png" class="screenshot" />


Am zuvor ausgewählten Speicherort für die Einstellungen,
befindet sich die unten hervorgehobene Datei mit dem zuvor ausgewählten Namen.
Mit einem doppelten `Linksklick` auf diese Datei kann von nun an das Programm _XLaunch_
gestartet werden ohne die Einstellungen erneut vornehmen zu müssen.

<img alt="" src="/img/xserver-15.png" class="screenshot" />


Um den XServer verwenden zu können muss noch eine Einstellung unter Verwendung der Bash-Kommandozeile
vorgenommen werden.
Dafür wird Windows Terminal geöffnet und der Befehl
```
echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
```
eingegeben und mit einem Druck auf die `Entertaste` ausgeführt.



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

<img alt="" src="/img/unix-tools-1.png" class="screenshot" />

Anschließend kann eine erneute Bestätigung durch Eingabe des Buchstabens `y` und drücken der
`Entertaste` nötig sein. (Auch hier wird die ausgegebene Liste wesentlich länger sein.)

<img alt="" src="/img/unix-tools-03.png" class="screenshot" />

Nun können die beiden Programme `git`, `make` und `curl` installiert werde. Dies erfolgt durch die Eingabe des
Befehls
```
sudo apt install git make curl
```
und anschließende Bestätigung mit der `Entertaste`. Auch dies Installation kann wieder etwas Zeit in Anspruch nehmen.

<img alt="" src="/img/unix-tools-2.png" class="screenshot" />

Eine erfolgreiche Installation, wie unten gezeigt, kann daran erkannt werden, dass keine Fehlermeldungen ausgegeben werden.

<img alt="" src="/img/unix-tools-3.png" class="screenshot" />


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

<img alt="" src="/img/anaconda-1.png" class="screenshot" />

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

<img alt="" src="/img/windows-installation/windows-11.PNG" class="screenshot" />

Nun beginnt die Installation. Auch diese benötigt einige Minuten Zeit.

<img alt="" src="/img/windows-installation/windows-12.PNG" class="screenshot" />

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

<img alt="" src="/img/anaconda-19.png" class="screenshot" />

Wird nun die Bash-Kommandozeile geschlossen und eine neue geöffnet,
so sollte zu Begin der Eingabezeile nun _(base)_ stehen.

<img alt="" src="/img/anaconda-20.png" class="screenshot" />

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

<img alt="" src="/img/uncertainties-0.png" class="screenshot" />



### TeXLive

TeXLive ist die TeX-Distribution, welche in diesem Workshop verwendet wird. Weitere Informationen und
eine detaillierte Installationsanleitung können unter den folgenden Links eingesehen werden.
+ [TeXLive Website](https://www.tug.org/texlive/)
+ [Installationsanleitung](https://www.tug.org/texlive/windows.html)


Für die Installation wird erneut die Bash-Kommandozeile (mit Windows Terminal) verwendet.
In diese werden nacheinander die folgenden Befehle eingegeben und jeweils mit drücken der
`Entertaste` bestätigt.

```
cd ~/.local
```
```
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
```
```
TEXLIVE_INSTALL_PREFIX=$HOME/.local/texlive ./install-tl-*/install-tl
```

Der erste Befehl ändert den aktuellen Pfad auf den Ordner in den TeXLive installiert werden soll.
Der aktuelle Pfad wird in blau vor dem _`$`_ angezeigt, dieser sollte nun auf `/.local` enden.

Der zweite Befehl lädt das Installationsdateien für TeXLive herunter.

Der dritte Befehl installiert TeXLive.

<img alt="" src="/img/texlive-0.png" class="screenshot" />

Um die Installation zu starten muss die folgende Anfrage mit `I` und einem druck auf die `Entertaste`
bestätigt werden. **Achtung:** Dies Installation benötigt eine Internetverbindung über die mehr als 5GB
an Daten heruntergeladen werden. Entsprechend kann diese Installation mitunter sehr viel Zeit in Anspruch nehmen.

<img alt="" src="/img/texlive-4.png" class="screenshot" />

Nachfolgend wird nun LaTeX selbst und alle zugehörigen Pakete heruntergeladen und installiert.

<img alt="" src="/img/texlive-5.png" class="screenshot" />

Nach erfolgreicher Installation wird folgender Text ausgegeben.

<img alt="" src="/img/texlive-6.png" class="screenshot" />

Nun muss noch eine Einstellung vorgenommen werden, indem folgender Befehl eingegeben und mit der
`Entertaste` bestätigt wird.
```
echo 'export PATH="$HOME/.local/texlive/2021/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

<img alt="" src="/img/texlive-7.png" class="screenshot" />

Im Anschluss muss das Fenster mit der Bash-Kommandozeile geschlossen und erneut geöffnet werden.
Die letzte Einstellung für TeXLive erfolgt durch Eingabe der folgenden Befehle und jeweiliger
Bestätigung mit der `Entertaste`.
```
tlmgr option autobackup -- -1
```
```
tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```

<img alt="" src="/img/texlive-8.png" class="screenshot" />


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
%matplotlib
```
Ist die Ausgabe hier
```
Using matplotlib backend: Qt5Agg

In [2]: QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-<username>'
```
könnt ihr _ipython_ mit `quit` beenden, und folgende Befehle in das Terminal eintragen
```
echo "mkdir -p /tmp/user/1000" >> ~/.bashrc
echo "export XDG_RUNTIME_DIR=/tmp/user/1000" >> ~/.bashrc
```
Schließt das Terminal und öffnet ein neues, jetzt sollte nach `%matplotlib` die Ausgabe nur `Using matplotlib backend: Qt5Agg` sein.  
```
import matplotlib.pyplot as plt
```
```
plt.plot([1, 2, 4])
```

Es sollte ein Fenster mit einem Koordinatensystem und einer eingezeichneten Linie erscheinen.
Mit
```
quit
```
kann das Programm _ipython_ beendet werden



### Uncertainties

Auch Uncertainties wird über die Bash-Kommandozeile getestet. In diese werden die folgenden Befehle
nacheinander eingegeben. Nach Eingabe des ersten Befehls wird sich das Erscheinungsbild der Kommandozeile etwas verändern.

```
ipython
```
```
import uncertainties
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

## <a id="troubleshooting"></a> Problembehandlung

Bei der Installation treten einige Fehler recht häufig auf. Hier werden die Lösungen zu diesen Problemen
gesammelt.


+ Die folgende Fehlermeldung bedeutet, dass noch kein *XServer* gestartet wurde:
```
Could not connect to any X display.
```

+ Bei der Verwendung von matplotlib kann ein Fehler auftreten,
  der mit den folgenden Zeilen (oder ähnlichen) endet:
```
from PyQt5 import QtCore, QtGui, QtWidget
ImportError: libGL.so.1 connot open shared object file: No such file or directory
```
Dieser Fehler kann durch das Installieren einer Software Bibiliothek behoben werden.
Dazu muss der folgende Befehl in die Bash-Kommandozeile eingegeben werden.
```
sudo apt install qt5-default
```

+ Beim abspeichern von matplotlib-Figuren
kommt ein Fehler ähnlich zu
**ghostscript-9.00 required**
```
sudo apt update
sudo apt install ghostscript
```

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
um eine Ubuntu Installation verwenden zu können ohne ein komplett neues Betriebsystem installieren zu müssen.

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
auf `Dieser PC` (Windows 10) und dann Eigenschaften.

**Wichtig: Befehle im Terminal Zeile für Zeile eingeben und mit Enter bestätigen**

### Windows Subsystem for Linux (WSL)

#### Aktivierung des WSL
Zunächst muss eine Powershell Konsole als Administrator gestartet werden. Eine Möglichkeit dafür
bietet die im Bild gezeigte Suche (die Lupe in der Startleiste), in dem in diese der Suchbegriff
_Powershell_ eingegeben wird. Alternativ kann auch im Startmenü (Windows-Symbol in der Startleiste)
gesucht werden. Öffnet man dieses mit einem `Linksklick`, so öffnet sich die Suche nachdem man einen
Buchstaben über die Tastatur eingibt.

<img alt="" src="/img/wsl-0.png" style="width: 100%;" />

Mit einem `Rechtsklick` auf _Windows PowerShell_
das Kontextmenü zu öffnen. Dann kann die Anwendung mit `Linksklick` auf _Als Administrator ausführen_ 
gestartet werden.

<img alt="" src="/img/wsl-1.png" style="width: 100%;" />

In den meisten Fällen wird das folgende Fenster erscheinen. Dieser kann einfach _Ja_ bestätigt werden.
Es ist kein Problem, wenn dieses Fenster nicht erscheint.

<img alt="" src="/img/wsl-2.png" style="width: 100%;" />

Nun öffnet sich eine Fenster wie unten zusehen, dies ist die Powershell Konsole.
Um sicher zugehen, dass eine Powershell mit Administrator-Rechten geöffnet wurde,
kann der Titel des Fensters überprüft werden, dieser muss mit _Administrator:_ beginnen.

<img alt="" src="/img/wsl-3.png" style="width: 100%;" />

In die Powershell muss nun der folgende Befehl eingegeben werden. Dieser kann auch kopiert
und eingefügt werden, einfügen funktioniert in der Powershell mit einem `Rechtsklick`.
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux   
```
<img alt="" src="/img/wsl-4.png" style="width: 100%;" />

Durch drücken der `Enter`-Taste wird die Eingabe bestätigt.

<img alt="" src="/img/wsl-5.png" style="width: 100%;" />

Die darauf folgende Abfrage ob der Computer neugestartet werden soll,
kann durch einen weiteren Druck auf die `Enter`-Taste bestätigt werden.

<img alt="" src="/img/wsl-6.png" style="width: 100%;" />

Nachdem der Computer neugestartet wurde ist das WSL nun aktiviert. 
Der nächste Schritt ist die Auswahl der Linux Variante, die in diesem 
Subsystem installiert werden soll.

#### Installation der Linux Variante Ubuntu

Die Auswahl aller verfügbaren Versionen findet sich auf dieser Seite:   
[https://docs.microsoft.com/en-us/windows/wsl/install-win10](https://docs.microsoft.com/en-us/windows/wsl/install-win10#fall-creators-update-and-later-install-from-the-microsoft-store).

Die Anzahl der verfügbaren Versionen kann sich im Vergleich zum Screenshot geändert haben.
Dies ist jedoch kein Problem, denn die im Folgenden verwendete Variante ist die Oberste,
__Ubuntu__. Ausgewählt wird diese, mit einem `Linksklick` auf den entsprechenden Listeneintrag.

<img alt="" src="/img/wsl-7.png" style="width: 100%;" />

Es öffnet sich ein neues Fenster des Microsoft-Stores. Durch `Linksklick` auf die
Schaltfläche _Herunterladen_ wird der Download begonnen.  

<img alt="" src="/img/wsl-8.png" style="width: 100%;" />

Der Download lädt einige 100 Megabyte an Daten herunter und kann einige Minuten in Anspruch nehmen.

<img alt="" src="/img/wsl-9.png" style="width: 100%;" />

Nachdem der Download abgeschlossen ist, kann die Installation, durch einen `Linksklick`
auf die Schaltfläche _Starten_ gestartet werden.

<img alt="" src="/img/wsl-10.png" style="width: 100%;" />

Auch diese Installation kann einige Minuten in Anspruch nehmen.

<img alt="" src="/img/wsl-11.png" style="width: 100%;" />

#### Einrichten eines Benutzerskontos

Nach erfolgreicher Installation erscheint die Aufforderung einen Benutzernamen für
das Linux-Betriebssystem einzugeben.

<img alt="" src="/img/wsl-12.png" style="width: 100%;" />

Dieser Linux-Benutzername kann frei gewählt werden. 
Der Linux-Benutzername __kann, muss aber nicht,__
mit dem Windows-Benutzernamen übereinstimmen. 
Die Eingabe des Benutzernames wird mit Drücken der `Enter`-Taste bestätigt.

<img alt="" src="/img/wsl-13.png" style="width: 100%;" />

Im Anschluss wird auch nach einem Passwort für das Linux-Betriebssytem gefragt.
Aus Sicherheitsgründen, wird das eingegebene Passwort nicht angezeigt.
Die Eingabe wird durch Drücken der `Enter`-Taste bestätigen.

<img alt="" src="/img/wsl-14.png" style="width: 100%;" />

Im Anschluss muss das Passwort erneut eingegeben werden, um Tippfehler auszuschließen.
Auch diese Eingabe wird wieder mit der `Enter`-Taste bestätigt.   
Sollte die Eingabe des zweiten Passworts nicht mit dem ersten übereinstimmen,
so muss dieses erneut (zweimal) eingegeben werden.

<img alt="" src="/img/wsl-15.png" style="width: 100%;" />

Ist die Installation erfolgreich durchgeführt worden, 
erhält man die im Screenshot gezeigte Ausgabe.
Die unterste Zeile besteht aus zwei Teilen.   
Die Information vor dem Doppelpunkt setzt sich dabei aus dem Benutzernamen und dem Computernamen zusammen. 
Der Teil nach dem Doppelpunkt besteht aus einer Tilde `~` und einem Dollarzeichen `$`.
Dies ist der typische Aufbau der Linux-Kommandozeile `bash`, die maßgeblich zur Interaktion 
mit dem Linux-Betriebsystem verwendet wird. Eine Einführung in den Umgang erfolgt während 
des Workshops, im Folgenden wird diese jedoch schon zur
Installation der benötigten Software verwendet.

<img alt="" src="/img/wsl-16.png" style="width: 100%;" />






### Dateiendungen einschalten

<span style="font-size: large;">[Anleitung](https://support.microsoft.com/kb/865219/de)</span>




### Visual Studio Code

Visual Studio Code (VSCode) ist ein Text-Editor der sowohl zum schreiben von Programm-Code in Python als auch Texten in LaTeX geeignet ist.
Drüberhinaus hat dieser auch noch viele weitere Funktionen.
Die Installationsdatei `VSCodiumSetup-x64-<VERSION>.exe` kann unter dem folgenden Link heruntergeladen werden:

[Download VSCodium](https://github.com/VSCodium/vscodium/releases){:target="_blank"}



Neben dem Funktionsumfang, den VSCode von sich aus mitbringt können zusätzliche Extensions installiert werden,
um weitere Funktionen hinzuzufügen. Der Prozess wird hier an dem einzigen Plugin vorgeführt, das 
(in der zweiten Woche) für den Workshop benötigt wird. Das Plugin heißt _LaTeX language support_ und sorgt 
für die farbliche Darstellung (Syntax Highlighting) von LaTeX Dokumenten, die mit VSCode geöffnet werden.

Ein `Linksklick` auf die unterste Schaltfläche am linken Rand öffnet das _Extensions_ Menü.

<img alt="" src="/img/vscode-12.png" style="width: 100%;" />

In diesem Menü können alle _Extensions_ durchsucht werden. Nach Eingabe von _LaTeX language_ in die 
in das Eingabefeld wird die Extension _LaTeX language support_ in der Liste angezeigt. **Wichtig** ist,
dass der Name der Extension übereinstimmt, die Position in der angezeigten Liste ist nicht ausschlaggebend.
Es ist möglich das die Extension zu einem späteren Zeitpunkt nicht mehr das oberste Ergebnis in der Liste ist.

Eine Beschreibung der Funktion der Extension, kann in einem neuen Tab angezeigt werden,
indem mit einem `Linksklick` auf einen Listeneintrag geklickt wird.
Installiert wird die Extension durch einen `Linksklick` auf die Schaltfläche _Install_.

<img alt="" src="/img/vscode-13.png" style="width: 100%;" />

Nach der Installation von neuen Extensions muss VSCode geschlossen und neugestartet werden.
Dies lässt sich durch `Linksklick` auf die Schaltfläche _Reload_ erledigen.

<img alt="" src="/img/vscode-14.png" style="width: 100%;" />

Nach erfolgreicher Installation wird die Extension (zusammen mit allen anderen installierten Extensions)
in der Liste _ENABLED_ aufgeführt, die angezeigt wird, wenn das Eingabefeld der Suche leer ist.

<img alt="" src="/img/vscode-15.png" style="width: 100%;" />

Auch wenn es vielleicht ungewohnt ist, kann es von Vorteil sein Software mit englischen Spracheinstellungen
zu verwenden. Um die Spracheinstellungen von VSCode zu ändern müssen die folgenden Schritte befolgt werden.
Diese ist **nicht** nötig, wenn die Sprache bereits auf Englisch eingestellt ist oder eine Änderung der
Sprache nicht gewünscht ist.

Zum Öffnen der Spracheinstellungen muss zunächst die Taste `F1` gedrückt werden. Dies öffnet ein
Eingabefenster in dem nach Einstellungen gesucht werden kann.

<img alt="" src="/img/vscode-16.png" style="width: 100%;" />

Hier muss nun nach _Configure Display Language_ gesucht werden. Die Einstellung kann dann durch drücken
der `Entertaste` ausgewählt werden.
 
<img alt="" src="/img/vscode-17.png" style="width: 100%;" />

Viele Programme verwenden Textdateien, um Einstellungen zu speichern. Die Details sind an dieser
Stelle aber noch nicht von Belang. In dieser Datei muss die Abkürzung der eingestellten Sprache,
`"de"` (Deutsch) auf `"en"`(Englisch) geändert werden. Danach muss die Datei mit `Strg + S` gespeichert
werden. Die Änderung der Sprache tritt erst nach dem Schließen und Neustarten von VSCode in Kraft.

<img alt="" src="/img/vscode-18.png" style="width: 100%;" />



### ConEmu

Das Programm ConEmu stellt einen Ersatz der standard WSL-Kommandozeile dar. Nachvollgend ist die
Website verlinkt.

[ConEmu Download](https://github.com/Maximus5/ConEmu/releases)

#### Download und Installation

Auf der verlinkten Website kann die hervorgehobene Installationsdatei herunter geladen werden.
Im unten dargestellten Screenshot wurde die neuste Version am 06.05.2018 veröffentlicht.
Das Datum der Veröffentlichung der entsprechenden Version ist dabei immer die jeweilige Überschrift
(aus 06.05.2018 wird beispielsweise _180506_).   
Es ist zu beachten, dass immer die aktuellste Version der Software verwendet werden sollte.
Die Installationsdatei verbirgt sich jeweils hinter dem zweite Link unter _Assets_, beginnt mit 
_**ConEmuSetup**_ und besitzt die Dateiendung _**.exe**_.

<img alt="" src="/img/conemu--2.png" style="width: 100%;" />
 

Nach erfolgreichem Download und einem doppelten `Linksklick` auf die heruntergeladene Datei
muss das folgende Fenster mit einem `Linksklick` auf _Ausführen_ bestätigt werden.

<img alt="" src="/img/conemu-0.png" style="width: 100%;" />


Im folgenden Fenster muss zwischen _x64_ für 64-bit PCs oder _x86_ für 32-bit PCs ausgewählt werden.
Die meisten PCs sind heutzutage 64-bit. Bei einem einigermaßen neuen PC kann also _x64_ ausgewählt werden.

<img alt="" src="/img/conemu-1.png" style="width: 100%;" />


Es kann folgenden Fenster erscheinen indem die Installation noch mit einem `Linksklick` auf _Ja_ 
erlaubt werden muss.

<img alt="" src="/img/conemu-2.png" style="width: 100%;" />

Das nachvollgende Fenster wird lediglich mit einem `Linksklick` auf _Next_ bestätigt.

<img alt="" src="/img/conemu-3.png" style="width: 100%;" />

Im Folgenden Fenster muss mit einem  `Linksklick` in die Checkbox zunächst die _Endnutzervereinbarung_  bestätigt werden.
Diese Auswahl wird mit einem `Linksklick` auf _Next_ bestätigt.

<img alt="" src="/img/conemu-4.png" style="width: 100%;" />

Nun kann der Umfang der Installation bearbeitet werden, dies ist jedoch optional und wird mit einem
`Linksklick` auf _Next_ übersprungen.

<img alt="" src="/img/conemu-5.png" style="width: 100%;" />

Nun kann die Installation von ConEmu mit einem `Linksklick` _Install_ gestartet werden.

<img alt="" src="/img/conemu-7.png" style="width: 100%;" />

Nach erfolgreicher Installation wird diese durch einen `Linksklick` auf _Finish_ abgeschlossen.

<img alt="" src="/img/conemu-8.png" style="width: 100%;" />

Auf dem Desktop befindet sich nun die unten hervorgehobene Verknüpfung mit dem Namen _ConEmu (x64)_.
Mit einem doppelten `Linksklick` auf diese Verknüpfung kann nun ConEmu gestartet werden.

<img alt="" src="/img/conemu-9.png" style="width: 100%;" />

#### Einrichtung des Bash-Kommandozeile

Nach dem Starten von ConEmu öffnet sich das Programm mit dem unten dargestellten Fenster. Standardmäßig
öffnet ConEmu die Windows-Kommandozeile (_cmd_) diese Einstellung wird im Folgenden verändert.
Dazu wird mit einem `Rechtsklick` auf die hervorgehoben Schaltfläche oben rechts (drei horizontale Balken)
das Einstellungsmenü geöffnet.

<img alt="" src="/img/conemu-10.png" style="width: 100%;" />

In diesem Menü wird zunächst das Untermenü _Tasks_ durch einen `Linksklick` geöffnet.
In der Liste sollte sich der (hier unter 13) dargestellte Eintrag _{Bash::bash}_ befinden.
Ist dieser nicht vorhanden, kann dieser mit einem `Linksklick` auf die Schaltfläche _Add/refresh tasks_
nachgeladen werden. Um die folgenden Einstellungen vorzunehmen wird der Eintrag _{Bash::bash}_ mit 
einem `Linksklick` ausgewählt.

<img alt="" src="/img/conemu-14.png" style="width: 100%;" />


In den Einstellung befinden sich die zwei hervorgehobenen Textboxen.
Die obere Textbox muss **nicht** angepasst werden.
In die untere der beiden Textboxen muss folgender Text enthalten sein.

```
set "PATH=%ConEmuBaseDirShort%\wsl;%PATH%" & %ConEmuBaseDirShort%\conemu-cyg-64.exe --wsl -cur_console:pm:/mnt
```
Eine Anpassung kann durch Löschung des in der Textbox vorhanden Textes und durch Kopieren und Einfügen des obigen Textes erfolgen.

<img alt="" src="/img/conemu-15.png" style="width: 100%;" />

Die nächste Einstellung wird unter dem Untermenü _Startup_ vorgenommen. Hier wird aus der Liste unter
_Specified named task_ erneut _{Bash::bash}_ ausgewählt. Die Auswahlliste wird dabei durch einen `Linksklick` 
auf die Auswahlbox ausgeklappt.

<img alt="" src="/img/conemu-17.png" style="width: 100%;" />

Die letzten Einstellungen wird unter dem Untermenü _Integration_ vorgenommen. Hier wird in die Textboxen
(von oben nach unten) folgender Inhalt eingetragen. Der bereits vorhandene Text in den ersten beiden 
Textboxen muss zunächst gelöscht werden.

+ _Menu Item:_ `Bash Here`
+ _Command:_ `/single /single -run {Bash::bash}`

Der Inhalt der Textbox nach _Icon file:_ kann bei behalten werden.
Diese Einstellung wird zunachst mit einem `Linksklick` auf _Register_ bestätigt und anschließend
mit einem `Linksklick` auf _Save settings_ abgeschlossen.

<img alt="" src="/img/conemu-21.png" style="width: 100%;" />

Wird ConEmu nun geschlossen und erneut gestartet, sollte sich das Fenster nun wie folgt mit der 
Bash-Kommandozeile öffenen. Diese ist an dem charakteristischen _`$`_ vor dem Cursor zu erkennen,
die Windows-Kommandozeile zeigt hier ein _`>`_.

<img alt="" src="/img/conemu-19.png" style="width: 100%;" />

Eine der zuvor vorgenommenen Einstellungen vereinfacht das Öffnen einer Bash-Kommandozeile in einmem 
beliebigen Ordner. Was genau das heißt wird im Laufe des Workshops erklärt, hier soll nur auf die 
Auswirkung der Einstellung aufmerksam gemacht werden. Wird auf dem Desktop (oder in einem anderen
Ordner) ein `Rechtsklick` ausgeführt, so öffnet sich das unten dargestellte Kontextmenü. In diesem 
befindet sich der hervorgehobene Eintrag _Bash Here_. Wird dieser mit einem `Linksklick` ausgewählt
öffnet sich ConEmu. 

<img alt="" src="/img/conemu-22.png" style="width: 100%;" />

Der Unterschied zu vorher ist der Pfad an dem die Konsole geöffnet wird, dies ist jetzt der _Desktop_.
Zuvor stand in der Zeile vor dem Cursor:
```
luckyjosh@DESKTOP-0LSK6R6:/mnt/c/Users/josh$
```
(Dabei ist zu beachten, dass sowohl `luckyjosh` als auch `josh` durch die entsprechenden Benutzernamen ersetzt sein werden.)

Nun steht dort:
```
luckyjosh@DESKTOP-0LSK6R6:/mnt/c/Users/josh/Desktop$
```

<img alt="" src="/img/conemu-23.png" style="width: 100%;" />

### Sumatra PDF

Als PDF-Betrachter sollte Sumatra PDF verwendet werden.
Die Verwendung von Acrobat Reader wird nicht empfohlen, da er die PDF-Datei blockiert, 
sodass sie nicht von TeX überschrieben werden kann (warum das wichtig ist, erfährt man im Kurs).   
Den Download findet man unter dem folgenden Link.

[Sumatra Download](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html){:target="_blank"}

Auf der Download-Seite kann dann die `x64` Version von Sumatra PDF mit einem `Linksklick` auf den
hervorgehobenen Link heruntergeladen werden.

<img alt="" src="/img/sumatra-1.png" style="width: 100%;" />


Durch einen doppelten `Linksklick` kann die heruntergeladene Datei ausgeführt werden.
Infolgedessen öffet sich das folgende Fenster. Vor der Installation werden durch einen `Linksklick`
die _Optionen_ geöffnet. 

<img alt="" src="/img/sumatra-2.png" style="width: 100%;" />

In diesem Fenster kann zum einen der Installationspfad angepasst werden. Dies ist jedoch __optional__, der
bereits eingetragene Dateipfad ist kann unverändert bleiben. Zum anderen sollten die beiden hervorgehobenen
Haken gesetzt sein. Im Anschluss kann Sumatra PDF mit einem `Linksklick` auf _Installieren_ installiert werden.

<img alt="" src="/img/sumatra-3.png" style="width: 100%;" />

Nach einer erfolgreichen Installation wird das folgende Fenster angezeigt. Mit einem `Linksklick`
auf _Sumatra Starten_ kann Sumatra PDF nun gestartet werden.

<img alt="" src="/img/sumatra-5.png" style="width: 100%;" />

Vor der Verwendung von Sumatra PDF muss noch Einstellung vorgenommen werden.
Dafür wird mit einem `Linksklick` auf _Einstellungen_ und einem weitern `Linksklick` auf _Optionen..._ 
das Optionsmenü geöffnet.

<img alt="" src="/img/sumatra-6.png" style="width: 100%;" />

Im Optionsmenü kann Sumatra PDF zum Standard-PDF-Betrachter gemacht werden. Dafür muss zunächst
mit einem `Linksklick` auf _Standardmäßig PDF-Dateien mit SumatraPDF öffnen_ diese Einstellung vorgenommen
und mit einem weiteren `Linksklick` auf _OK_ bestätigt werden.

<img alt="" src="/img/sumatra-7.png" style="width: 100%;" />



### X-Server
Da das WSL nur Zugriff über die Kommandozeile erlaubt muss ein weiteres Programm installiert werden,
um grafische Benutzeroberflächen (GUIs) anzeigen zu können. Die Installationsdatei kann unter dem 
folgenden Link heruntergeladen werden.

[X-Server Download](https://sourceforge.net/projects/vcxsrv/)

Dies wird mit einem `Linksklick` auf die unten hervorgehobene Schaltfläche _Download_ erreicht.

<img alt="" src="/img/xserver-0.png" style="width: 100%;" />


Durch einen doppelten `Linksklick` kann die heruntergeladen Datei ausgeführt werden.
Infolgedessen kann das folgende Fenster erscheinen, welches mit einem `Linksklick` auf
_Ja_ bestätigt werden muss.

<img alt="" src="/img/xserver-1.png" style="width: 100%;" />

Im nachfolgenden Fenster kann nun der Umfang der Installation ausgewählt werden. Hier ist _Full_ auszuwählen. 
Die Auswahl wird durch einen `Linksklick` auf _Next_ bestätigt.

<img alt="" src="/img/xserver-2.png" style="width: 100%;" />

Im folgenden Fenster kann der Installationspfad angepasst werden. Dies ist optional und der bereits
eingetragene Pfad kann durch einen `Linksklick` auf _Install_ unverändert bestätigt werden.


<img alt="" src="/img/xserver-3.png" style="width: 100%;" />

Nach vollständiger Installation, kann diese mit einem `Linksklick` auf _Close_ abgeschlossen werden.

<img alt="" src="/img/xserver-4.png" style="width: 100%;" />

Auf dem Desktop befindet sich nun die unter dargestellte Verknüpfung mit dem Namen _XLaunch_.
Durch einen doppelten `Linksklick` kann das Programm nun gestartet werden.

<img alt="" src="/img/xserver-5.png" style="width: 100%;" />

Vor dem Start des Progamms müssen einige Einstellungen vorgenommen werden. Zunächst wird hier
_Multiple Window_ ausgewählt und mit einem `Linksklick` auf _Weiter_ bestätigt.

<img alt="" src="/img/xserver-6.png" style="width: 100%;" />

Im nächsten Fenster wird die Option _Start no client_ ausgewählt und ebenfalls mit einem `Linksklick`
auf _Weiter_ bestätigt.

<img alt="" src="/img/xserver-7.png" style="width: 100%;" />

Im letzten Einstellungs-Fenster werden alle vier Optionen ausgewählt und abschließend mit einem 
`Linksklick` auf _Weiter_ bestätigt.

<img alt="" src="/img/xserver-9.png" style="width: 100%;" />

Nun können die vorgenommenen Einstellungen gespeichert werden. Der entsprechende Dialog wird 
durch einen `Linksklick` auf _Save configuration_ geöffnet.

<img alt="" src="/img/xserver-10.png" style="width: 100%;" />

Die entsprechende Datei kann nach eigenem Belieben bennant werden und auch der Speicherort ist freiwählbar.
Hier wird als Speicherort der _Desktop_ und als Dateiname _Praktikum.xlaunch_ ausgewählt.

<img alt="" src="/img/xserver-11.png" style="width: 100%;" />

Nun kann die Einstellung des Programms mit einem `Linksklick` auf _Fertig stellen_ abgeschlossen 
und das Programm gestartet werden.

<img alt="" src="/img/xserver-12.png" style="width: 100%;" />


Nach dem ersten Ausführen kann folgendes Fenster erscheinen,
dieses muss mit einem `Linksklick` auf _Abbrechen_ abgelehnt werden.

<img alt="" src="/img/xserver-13.png" style="width: 100%;" />

Das Programm _XLaunch_ selbst öffnet zunächst keine Fenster. Das das Programm gestartet wurde lässt
sich an einem Icon in der Taskleiste (in der Nähe der Uhrzeit) erkennen. Sollte das Icon nicht
zusehen sein, kann ein `Linksklick` auf den nach unter (oder oben) gerichteten Pfeil nötig sein. 

<img alt="" src="/img/xserver-14.png" style="width: 100%;" />


Am zuvor ausgewählten Speicherort für die Einstellungen, 
befindet sich die unten hervorgehobene Datei mit dem zuvor ausgewählten Namen.
Mit einem doppelten `Linksklick` auf diese Datei kann von nun an das Programm _XLaunch_
gestartet werden ohne die Einstellungen erneut vornehmen zu müssen. 

<img alt="" src="/img/xserver-15.png" style="width: 100%;" />


Um den XServer verwenden zu können muss noch eine Einstellung unter Verwendung der Bash-Kommandozeile
vorgenommen werden. In diese werden nacheinander die folgenden Befehle eingegeben und mit 
einem Druck auf die `Entertaste` bestätigt.
```
echo "export DISPLAY=:0.0" >> ~/.bashrc
```
<img alt="" src="/img/xserver-16.png" style="width: 100%;" />





### Git, Make und weiteres

Für die Installation der beiden Programme git und und make muss zunächst eine
Bash-Kommandozeile unter Verwendung von ConEmu geöffnet werden, zum Beispiel
über den oben beschriebenen Eintrag im Kontextmenü.   
Wie unten gezeigt wird in dieses Fenster nun der Befehl
```
sudo apt update
```
eingetragen. Und mit drücken der `Entertaste` bestätigt.
Die Ausführung dieses Befehls kann einige Zeit in anspruch nehmen und setzt eine
Internetverbindung vorraus über die einige 100MB große Datenmengen heruntergeladen
werden können.

<img alt="" src="/img/unix-tools-0.png" style="width: 100%;" />

Befehle die mit `sudo` beginnen erfordern besondere Zugriffsrechte. Daher muss zunächst immer
das Linux-Benutzerpasswort (**nicht** notwendigerweise das Windows-Benutzerpasswort) eingegeben werden. 

<img alt="" src="/img/unix-tools-01.png" style="width: 100%;" />


Ein erfolgreiches Update sieht in etwa wie folgt aus, jedoch wird die ausgegebene Liste der Programme die geupdated
werden können beim ersten Ausführen wesentlich länger sein.

<img alt="" src="/img/unix-tools-02.png" style="width: 100%;" />

Die Updates müssen nun noch installiert werden, denn bisher wurden diese nur heruntergeladen.
Dies erfolgt durch Eingabe des Befehls
```
sudo apt upgrade
```
und auch dieser Befehl wird mit der `Entertaste` bestätigt.

<img alt="" src="/img/unix-tools-1.png" style="width: 100%;" />

Anschließend kann eine erneute Bestätigung durch Eingabe des Buchstabens `y` und drücken der
`Entertaste` nötig sein. (Auch hier wird die ausgegebene Liste wesentlich länger sein.)

<img alt="" src="/img/unix-tools-03.png" style="width: 100%;" />

Nun können die beiden Programme `git`, `make` und `curl` installiert werde. Dies erfolgt durch die Eingabe des
Befehls
```
sudo apt install git make curl
```
und anschließende Bestätigung mit der `Entertaste`. Auch dies Installation kann wieder etwas Zeit in Anspruch nehmen.

<img alt="" src="/img/unix-tools-2.png" style="width: 100%;" />

Eine erfolgreiche Installation, wie unten gezeigt, kann daran erkannt werden, dass keine Fehlermeldungen ausgegeben werden.

<img alt="" src="/img/unix-tools-3.png" style="width: 100%;" />


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
git config --global pull.rebase true
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

[Anaconda Download](http://www.continuum.io/downloads#linux){:target="_blank"}

Auf der Website ist es wichtig das die Installationsdatei für **Linux** ausgewählt wird.
Außerdem soll die _x64-Bit_ Version der Python Version 3.6 verwendet werden. Diese findet sich
unter dem hervorgehobenen Link. Der Download kann einige Minuten in Anspruch nehmen.

<img alt="" src="/img/anaconda-0.png" style="width: 100%;" />

Um die Beschreibung der Installationsschritte etwas zu vereinfachen, sollte nun die heruntergeladene Datei,
deren Name mit _**Anaconda3**_ beginnt und auf _**.sh**_ endet, auf den Desktop kopiert werden.

<img alt="" src="/img/anaconda-1.png" style="width: 100%;" />

Im Anschluss wird mit ConEmu erneut eine Bash-Kommandozeile geöffnet.
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

Nachfolgend wird der Befehl 
```
bash Anaconda3-5.2.0-Linux-X86_64.sh -p ~/.local/anaconda3 -b
```
verwendet, um die Installation zu starten. **Wichtig** ist zu beachten, dass der zweite Teil des
Befehls der Name der Installationsdatei ist, sollte dieser sich von dem hier gezeigten unterscheiden
muss der Befehl entsprechend angepasst werden. Wie zuvor wird auch dieser Befehl durch drücken der
`Entertaste` bestätigt.

<img alt="" src="/img/anaconda-5.png" style="width: 100%;" />

Nun beginnt die Installation. Auch diese benötigt einige Minuten Zeit.

<img alt="" src="/img/anaconda-13.png" style="width: 100%;" />

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

<img alt="" src="/img/anaconda-19.png" style="width: 100%;" />

Wird nun die Bash-Kommandozeile geschlossen und eine neue geöffnet,
so sollte zu Begin der Eingabezeile nun _(base)_ stehen.

<img alt="" src="/img/anaconda-20.png" style="width: 100%;" />

Nach erfolgreicher Installation kann die Installationsdatei _Anaconda3-5.2.0-Linux-X86_64.sh_
vom Desktop gelöscht werden.

### Uncertainties

Uncertainties ist eine Python-Bibliothek für automatisierte Fehlerrechnung. Detailierte Informationenen
können auf der verlinkten Website gefunden werden.

[Uncertainties Website](http://pythonhosted.org/uncertainties/)

Installiert werden kann Uncertainties über die Bash-Kommandozeile. In diese muss der folgende Befehl
eingetragen werden.

```
pip install uncertainties
```

<img alt="" src="/img/uncertainties-0.png" style="width: 100%;" />



### TeXLive

TeXLive ist die TeX-Distribution, welche in diesem Workshop verwendet wird. Weiter Informationen und 
eine detailierte Installationsanleitung können unter den folgenden Links eingesehen werden.
+ [TeXLive Website](https://www.tug.org/texlive/)
+ [Installationsanleitung](https://www.tug.org/texlive/windows.html)


Für die Installation wird erneut die Bash-Kommandozeile (mit ConEmu) verwendet. 
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

<img alt="" src="/img/texlive-0.png" style="width: 100%;" />

Um die Installation zu starten muss die folgende Anfrage mit `I` und einem druck auf die `Entertaste`
bestätigt werden. **Achtung:** Dies Installation benötigt eine Internetverbindung über die mehr als 5GB 
an Daten heruntergeladen werden. Entsprechend kann diese Installation mitunter sehr viel Zeit in Anspruch nehmen.

<img alt="" src="/img/texlive-4.png" style="width: 100%;" />

Nachfolgend wird nun LaTeX selbst und alle zugehörigen Pakete heruntergeladen und installiert.

<img alt="" src="/img/texlive-5.png" style="width: 100%;" />

Nach erfolgreicher Installation wird folgender Text ausgegeben.

<img alt="" src="/img/texlive-6.png" style="width: 100%;" />

Nun muss noch eine Einstellung vorgenommen werden, indem folgender Befehl eingegeben und mit der 
`Entertaste` bestätigt wird.
```
echo 'export PATH="$HOME/.local/texlive/2018/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

<img alt="" src="/img/texlive-7.png" style="width: 100%;" />

Im Anschluss muss das Fenster mit der Bash-Kommandozeile geschlossen und erneut geöffnet werden.
Die letzte Einstellung für TeXLive erfolgt durch Eingabe der folgenden Befehle und jeweiliger
Bestätigung mit der `Entertaste`.
```
tlmgr option autobackup -- -1
```
```
tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```

<img alt="" src="/img/texlive-8.png" style="width: 100%;" />


__Jetzt noch die Installation [testen](#test)!__

## <a id="test"></a>Testen

### Python

Um die Python Installation (durch Anaconda) zu testen, sollten alle offenen Fenster der Bash-Kommandozeile
geschlossen und ein neues geöffnet werden.
Zusätzlich muss auch das Programm XLaunch über die zuvor anglegte Datei _Praktikum.xlaunch_ gestartet werden.

In die Bash-Kommandozeile werden nun nacheinander die folgenden Befehle eingeben. Nach Eingabe des ersten Befehls
wird sich das Erscheinungsbild der Kommandozeile etwas verändern.

```
ipython
```
```
%matplotlib
```
```
import matplotlib.pyplot as plt
```
```
plt.plot([1, 2, 4])
```

Es sollte ein Fenster mit einem Koordinatensystem und einer eingezeichneten Linie erscheinen.

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
This is LuaTeX, Version 1.0.4 (TeX Live 2017) 
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

Zuletzt wird noch das Programm zur Betrachtung von Paket-Dokumentationen getestet.9
Für diesen Test muss das Programm XLaunch gestartet worden sein.   
Der Test-Befehl lautet:
```
texdoc texlive
```

Es sollte nun die Dokumentation von TeXLive in einem PDF-Betrachter geöffnet werden.

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

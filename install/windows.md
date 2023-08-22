---
layout: default
title: Windows-Installation
---
<span style="color:crimson"> __Aktuell überarbeiten wir die Anleitungen für Windows 10 & 11!__ </span>

Wir empfehlen die Installation einer 64-bit Version, falls man ein 64-bit Betriebssystem benutzt.
Wenn man sich nicht sicher ist, hat man heutzutage fast immer 64-bit.


__Bitte die folgenden Punkte unbedingt lesen:__

+ Diese Anleitung mag relativ lang erscheinen und im ersten Moment abschreckend wirken.
Wir versichern euch, dass diese Länge aber viel mehr ein Zeichen von Ausführlichkeit
ist, um sicherzustellen, dass ihr auch folgen könnt, wenn ihr bisher keine Berührungen
mit den Inhalten des Toolbox Workshops hattet. 

+ Befolgt die Anleitung daher konzentriert und gründlich, um keinen Schritt zu vergessen
und kontrolliert jedesmal, dass die ihr die Befehle richtig kopiert oder abgetippt habt.

+ Alle drei Abschnitt (Installieren, Testen, Aktualisieren) und deren Unterabschnitte sind notwendig.
Den Beginn jedes dieser drei Abschnitte erreicht ihr über die drei Buttons unter der Einleitung. 


+ Sollte es an irgendeiner Stelle zu Problemen kommen, überspringt diesen Schritt nicht einfach,
sondern meldet euch bei uns. Unter [Hilfe](/problem.html) findet ihr die Hinweise wie ihr uns 
am besten kontaktieren könnt.


Falls falls ihr __nicht__ am LaTeX-Kurs teilnehmen wollt, ist der Abschnitt <a href="#TeXLive">TeXLive </a> optional.
Dann könnt ihr allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls ihr __nur__ am LaTeX-Kurs teilnehmen wollt, solltet ihr mindestens die Abschnitte <a href="#SumatraPDF">Sumatra PDF</a>, 
<a href="#VSCode">Visual Studio Code</a> und <a href="#TeXLive">TeXLive </a> durcharbeiten.
Dann ist mit Terminal die Windows-Konsole gemeint (wenig bequem).

Diese Installation verwendet das [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10){:target="_blank"} (WSL),
um eine Ubuntu Installation verwenden zu können ohne ein komplett neues Betriebssystem installieren zu müssen.


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


### <a id="Vorbereitungen"></a>Vorbereitungen

#### <a id="Windowsinfo"></a> Window-Info: Systemtyp und Buildnummer
Findet heraus, ob ihr ein 64- oder 32-bit Betriebssystem habt.
Hierfür macht man einen `Rechtsklick` auf das Windows-Symbol in der Taskleiste,
gefolgt von einem `Linksklick` auf _System_.

<img alt="" src="/img/wsl/win10-64bit-1.png" class="screenshot"/>

In der Liste am linken Rand lautet der letzte Punkt _Info_ (dieser sollte bereits ausgewählt sein).
Unter dem Schlagwort _Systemtyp_ kann die Art des Betriebssystems gesehen werden.

<img alt="" src="/img/wsl/win10-64bit-2.png" class="screenshot" />

In diesem Fenster erhaltet ihr noch eine weitere Info, die _Betriebsystembuild_-Nummer.

<img alt="" src="/img/wsl/win10-buildnumber.png" class="screenshot" />

Die Installation des WSL wurde im Vergleich zu den vergangenen Jahren erheblich vereinfacht.
Um diese Vereinfachungen nutzen zu können, muss dies Nummer vor dem _._ mindestens _19041_ sein.

Sollte eure Nummer niedriger sein, empfehlen wir euch die Updates für eure Windows-Installation 
zu installieren. Dafür könnt ihr in dem obigen _Info_-Fentser in der Suchleiste nach "Update"
suchen und den Punkt _Nach Updates suchen_ auswählen.

<img alt="" src="/img/wsl/win10-updates-1.png" class="screenshot" />

Anschließend könnt ihr über den Button `Nach Updates suchen` fehlende Updates installieren.

<img alt="" src="/img/wsl/win10-updates-2.png" class="screenshot" />

Überprüft nach der Installation der Updates und einem Neustart eures PCs nocheinmal die 
_Betriebsystembuild_-Nummer. Sollte diese immernoch nicht passen, meldet euch bei uns.

#### <a id="Dateiendungen"></a>Dateiendungen einschalten

Die Endungen einer Datei (die Auskunft über die Art der Datei geben, zB `.pdf` für pdf Dokumente) 
sind unter Windows nicht Standardmäßig aktiviert. Diese können und sollen aktiviert werden.

Diese Einstellung kann im Explorer vorgenommen werden. Wie zuvor kann dieser auch durch suchen im Startmenü gefunden und gestartet werden.

<img alt="" src="/img/explorer/explorer-start.png" class="screenshot" />

In der obersten Zeile gibt es den Punkt `Ansicht`, das Kästchen für den Punkt `Dateinamenerweiterungen` muss ausgewählt werden (ein Schwarzer Haken muss im Kästchen zu sehen sein).

<img alt="" src="/img/explorer/explorer-fileext.png" class="screenshot" />

#### <a id="WindowsBenutzername"></a>Windows-Benutzername

Für einen Installationsschritt wird euer Windows-Benutzername gebgraucht, falls ihr diesen nicht kennt
oder euch nicht sicher seid, könnt ihr diesem im Startmenü nachsehen, indem ihr die den Mauszeiger über das 
oberste Icon in der linken Spalte haltet.

<img alt="" src="/img/win10-username.png" class="screenshot" />


### Windows Subsystem for Linux (WSL)

Diese Anleitung funktioniert nur mit der passenden _Betriebsystembuild_-Nummer,
siehe Abschnitt <a href="#Vorbereitungen">Vorbereitungen</a>.

#### Installation des WSL 
Zunächst muss eine PowerShell Konsole als Administrator gestartet werden. 
Eine Möglichkeit dafür ist das Öffnen des Windows-Stratmenüs. Durch Tippen des
Begriffs "Power" auf der Tastatur wird automatisch eine Suche gestartet. Klickt auf der rechten
Seite des Suchfensters den Punkt _Als Administrator ausführen_ an.

<img alt="" src="/img/wsl/win10-powershell-admin.png" class="screenshot" />


In den meisten Fällen wird das folgende Fenster erscheinen. Dieser kann einfach _Ja_ bestätigt werden.
Diese Warnungen können auch im Folgenden noch auftreten, auch dann müssen diese mit _Ja_ bestätigt werden.
Es ist kein Problem, wenn dieses Fenster nicht erscheint.

<img alt="" src="/img/wsl/win10-admin-warning.png" class="screenshot" />


Nun öffnet sich ein Fenster wie unten zu sehen; dies ist die PowerShell Konsole.
Um sicher zugehen, dass eine PowerShell mit Administrator-Rechten geöffnet wurde,
kann der Titel des Fensters überprüft werden, dieser muss mit _Administrator:_ beginnen.

<img alt="" src="/img/wsl/win10-powershell-admin-test.png" class="screenshot" />

In die PowerShell muss nun der folgende Befehl eingegeben werden. Dieser kann auch kopiert
und eingefügt werden, einfügen funktioniert in der PowerShell mit einem `Rechtsklick`.
```
wsl --install 
```
<img alt="" src="/img/wsl/win10-wsl-install.png" class="screenshot" />

Durch Drücken der `Enter`-Taste wird die Eingabe bestätigt.

Diese Installation kann einige Minuten in Anspruch nehmen, während dieser Zeit werden einige 
stilisierte Ladebalken angezeigt. Nachdem erfolgreichen Abschluss dieses Vorgangs sieht die 
Ausgabe wie folgt aus

<img alt="" src="/img/wsl/win10-wsl-install-complete.png" class="screenshot" />

Wie der letzten Zeile zu entnehmen ist, muss der PC nun einmal neu gestartet werden.

Nach dem Neustart öffnet sich automatische das folgende Fenster, in dem die 
Installation durch Einrichten des Benutzerkontos abgeschlossen werden kann.

<img alt="" src="/img/wsl/win10-wsl-ubuntu-complete.png" class="screenshot" />

#### <a id="Einrichten des Benutzerkontos">Einrichten eines Benutzerkontos

Nach erfolgreicher Installation erscheint die Aufforderung einen Benutzernamen für
das Linux-Betriebssystem einzugeben.
Dieser Linux-Benutzername kann frei gewählt werden.
Der Linux-Benutzername __kann, muss aber nicht,__
mit dem Windows-Benutzernamen übereinstimmen.
Die Eingabe des Benutzernamens wird mit Drücken der `Enter`-Taste bestätigt.

<img alt="" src="/img/windows-ubuntu/wsl-ubuntu-username.png" class="screenshot" />

Im Anschluss wird auch nach einem Passwort für das Linux-Betriebssystem gefragt.
Aus Sicherheitsgründen, wird das eingegebene Passwort nicht angezeigt.
Die Eingabe wird durch Drücken der `Enter`-Taste bestätigen.
Im Anschluss muss das Passwort erneut eingegeben werden, um Tippfehler auszuschließen.
Auch diese Eingabe wird wieder mit der `Enter`-Taste bestätigt.

<img alt="" src="/img/windows-ubuntu/wsl-ubuntu-passwd.png" class="screenshot" />


Sollte die Eingabe des zweiten Passworts nicht mit dem ersten übereinstimmen,
so muss ein erneuter Versuch zunächst mit `y` bestätigt werden. 

<img alt="" src="/img/windows-ubuntu/wsl-ubuntu-wrong-passwd-1.png" class="screenshot" />

Danach wird die Eingabe des Passworts wiederholt (das Passwort muss wie zuvor zweimal eingegeben werden).
<img alt="" src="/img/windows-ubuntu/wsl-ubuntu-wrong-passwd-2.png" class="screenshot" />

Ist die Installation erfolgreich durchgeführt worden,
erhält man die im nächsten Screenshot gezeigte Ausgabe.
Die letzte Zeile (hier: `luckyjosh@DESKTOP-L02KDEF:~$`) wird im folgenden **Eingabezeile** genannt 
und besteht aus zwei Teilen.
Die Information vor dem Doppelpunkt setzt sich dabei aus dem Benutzernamen (hier: `luckyjosh`) und dem Computernamen (hier: `DESKTOP-L02KDEF`) zusammen.
Der Teil nach dem Doppelpunkt besteht aus einer Tilde `~` und einem Dollarzeichen `$`.
Dies ist der typische Aufbau der Linux-Kommandozeile `bash`, die maßgeblich zur Interaktion
mit dem Linux-Betriebssystem verwendet wird. Eine detaliertere Einführung in den Umgang erfolgt während
des Workshops, im Folgenden wird diese jedoch schon zur Installation der benötigten Software verwendet.

<img alt="" src="/img/windows-ubuntu/wsl-ubuntu-correct-passwd.png" class="screenshot" />

Vor dem nächsten Abschnitt könnt ihr das Terminal-Fenster schließen.

### <a id="WindowsTerminal"></a>Windows Terminal

Das Windows Terminal stellt einen Ersatz der Standard-WSL-Kommandozeile dar. Das Windows Terminal kann 
aus dem Microsoft Store installiert werden.

Auch der Microsoft Store kann über die Suche im Startmenü gefunden werden:

<img alt="" src="/img/windows-terminal/windows-terminal-store-1.png" class="screenshot" />

Suche im Microsoft Store nach `Terminal` und Auswahl von _Windows Terminal_:

<img alt="" src="/img/windows-terminal/windows-terminal-store-2.png" class="screenshot" />

Und im folgenden Fenster `Herunterladen` anklicken:

<img alt="" src="/img/windows-terminal/windows-terminal-store-3.png" class="screenshot" />

Im Anschluss an die Installation kann der Mircosoft Store geschlossen werden. 

Das Windows Terminal kann über das Startmenü geöffnet werden. Direkt nach der Installation
befindet sich das Terminal für gewöhnlich ganz oben in der Liste, ansonsten kann hier wieder
die Suche verwendet werden. Geöffnet wird das Terminal durch einen Klick auf _Öffnen_ in der 
rechten Spalte.

<img alt="" src="/img/windows-terminal/windows-terminal-start.png" class="screenshot" />

Beim ersten Öffnen des Windows Terminals erscheint ein Informations-Banner am oberen Fensterrand,
dass mit dem `X` am rechten Rand geschlossen werden kann.

<img alt="" src="/img/windows-terminal/windows-terminal-default-terminal.png" class="screenshot" />

Standardmäßig wird mit dem Windows Terminal die Windows PowerShell geöffnet (zu erkennen an dem Text in dem Tab).
Um eine Ubuntu-Kommandozeile zu öffnen, klickt zunächst oben im Fenster auf den Pfeil nach unten, es öffnet sich ein Dropdown-Menü,
in dem `Einstellungen` angeklickt werden muss:

<img alt="" src="/img/windows-terminal/windows-terminal-settings-1.png" class="screenshot" />

Hier könnt ihr einstellen, dass sich beim Start von Windows Terminal
standardmäßig Ubuntu öffnet.
Unter _Starten_ in der linken Spalte gibt es den Einstellungspunkt _Standardprofil_, durch klicken 
auf den Pfeil nach unten öffnet sich eine Auswahl.

<img alt="" src="/img/windows-terminal/windows-terminal-settings-2.png" class="screenshot" />

In der Auswahl dann Ubuntu auswählen (falls _Ubuntu_ mehrfach auftaucht, den Punkt mit dem Pinguin-Icon):

<img alt="" src="/img/windows-terminal/windows-terminal-settings-3.png" class="screenshot" />

Im Anschluss kann das Terminal Fenster geschlossen werden.


### Git, Make und weiteres

---

**Wichtig:** In diesem und den folgenden Abschnitten werden einige Befehle in das Windows Terminal eingegeben.
Diese werden in einem Codeblock wie diesem angegeben:
```
Beispielbefehl
```
Im Terminal muss **jeder Codeblock einzeln** eingeben und mit `Enter` bestätigt werden.

---

Für die Installation der beiden Programme git und make muss zunächst das Windows Terminal geöffnet werden
(wie im Abschnitt <a href="#WindowsTerminal">Windows Terminal</a> über das Startmenü). 

Zunächst muss ein Update mit dem folgenden Befehl durchgeführt werden: 
```
sudo apt update
```
Die Ausführung dieses Befehls kann einige Zeit in Anspruch nehmen und setzt eine
Internetverbindung voraus über die einige 100 MB große Datenmengen heruntergeladen
werden können.

Befehle die mit `sudo` beginnen erfordern besondere Zugriffsrechte. Daher muss zunächst immer
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

---
**Wichtig:** Anstelle von `Max Mustermann` sollte natürlich der **eigene Name** und auch die **eigene E-Mail-Adresse** verwendet werden!

---

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


### <a id="Mambaforge"></a>Mambaforge: Python Installation

Für die Installation der Programme, die nötig sind um die Programmiersprache Python komfortabel
nutzen zu können verwenden wir das Tool `mamba`.

Die Installationsdatei _Mambaforge-Linux-x86-64.sh_ kann unter dem angegebenen Link heruntergeladen werden.

[Mambaforge Download](https://github.com/conda-forge/miniforge#mambaforge){:target="_blank"}

Auf der Website ist es wichtig, dass die Installationsdatei für **Linux** ausgewählt wird,
der Link auf der Downloadseite ist mit _Mambaforge-Linux-x86-64_ beschriftet.

<img alt="" src="/img/mamba/mamba-download.png" class="screenshot" />

Der Download kann einige Zeit in Anspruch nehmen.

Nach dem abgeschlossenen Download, muss nun der der Downloads-Ordner (in dem die Datei gespeichert wurde)
im Windows Terminal geöffnet werden. In diese werden dafür nacheinander die folgenden Befehle 
eingegeben und jeweils mit Drücken der `Entertaste` bestätigt.


**Wichtig:** Im ersten Befehl muss `<Windows-Benutzername>` durch euren Windows-Benutzernamen ersetzt werden
(siehe <a href="#WindowsBenutzername">Windows-Benutzername</a>).
```
cd /mnt/c/Users/<Windows-Benutzername>/Downloads
```

Dieser Befehl ändert den aktuellen Pfad auf den Downloads-Ordner.
Der aktuelle Pfad wird zwischen dem `:` und `$` angezeigt, dieser sollte nun auf `/Downloads` enden.

```
ls
```
Der zweite Befehl zeigt alle Dateien an, die sich im aktuellen Pfad befinden.

<img alt="" src="/img/mamba/mamba-install-1.png" class="screenshot" />

In der Liste sollte die heruntergeladene Installationsdatei _Mambaforge-Linux-x86_64.sh_ vorkommen.
Zum Installieren muss der folgende Befehl ausgeführt werden.

```
bash Mambaforge-Linux-x86_64.sh -p ~/.local/mambaforge 
```

Wie zuvor wird auch dieser Befehl durch Drücken der `Entertaste` bestätigt.

<img alt="" src="/img/mamba/mamba-install-2.png" class="screenshot" />

Im folgenden muss noch die Benutzungsbestimmungen bestätigt werden (keine Angst: ihr kauft damit nichts).
Diese werden zunächst mit der `Enter`-Taste geöffnet 

<img alt="" src="/img/mamba/mamba-install-3.png" class="screenshot" />

Diese muss dann durch durch die Eingabe von `yes` und anschließendem `Enter` akzeptiert werden.

<img alt="" src="/img/mamba/mamba-install-4.png" class="screenshot" />

Die Installation wird dann mit einem weiteren `Enter` gestartet, auch diese kann einige Minuten Zeit brauchen.

Die Installation endet mit den folgenden Zeilen:

<img alt="" src="/img/mamba/mamba-install-5.png" class="screenshot" />

Hier muss abermals `yes` eingegeben und mit `Enter` bestätigt werden.

Die Installation ist beendet, wenn die letzte Zeile wieder die Eingabezeile anzeigt wird.

<img alt="" src="/img/mamba/mamba-install-6.png" class="screenshot" />

Verwendet werden kann mamba erst nach dem Schließen des Terminal Fensters und dem Öffenen eines neuen.

Im Neuen terminal fenster sollet nun _(base)_ am Anfang der der Eingabezeile stehen.

<img alt="" src="/img/mamba/mamba-install-7.png" class="screenshot" />

Nun müssen noch die Python-Pakete, installiert werden, die im Workshop vorgestellt werden.
Dafür verwenden wir eine sogenannte _virtuelle Umgebung_. Was eine solche Umgebung genau ist
und wofür die gut ist, erklären wir im Laufe des Workshops. Einfach gesprochen erstellen
wir eine separate Python Installation mit genau den Paketen die wir für den Workshop brauchen.

Dazu nutzen wir den folgenden Befehl:

```
mamba create -y -n toolbox python=3.11 ipython numpy matplotlib scipy uncertainties sympy
```

Die Installation beginnt mit der folgenden Ausgabe

<img alt="" src="/img/mamba/mamba-virtual-env-1.png" class="screenshot" />

und bedarf auch wieder etwas Zeit. Die Installation ist beendet, wenn wieder die Eingabezeile
angezeigt wird.

<img alt="" src="/img/mamba/mamba-virtual-env-2.png" class="screenshot" />

Nach erfolgreicher Installation kann die Installationsdatei _Mambaforge-Linux-x86-64.sh_
aus dem Downloads-Ordner gelöscht werden.

__Jetzt noch die Python-Installation [updaten](#update) und anschließend [testen](#test)!__


### <a id="TeXLive"></a>TeXLive

Im Terminal wird mit folgenden drei Befehlen das Installationsskript
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
echo 'export PATH="$HOME/.local/texlive/2023/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Jetzt einmal das Terminal schließen und für die weiteren Schritte ein neues öffnen.

In dem neuen Terminal die folgenden Befehle eingeben:

```
tlmgr option autobackup -- -1
tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```

Falls diese Installation aufgrund von zu geringem Speicherplatz nicht funktioniert,
gibt es [diese Möglichkeit](/install/latex_mini.html), eine minimale Version von
TeXLive zu installieren.


__Jetzt noch die Installation [testen](#test)!__

### <a id="VSCode"></a>Visual Studio Code

Visual Studio Code (VSCode) ist ein Text-Editor, der sowohl zum Schreiben von Programm-Code in Python als auch Texten in LaTeX geeignet ist.
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

Ein `Linksklick` auf die unterste Schaltfläche am linken Rand öffnet das _Extensions_-Menü.

<img alt="" src="/img/vscodium/vscode-1.png" class="screenshot" />

In diesem Menü können alle _Extensions_ durchsucht werden. Nach Eingabe von _LaTeX language_ in die
in das Eingabefeld wird die Extension _LaTeX language support_ in der Liste angezeigt. **Wichtig** ist,
dass der Name der Extension übereinstimmt, die Position in der angezeigten Liste ist nicht ausschlaggebend.
Es ist möglich, dass die Extension zu einem späteren Zeitpunkt nicht mehr das oberste Ergebnis in der Liste ist.

Eine Beschreibung der Funktion der Extension, kann in einem neuen Tab angezeigt werden,
indem mit einem `Linksklick` auf einen Listeneintrag geklickt wird.
Installiert wird die Extension durch einen `Linksklick` auf die Schaltfläche _Install_.

<img alt="" src="/img/vscodium/vscode-2.png" class="screenshot" />

Nach der Installation von neuen Extensions muss VSCode geschlossen und neu gestartet werden.

Nach erfolgreicher Installation wird die Extension (zusammen mit allen anderen installierten Extensions)
in der Liste _ENABLED_ aufgeführt, die angezeigt wird, wenn das Eingabefeld der Suche leer ist.

<img alt="" src="/img/vscodium/vscode-3.png" class="screenshot" />

Auch wenn es vielleicht ungewohnt ist, kann es von Vorteil sein, Software mit englischen Spracheinstellungen
zu verwenden. Um die Spracheinstellungen von VSCode zu ändern, müssen die folgenden Schritte befolgt werden.
Diese ist **nicht** nötig, wenn die Sprache bereits auf Englisch eingestellt ist oder eine Änderung der
Sprache nicht gewünscht ist.

Zum Öffnen der Spracheinstellungen muss zunächst die Taste `F1` gedrückt werden. Dies öffnet ein
Eingabefenster in dem nach Einstellungen gesucht werden kann.

<img alt="" src="/img/vscodium/vscode-4.png" class="screenshot" />

Hier muss nun nach _Configure Display Language_ gesucht werden. Die Einstellung kann dann durch Drücken
der `Entertaste` ausgewählt werden.

<img alt="" src="/img/vscodium/vscode-5.png" class="screenshot" />

Viele Programme verwenden Textdateien, um Einstellungen zu speichern. Die Details sind an dieser
Stelle aber noch nicht von Belang. In dieser Datei muss die Abkürzung der eingestellten Sprache,
`"de"` (Deutsch) auf `"en"`(Englisch) geändert werden. Danach muss die Datei mit `Strg + S` gespeichert
werden. Die Änderung der Sprache tritt erst nach dem Schließen und Neustarten von VSCode in Kraft.

<img alt="" src="/img/vscodium/vscode-6.png" class="screenshot" />

Mit `Strg + Shift + ö` oder über den Punkt _Terminal_ → _Neues Terminal_ kann ein Terminal in VSCodium geöffnet werden.
Klickt rechts auf den Pfeil nach unten, neben dem `+`,
und wählt den Punkt _Select Default Profile_ aus.
Dort dann auf den Punkt _Ubuntu-20.04 (WSL)_ klicken.

<img alt="" src="/img/vscodium/vscode-7.png" class="screenshot" />

### PDF-Betrachter

#### <a id="SumatraPDF"></a>Sumatra PDF

Als PDF-Betrachter für Windows sollte Sumatra PDF verwendet werden.
Die Verwendung von Acrobat Reader wird nicht empfohlen, da er die PDF-Datei blockiert,
sodass sie nicht von TeX überschrieben werden kann (warum das wichtig ist, erfährt man im Kurs).
Den Download findet man unter dem folgenden Link.

[Sumatra Download](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html){:target="_blank"}

Auf der Download-Seite kann dann die `x64` Version von Sumatra PDF mit einem `Linksklick` auf den
hervorgehobenen Link heruntergeladen werden.

<img alt="" src="/img/sumatra/sumatra-download.png" class="screenshot" />

Die heruntergeladene Datei befindet sich im Downloads-Ordner und kan durch einen doppelten `Linksklick` ausgeführt werden.

<img alt="" src="/img/sumatra/sumatra-install-1.png" class="screenshot" />

Infolgedessen öffnet sich das folgende Fenster in dem die Installation mit einem `Linksklick` auf _Installieren_ gestartet wird.

<img alt="" src="/img/sumatra/sumatra-install-2.png" class="screenshot" />

Das Fenster kann nach der Installation über das `X` geschlossen werden.

<img alt="" src="/img/sumatra/sumatra-install-3.png" class="screenshot" />

Zuletzt muss Sumatra PDF noch als Standard PDF-Betrachter eingestellet werden.
Dafür kann im Startmenü nach `Standard` gesucht werden. Anschließend muss dann
_Standard-Apps_ geöffnet werden.

<img alt="" src="/img/sumatra/sumatra-standard-app-1.png" class="screenshot" />

In dem geöffneten Fenster befindet sich unten der Link _Standard-Apps nach Dateityp auswählen_,

<img alt="" src="/img/sumatra/sumatra-standard-app-2.png" class="screenshot" />

durch klicken auf diesen wird ein weiteres Menü geöffnet (das Öffnen kann ein paar Sekunden dauern).
In diesem muss bis zu der Zeile nach unten gescrolled werden in der _.pdf_ in der ersten Spalte steht.

<img alt="" src="/img/sumatra/sumatra-standard-app-3.png" class="screenshot" />

Ist in der Zweiten Spalte bereits _SumatraPDF_ eingetragen, so muss nichts weiteres getan werden und 
dass Fenster kann wie gewöhnlich durch klicken auf das `X` geschlossen werden.

Ist statt _SumatraPDF_ ein anderes Programm eingetragen (z.B. _Acrobat Reader_ oder _Microsoft Edge_)
kann durch Klicken auf den Programmnamen ein Auswahlmenü geöffnet werden. In diesem muss dann 
_SumatraPDF_ angeklickt werden.

<img alt="" src="/img/sumatra/sumatra-standard-app-4.png" class="screenshot" />


#### <a id="evince"></a>Evince

Um (ohne viele Umstände) pdf-Dateien auch aus dem Windows-Terminal öffnen zu können, empfiehlt es sich auch einen PDF-Betrachter
für das WSL zu installieren. Dafür muss folgender Befehl in das Windows-Terminal eingegeben werden:
```
sudo apt install evince
```


## <a id="test"></a>Testen

Sollte während des Testens ein Fehler auftreten, kann die [Problembehandlung](#troubleshooting) helfen.

### Mamba: Python

Um die Python Installation (durch Mamba) zu testen, sollten alle offenen Fenster des Windows-Terminals
geschlossen und ein neues geöffnet werden.

Um die installierten Pakete nutzen zu können muss zunächts die _virtuelle Umgebung_  mit diesem Befehl aktivert werde:

```
mamba activate toolbox
```
Durch diesen Befehl ändert sich der Beginn der Eingabezeile von _(base)_ zu _(toolbox)_.

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
import numpy as np
```
```
import scipy
```
```
import sympy
```
```
import uncertainties
```

```
plt.plot([1, 2, 4])
```

Es sollte ein Fenster mit einem Koordinatensystem und einer eingezeichneten Linie erscheinen.

Insgesamt sollte das Terminal wie folgt aussehen:

<img alt="" src="/img/mamba/mamba-test-1.png" class="screenshot" />


Fehler machen sich zB so bemerkbar:

<img alt="" src="/img/mamba/mamba-test-2.png" class="screenshot" />


Mit dem Befehl
```
quit
```
kann das Programm _ipython_ im Anschluss beendet werden




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
This is LuaTeX, Version 1.17.0 (TeX Live 2023)
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


## <a id="update"></a>Aktualisieren

### Mamba

Um Updates für Anaconda zu installieren wird in einer Bash-Kommandozeile folgender Befehl eingetragen.
```
mamba update -n toolbox --all
```

<img alt="" src="/img/mamba/mamba-update-1.png" class="screenshot" />

Auch hier muss die Installation wieder mit einen `Y` gefolgt von einem `Enter` bestätigt werden.

<img alt="" src="/img/mamba/mamba-update-2.png" class="screenshot" />

Die Installation ist (mittlerweile) wie gewohnt abgeschlossen, wenn die Eingabezeile auf dem Terminal
angezeigt wird.


### Git, Make und weitere Unix-Tools

Um Updates für diese sogenannten Unix-Tools (Software für die Bash-Kommandozeile) zu erhalten
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

## <a id="troubleshooting"></a> Problembehandlung

Bei der Installation treten einige Fehler recht häufig auf. Hier werden die Lösungen zu diesen Problemen
gesammelt.


+ Die folgende Fehlermeldung bedeutet, dass noch kein *X-Server* gestartet wurde:
```
Could not connect to any X display.
```

+ Bei der Verwendung von matplotlib kann ein Fehler auftreten,
  der mit den folgenden Zeilen (oder ähnlichen) endet:
```
from PyQt5 import QtCore, QtGui, QtWidget
ImportError: libGL.so.1 connot open shared object file: No such file or directory
```
Dieser Fehler kann durch das Installieren einer Software-Bibliothek behoben werden.
Dazu muss der folgende Befehl in die Bash-Kommandozeile eingegeben werden.
```
sudo apt install qt5-default
```

+ Beim Abspeichern von matplotlib-Figuren
kommt ein Fehler ähnlich zu
**ghostscript-9.00 required**
```
sudo apt update
sudo apt install ghostscript
```

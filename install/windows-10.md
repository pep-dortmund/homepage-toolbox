---
layout: install
permalink: /install/windows_10/
title: Windows-10-Installation
---

__Bitte die folgenden Punkte unbedingt lesen:__

+ Diese Anleitung mag relativ lang erscheinen und im ersten Moment abschreckend wirken.
Wir versichern dir, dass diese Länge aber viel mehr ein Zeichen von Ausführlichkeit
ist, um sicherzustellen, dass du auch folgen kannst, wenn du bisher keine Berührungen
mit den Inhalten des Toolbox Workshops hattest.

+ Befolge die Anleitung daher konzentriert und gründlich, um keinen Schritt zu vergessen
und kontrolliere jedes Mal, dass du die Befehle richtig kopiert oder abgetippt hast.

+ Alle drei Abschnitte (Installieren, Testen, Aktualisieren) und deren Unterabschnitte sind notwendig.
Den Beginn jedes dieser drei Abschnitte erreichst du über das Inhaltsverzeichnis auf der rechten Seite.

+ Sollte es an irgendeiner Stelle zu Problemen kommen, überspringe diesen Schritt **nicht** einfach,
sondern melde dich bei uns. Unter [Hilfe](/problem/) findest du die Hinweise, wie du uns
am besten kontaktieren kannst.

Falls du __nicht__ am LaTeX-Kurs teilnehmen willst, ist der Abschnitt <a href="#TeXLive">TeXLive </a> optional.
Dann kannst du allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls du __nur__ am LaTeX-Kurs teilnehmen willst, ist der Abschnitt <a href="#Miniforge3">Python Installation: Miniforge3</a> optional.

Diese Installation verwendet das [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10){:target="_blank"} (WSL),
um eine Ubuntu-Installation verwenden zu können, ohne ein komplett neues Betriebssystem installieren zu müssen.


## <a id="Installieren"></a>Installieren

### <a id="Vorbereitungen"></a>Vorbereitungen

#### <a id="Windowsinfo"></a> Windows-Info: Betriebssystembuild-Nummer
Zunächst musst du einmal überprüfen, ob deine Windows-Installation aktuell ist.
Hierfür macht man einen `Rechtsklick` auf das Windows-Symbol in der Taskleiste,
gefolgt von einem `Linksklick` auf _System_.

<p align="center">
  <img alt="" src="/img/wsl/win10-buildnumber-1.png" style="max-width:60%;" />
</p>

In der Liste am linken Rand lautet der letzte Punkt _Info_ (dieser sollte bereits ausgewählt sein).
Hinter dem Wort _Betriebssystembuild_-Nummer kannst du die entsprechende Nummer ablesen.

<p align="center">
  <img alt="" src="/img/wsl/win10-buildnumber-2.png" style="max-width:90%;" />
</p>

Die Installation des WSL wurde im Vergleich zu den vergangenen Jahren erheblich vereinfacht.
Um diese Vereinfachungen nutzen zu können, muss die Nummer vor dem _._ mindestens _19041_ sein.

Sollte deine Nummer niedriger sein, empfehlen wir dir, die Updates für deine Windows-Installation
zu installieren. Dafür kannst du in dem obigen _Info_-Fenster in der Suchleiste nach "Update"
suchen und den Punkt _Nach Updates suchen_ auswählen.

<p align="center">
  <img alt="" src="/img/wsl/win10-updates-1.png" style="max-width:90%;" />
</p>

Anschließend kannst du über den Button `Nach Updates suchen` fehlende Updates installieren.

<p align="center">
  <img alt="" src="/img/wsl/win10-updates-2.png" style="max-width:90%;" />
</p>

Überprüfe nach der Installation der Updates und einem Neustart eures PCs noch einmal die
_Betriebssystembuild_-Nummer. Sollte diese immer noch nicht passen, melde dich bei uns.

#### <a id="Dateiendungen"></a>Dateiendungen einschalten

Die Endungen einer Datei (die Auskunft über die Art der Datei geben, z.B. `.pdf` für PDF-Dokumente)
sind unter Windows nicht standardmäßig aktiviert. Diese können und sollen aktiviert werden.

Diese Einstellung kann im Explorer vorgenommen werden. Dieser kann am einfachsten mit der Tastenkombination
`Windows` + `E`  geöffnet werden (`Windows` ist die Taste mit dem Windowslogo zwischen `Strg` und `Alt` unten links
auf der Tastatur).

Alternativ kann der Explorer in der Suche im Startmenü gefunden werden. Nach dem Öffnen des Startmenüs
wird automatisch eine Suche gestartet, wenn Buchstaben über die Tastatur eingegeben werden. Hier muss
nach `Explorer` gesucht werden. Durch einen Klick auf _Öffnen_ kann dann ein Explorer-Fenster geöffnet werden.

<p align="center">
  <img alt="" src="/img/explorer/explorer-start.png" class="screenshot" />
</p>

In der obersten Zeile gibt es den Punkt `Ansicht`, das Kästchen für den Punkt `Dateinamenerweiterungen` muss ausgewählt werden (ein schwarzer Haken muss im Kästchen zu sehen sein).

<p align="center">
  <img alt="" src="/img/explorer/explorer-fileext.png" class="screenshot" />
</p>

### Windows Subsystem for Linux (WSL)

Diese Anleitung funktioniert nur mit der passenden _Betriebssystembuild_-Nummer,
siehe Abschnitt <a href="#Vorbereitungen">Vorbereitungen</a>.

#### Installation des WSL
Zunächst muss eine PowerShell Konsole als Administrator gestartet werden.
Eine Möglichkeit dafür ist das Öffnen des Windows-Startmenüs. Durch Tippen des
Begriffs "Power" auf der Tastatur wird automatisch eine Suche gestartet. Klicke auf der rechten
Seite des Suchfensters den Punkt _Als Administrator ausführen_ an.

<p align="center">
  <img alt="" src="/img/wsl/win10-powershell-admin.png" class="screenshot" />
</p>

In den meisten Fällen wird das folgende Fenster erscheinen. Dieses muss mit _Ja_ bestätigt werden.
Diese Warnungen können auch im Folgenden noch auftreten, auch dann müssen diese mit _Ja_ bestätigt werden.
Es ist kein Problem, wenn dieses Fenster nicht erscheint.

<p align="center">
  <img alt="" src="/img/wsl/win10-admin-warning.png" class="screenshot" />
</p>

Nun öffnet sich ein Fenster, wie unten zu sehen; dies ist die PowerShell Konsole.
Um sicherzugehen, dass eine PowerShell mit Administrator-Rechten geöffnet wurde,
kann der Titel des Fensters überprüft werden, dieser muss mit _Administrator:_ beginnen.

<p align="center">
  <img alt="" src="/img/wsl/win10-powershell-admin-test.png" class="screenshot" />
</p>

In die PowerShell muss jetzt der folgende Befehl eingegeben werden. Dieser kann auch kopiert
und eingefügt werden; Einfügen funktioniert in der PowerShell mit einem `Rechtsklick`.
```
wsl --install
```

<p align="center">
  <img alt="" src="/img/wsl/win10-wsl-install.png" class="screenshot" />
</p>

Durch Drücken der `Enter`-Taste wird die Eingabe bestätigt.

Diese Installation kann einige Minuten in Anspruch nehmen, während dieser Zeit werden einige
stilisierte Ladebalken angezeigt. Nach dem erfolgreichen Abschluss dieses Vorgangs sieht die
Ausgabe wie folgt aus

<p align="center">
  <img alt="" src="/img/wsl/win10-wsl-install-complete.png" class="screenshot" />
</p>

Wie der letzten Zeile zu entnehmen ist, muss der PC jetzt einmal neu gestartet werden.

Nach dem Neustart öffnet sich automatische das folgende Fenster, in dem die
Installation des WSL durch Einrichten des Benutzerkontos abgeschlossen werden kann.

<p align="center">
  <img alt="" src="/img/wsl/win10-wsl-ubuntu-complete.png" class="screenshot" />
</p>

#### <a id="Einrichten des Benutzerkontos">Einrichten eines Benutzerkontos

Nach erfolgreicher Installation erscheint die Aufforderung, einen Benutzernamen für
das Linux-Betriebssystem einzugeben.
Dieser Linux-Benutzername kann frei gewählt werden.
Der Linux-Benutzername __kann, muss aber nicht,__
mit dem Windows-Benutzernamen übereinstimmen.


{% include admonition.html type="warning" title="Wichtig" body="Der Benutzername darf <b>nur</b> Kleinbuchstaben und <b>keine</b> Leerzeichen enthalten." %}

Die Eingabe des Benutzernamens wird mit Drücken der `Enter`-Taste bestätigt.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-username.png" class="screenshot" />
</p>

Im Anschluss wird auch nach einem Passwort für das Linux-Betriebssystem gefragt.
Aus Sicherheitsgründen, wird das eingegebene Passwort nicht angezeigt.
Die Eingabe wird durch Drücken der `Enter`-Taste bestätigen.
Im Anschluss muss das Passwort erneut eingegeben werden, um Tippfehler auszuschließen.
Auch diese Eingabe wird wieder mit der `Enter`-Taste bestätigt.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-passwd.png" class="screenshot" />
</p>

Sollte die Eingabe des zweiten Passworts nicht mit dem ersten übereinstimmen,
so muss ein erneuter Versuch zunächst mit `y` bestätigt werden.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-wrong-passwd-1.png" class="screenshot" />
</p>

Danach wird die Eingabe des Passworts wiederholt (das Passwort muss wie zuvor zweimal eingegeben werden).

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-wrong-passwd-2.png" class="screenshot" />
</p>

Ist die Installation erfolgreich durchgeführt worden,
erhält man die im nächsten Screenshot gezeigte Ausgabe.
Die letzte Zeile (im Screenshot: `luckyjosh@DESKTOP-L02KDEF:~$`) wird im folgenden **Eingabezeile** genannt.

Die Eingabezeile besteht aus zwei Teilen. Die Information vor dem Doppelpunkt setzt sich dabei aus dem Benutzernamen (im Screenshot: `luckyjosh`) und dem Computernamen (im Screenshot: `DESKTOP-L02KDEF`) zusammen. Hier werden bei dir andere Namen stehen.
Der Teil nach dem Doppelpunkt besteht aus einer Tilde `~` und einem Dollarzeichen `$`.
Dies ist der typische Aufbau der Linux-Kommandozeile `bash`, die maßgeblich zur Interaktion
mit dem Linux-Betriebssystem verwendet wird. Eine detailliertere Einführung in den Umgang erfolgt während
des Workshops, im Folgenden wird diese jedoch schon zur Installation der benötigten Software verwendet.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-correct-passwd.png" class="screenshot" />
</p>

Vor dem nächsten Abschnitt könnt ihr das Terminal Fenster schließen. Indem ihr den Befehl
```
exit
```
eingebt oder auf das `X` oben rechts klickt.

### <a id="WindowsTerminal"></a>Windows Terminal

Das Windows Terminal stellt einen Ersatz der Standard-WSL-Kommandozeile dar. Das Windows Terminal kann
aus dem Microsoft Store installiert werden.

Auch der Microsoft Store kann über die Suche im Startmenü gefunden werden:

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-store-1.png" class="screenshot" />
</p>

Suche im Microsoft Store nach `Terminal` und wähle _Windows Terminal_ aus:

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-store-2.png" class="screenshot" />
</p>

Und im folgenden Fenster `Herunterladen` anklicken:

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-store-3.png" class="screenshot" />
</p>

Im Anschluss an die Installation kann der Microsoft Store geschlossen werden.

Das Windows Terminal kann über das Startmenü geöffnet werden. Direkt nach der Installation
befindet sich das Terminal für gewöhnlich ganz oben in der Liste, ansonsten kann hier wieder
die Suche verwendet werden. Geöffnet wird das Terminal durch einen Klick auf _Öffnen_ in der
rechten Spalte.

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-start.png" class="screenshot" />
</p>

Beim ersten Öffnen des Windows Terminals erscheint ein Informations-Banner am oberen Fensterrand,
welches mit dem `X` am rechten Rand geschlossen werden kann.

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-default-terminal.png" class="screenshot" />
</p>

Standardmäßig wird mit dem Windows Terminal die Windows PowerShell geöffnet (zu erkennen an dem Text in dem Tab).
Um eine Ubuntu-Kommandozeile zu öffnen, klicke zunächst oben im Fenster auf den Pfeil nach unten, es öffnet sich ein Dropdown-Menü,
in dem `Einstellungen` angeklickt werden muss:

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-settings-1.png" class="screenshot" />
</p>

Hier kannst du einstellen, dass sich beim Start von Windows Terminal standardmäßig Ubuntu öffnet.
Unter _Starten_ in der linken Spalte gibt es den Einstellungspunkt _Standardprofil_, durch Klicken
auf den Pfeil nach unten öffnet sich eine Auswahl.

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-settings-2.png" class="screenshot" />
</p>

In der Auswahl dann Ubuntu auswählen (falls _Ubuntu_ mehrfach auftaucht, den Punkt mit dem Pinguin-Icon):

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-settings-3.png" class="screenshot" />
</p>

Im Anschluss kann das Terminal Fenster geschlossen werden.

### Git, Make und weiteres

<div class="admonition warning">
<p class="admonition-title">Wichtig</p>
  <p>
    In diesem und den folgenden Abschnitten werden einige Befehle in das Windows Terminal eingegeben.
    Diese werden in einem Codeblock wie diesem angegeben:
  </p>
  <pre class="admonition highlight"><code>Beispielbefehl</code></pre>
  <p>Im Terminal muss <b>jeder Codeblock einzeln</b> eingeben und mit <code>Enter</code> bestätigt werden.</p>
</div>



Für die Installation der beiden Programme git und make muss zunächst das Windows Terminal geöffnet werden
(wie im Abschnitt <a href="#WindowsTerminal">Windows Terminal</a> über das Startmenü).

Zunächst muss ein Update mit dem folgenden Befehl durchgeführt werden:
```
sudo apt update
```
Die Ausführung dieses Befehls kann einige Zeit in Anspruch nehmen und setzt eine
Internetverbindung voraus.

Befehle, die mit `sudo` beginnen, erfordern besondere Zugriffsrechte. Daher muss zunächst immer
das Linux-Benutzerpasswort (**nicht** notwendigerweise das Windows-Benutzerpasswort) eingegeben werden.

<p align="center">
  <img alt="" src="/img/unix/unix-1.png" class="screenshot" />
</p>

Ein erfolgreiches Update sieht in etwa wie folgt aus, jedoch kann die ausgegebene Liste der Programme,
die upgedatet werden können, beim ersten Ausführen wesentlich länger sein.

<p align="center">
  <img alt="" src="/img/unix/unix-2.png" class="screenshot" />
</p>

Die Updates müssen nun noch installiert werden, denn bisher wurden diese nur heruntergeladen.
Dies erfolgt durch Eingabe des Befehls
```
sudo apt upgrade
```
und auch dieser Befehl wird mit der `Enter`-Taste bestätigt.
Anschließend kann eine erneute Bestätigung durch Eingabe des Buchstabens `y` und drücken der
`Enter`-Taste nötig sein. (Auch hier wird die ausgegebene Liste wesentlich länger sein.)

<p align="center">
  <img alt="" src="/img/unix/unix-3.png" class="screenshot" />
</p>

Nun können die drei Programme `git`, `make` und `curl` und bereits Abhängigkeiten für `biber` installiert werden. Dies erfolgt durch die Eingabe des
Befehls
```
sudo apt install git make curl
```
und anschließende Bestätigung mit der `Enter`-Taste. Auch diese Installation kann wieder etwas Zeit in Anspruch nehmen.

<p align="center">
  <img alt="" src="/img/unix/unix-4.png" class="screenshot" />
</p>

Eine erfolgreiche Installation, wie unten gezeigt, kann daran erkannt werden, dass keine Fehlermeldungen ausgegeben werden.

<p align="center">
  <img alt="" src="/img/unix/unix-5.png" class="screenshot" />
</p>

#### Git-Einstellungen

Für Git müssen noch ein paar Einstellungen vorgenommen werden.
Dafür werden in das Windows Terminal wie zuvor
die folgenden Befehle eingegeben und jeweils mit der `Enter`-Taste bestätigt.

{% include admonition.html type="warning" title="Wichtig" body="Anstelle von <code>Max Mustermann</code> solltest du natürlich deinen <b>eigenen Namen</b> und auch deine <b>eigene E-Mail-Adresse</b> verwenden!" %}

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

Hier wurden absichtlich keine Screenshots eingefügt, damit du den Umgang mit dem Windows Terminal selbst üben kannst.
Falls noch Unsicherheit darüber besteht, was mit dem obigen Befehl angestellt werden soll, kann zunächst mit
der restlichen Anleitung (mit Bildern) fortgefahren werden. Diese Einstellung kann dann im Anschluss mit mehr
Sicherheit nachgeholt werden.

#### Installationsordner `~/.local`

Für die Installation von [Miniforge3 (Python)](#Miniforge3) und [TeXLive (LaTeX)](#TeXLive) wird noch ein Ordner benötigt. Dieser kann mit dem folgenden Befehl erstellt werden.

```
mkdir -p ~/.local
```

Dieser Befehl erstellt einen Ordner mit dem Namen `.local`, falls dieser nicht schon existiert
und tut gar nichts, falls dieser Ordner schon existiert.

### <a id="Miniforge3"></a>Python Installation: Miniforge3

Für die Installation der Programme, die nötig sind, um die Programmiersprache Python komfortabel
nutzen zu können, verwenden wir das Tool `mamba`.

Die Installationsdatei _Miniforge3-Linux-x86-64.sh_ kann, durch die Eingabe der folgenden Befehle
ins Windows Terminal, heruntergeladen werden:

```
cd ~/.local
```
Dieser Befehl ändert den aktuellen Pfad auf den Ordner, in den die Installationsdatei heruntergeladen werden soll.
Der aktuelle Pfad wird zwischen dem `:` und `$` angezeigt, dieser sollte nun `~/.local` sein.

```
curl -LO https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
```
Dieser Befehl lädt die Installationsdatei herunter. Der Download kann einige Zeit in Anspruch nehmen.

```
ls
```
Dieser Befehl zeigt alle Dateien an, die sich im aktuellen Pfad befinden. Die Datei _Miniforge3-Linux-x86-64.sh_
sollte hier aufgeführt sein.

<p align="center">
  <img alt="" src="/img/mamba/mamba-download.png" class="screenshot" />
</p>

Zum Installieren muss der folgende Befehl ausgeführt werden.

```
bash Miniforge3-Linux-x86_64.sh -p ~/.local/conda
```
Wie zuvor wird auch dieser Befehl durch Drücken der `Enter`-Taste bestätigt.

Im Folgenden muss noch die Benutzungsbestimmungen bestätigt werden (keine Angst: Du kaufst damit nichts).
Diese werden zunächst mit der `Enter`-Taste geöffnet

<p align="center">
  <img alt="" src="/img/mamba/mamba-install-1.png" class="screenshot" />
</p>

Abhängig von der Größe des Terminal Fensters, kann es vorkommen, dass der Text nur zeilenweise
ausgegeben wird. Dies erkennst du daran, dass in der letzten Zeile _`--More--`_ steht.

<p align="center">
  <img alt="" src="/img/mamba/mamba-install-2.png" class="screenshot" />
</p>

Drücke dann mehrfach auf die `Enter`-Taste, um zum Ende (siehe nächster Screenshot)
der Benutzungsbestimmung zu gelangen.
Am Ende der Benutzungsbestimmungen müssen diese dann durch die Eingabe von `yes`
und anschließendem `Enter` akzeptiert werden.

<p align="center">
  <img alt="" src="/img/mamba/mamba-install-3.png" class="screenshot" />
</p>

Die Installation wird dann mit einem weiteren `Enter` gestartet, auch diese kann einige Minuten Zeit brauchen.

<p align="center">
  <img alt="" src="/img/mamba/mamba-install-4.png" class="screenshot" />
</p>

Die Installation endet mit den folgenden Zeilen:
Hier muss abermals `yes` eingegeben und mit `Enter` bestätigt werden.

<p align="center">
  <img alt="" src="/img/mamba/mamba-install-5.png" class="screenshot" />
</p>

Wenn die letzte Zeile wieder die Eingabezeile ist, ist die Installation beendet.

<p align="center">
  <img alt="" src="/img/mamba/mamba-install-6.png" class="screenshot" />
</p>

{% include admonition.html type="warning" title="Wichtig" body="Verwendet werden kann mamba erst
nach dem Schließen des Terminal Fensters und dem Öffnen eines Neuen." %}

Im neuen Terminal Fenster sollte nun _(base)_ am Anfang der Eingabezeile stehen.

<p align="center">
  <img alt="" src="/img/mamba/mamba-install-7.png" class="screenshot" />
</p>

Jetzt müssen noch die Python-Pakete installiert werden, die im Workshop vorgestellt werden.
Dafür verwenden wir eine sogenannte _virtuelle Umgebung_. Was eine solche Umgebung genau ist
und wofür die gut ist, erklären wir im Laufe des Workshops. Einfach gesprochen erstellen
wir eine separate Python Installation mit genau den Paketen, die wir für den Workshop brauchen.

Dazu nutzen wir den folgenden Befehl:

```
mamba create -y -n toolbox python=3.13 ipython numpy matplotlib scipy uncertainties sympy
```

Die Installation beginnt mit der folgenden Ausgabe

<p align="center">
  <img alt="" src="/img/mamba/mamba-virtual-env-1.png" class="screenshot" />
</p>

und bedarf auch wieder etwas Zeit. Die Installation ist beendet, wenn wieder die Eingabezeile
angezeigt wird.

<p align="center">
  <img alt="" src="/img/mamba/mamba-virtual-env-2.png" class="screenshot" />
</p>

Nach erfolgreicher Installation kann die Installationsdatei _Miniforge3-Linux-x86-64.sh_
mit dem Befehl

```
rm ~/.local/Miniforge3-Linux-x86_64.sh
```
gelöscht werden.

### <a id="TeXLive"></a>TeXLive

Im Terminal wird mit den folgenden drei Befehlen das Installationsskript
heruntergeladen und ausgeführt.
```
cd ~/.local
```

```
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
```

```
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Die Installation startest du mit `I` und `Enter`.

Nach der Installation muss dem System mitgeteilt werden, wo LaTeX installiert wurde,
das machen wir in der Datei `~/.bashrc`.
Führe dazu folgenden Befehl im Terminal aus:

```
echo 'export PATH="$HOME/.local/texlive/2025/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Jetzt einmal das Terminal schließen und für die weiteren Schritte ein Neues öffnen.

In dem neuen Terminal die folgenden Befehle eingeben:

```
tlmgr option autobackup -- -1
```

```
tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```

```
luaotfload-tool --update --force
```

Falls diese Installation aufgrund von zu geringem Speicherplatz nicht funktioniert,
gibt es [diese Möglichkeit](/install/latex_mini/), eine minimale Version von
TeXLive zu installieren.

### <a id="VSCode"></a>Visual Studio Code (VSCode)

#### Installation
Visual Studio Code (VSCode) ist ein Text-Editor, der sowohl zum Schreiben von Programm-Code in Python als auch Texten in LaTeX geeignet ist. Darüber hinaus hat dieser auch noch viele weitere Funktionen.

VSCode kann, wie das Windows Terminal, über den Microsoft Store installiert werden.
Der Microsoft Store wird dafür, genauso wie im Abschnitt <a href="#WindowsTerminal">Windows Terminal</a>, geöffnet.
Durch die Suche im Microsoft Store nach `Visual Studio Code` kann in der Liste der entsprechende Punkt ausgewählt werden:

<p align="center">
  <img alt="" src="/img/vscodium/vscode-download-1.png" class="screenshot" />
</p>

Auf der folgenden Seite kann VSCode durch einen Klick auf den Button `Installieren` installiert werden.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-download-2.png" class="screenshot" />
</p>

Geöffnet werden kann VSCode nach der Installation über das Startmenü (wie zuvor wird durch Eingabe von `Visual`
automatisch eine Suche begonnen), VSCode kann dann durch einen Klick auf `Öffnen` geöffnet werden.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-start.png" class="screenshot" />
</p>

Beim ersten Start von VSCode nach der Installation, wird in der rechten unteren Ecke eine Infobox angezeigt,
in dieser muss der Button `Install` angeklickt werden.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-prompt-wsl-plugin.png" style="max-width:90%;" />
</p>

#### VSCode: Sprache

Auch wenn es vielleicht ungewohnt ist, kann es von Vorteil sein, Software mit englischen Spracheinstellungen
zu verwenden. Um die Spracheinstellungen von VSCode zu ändern, müssen die folgenden Schritte befolgt werden.
Dies ist **nicht** nötig, wenn die Sprache bereits auf Englisch eingestellt ist oder eine Änderung der
Sprache nicht gewünscht ist.

Zum Öffnen der Spracheinstellungen muss zunächst die Taste `F1` gedrückt werden. Dies öffnet ein
Eingabefenster, in dem nach Einstellungen gesucht werden kann.

Hier muss nun nach _Configure Display Language_ gesucht werden. Die Einstellung kann dann durch Drücken
der `Enter`-Taste ausgewählt werden.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-language-1.png" class="screenshot" />
</p>

Im folgenden Auswahlmenü kann die gewünschte Sprache mit einem `Linksklick` ausgewählt werden.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-language-2.png" class="screenshot" />
</p>

Die gewählte Sprache wird gegebenenfalls heruntergeladen und wird nach einem Neustart von VSCode nutzbar,
der im folgenden Fenster ausgeführt werden kann.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-language-3.png" class="screenshot" />
</p>

#### VSCode: Terminal einrichten

Mit Tastenkombination `Strg` + `Shift` + `ö` oder über die Menüleiste: _Terminal_ → _Neues Terminal_
kann ein Terminal in VSCode geöffnet werden. Dieses Terminal ist nach der ersten Installation aber
die Windows Powershell. Wie zuvor muss das Terminal noch umgestellt werden.
Klickt rechts auf den Pfeil nach unten, neben dem `+`, und wählt den Punkt _Select Default Profile_ aus.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-terminal-1.png" class="screenshot" />
</p>

In der folgenden Auswahl auf _Ubuntu (WSL)_ klicken.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-terminal-2.png" class="screenshot" />
</p>

Anschließend kann das schon geöffnete Terminal mit einem Klick auf die Mülltonne geschlossen werden.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-terminal-3.png" class="screenshot" />
</p>

Wird nun erneut ein Terminal mit `Strg` + `Shift` + `ö` geöffnet, so sollte dieses nun wie das (mittlerweile)
gewohnte Terminal aussehen:

<p align="center">
  <img alt="" src="/img/vscodium/vscode-terminal-4.png" class="screenshot" />
</p>

### PDF-Betrachter

#### <a id="SumatraPDF"></a>Sumatra PDF

Als PDF-Betrachter für Windows sollte Sumatra PDF verwendet werden.
Die Verwendung von Acrobat Reader wird nicht empfohlen, da dieser die PDF-Datei blockiert,
sodass sie nicht von TeX überschrieben werden kann (warum das wichtig ist, erfährst du im Workshop).
Den Download findest du unter dem folgenden Link.

[Sumatra Download](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html){:target="_blank"}

Auf der Download-Seite kann dann die `x64` Version von Sumatra PDF mit einem `Linksklick` auf den
hervorgehobenen Link heruntergeladen werden.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-download.png" class="screenshot" />
</p>

Die heruntergeladene Datei befindet sich im Downloads-Ordner und kann durch einen doppelten `Linksklick` ausgeführt werden.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-install-1.png" class="screenshot" />
</p>

Infolgedessen öffnet sich das folgende Fenster, in dem die Installation mit einem `Linksklick` auf _Installieren_ gestartet wird.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-install-2.png" class="screenshot" />
</p>

Das Fenster kann nach der Installation über das `X` geschlossen werden.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-install-3.png" class="screenshot" />
</p>

Zuletzt muss Sumatra PDF noch als Standard PDF-Betrachter eingestellt werden.
Dafür kann im Startmenü nach `Standard` gesucht werden. Anschließend muss dann
_Standard-Apps_ geöffnet werden.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-standard-app-1.png" class="screenshot" />
</p>

In dem geöffneten Fenster befindet sich unten der Link _Standard-Apps nach Dateityp auswählen_,

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-standard-app-2.png" class="screenshot" />
</p>

durch Klicken auf diesen wird ein weiteres Menü geöffnet (das Öffnen kann ein paar Sekunden dauern).
In diesem muss bis zu der Zeile nach unten gescrollt werden, in der _.pdf_ in der ersten Spalte steht.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-standard-app-3.png" class="screenshot" />
</p>

Ist in der zweiten Spalte bereits _SumatraPDF_ eingetragen, so muss nichts Weiteres getan werden und
das Fenster kann wie gewöhnlich durch Klicken auf das `X` geschlossen werden.

Ist statt _SumatraPDF_ ein anderes Programm eingetragen (z.B. _Acrobat Reader_ oder _Microsoft Edge_)
kann durch Klicken auf den Programmnamen ein Auswahlmenü geöffnet werden. In diesem muss dann
_SumatraPDF_ angeklickt werden.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-standard-app-4.png" class="screenshot" />
</p>

#### <a id="evince"></a>Evince

Um (ohne viele Umstände) PDF-Dateien auch aus dem Windows Terminal öffnen zu können, empfiehlt es sich auch einen PDF-Betrachter
für das WSL zu installieren. Dafür muss folgender Befehl in das Windows Terminal eingegeben werden:
```
sudo apt install evince
```

## <a id="test"></a>Testen

### Mamba: Python

Um die Python Installation (durch Mamba) zu testen, sollten alle offenen Fenster des Windows Terminals
geschlossen und ein Neues geöffnet werden.

Um die installierten Pakete nutzen zu können, muss zunächst die _virtuelle Umgebung_  mit diesem Befehl aktiviert werden:

```
mamba activate toolbox
```
Durch diesen Befehl ändert sich der Beginn der Eingabezeile von _(base)_ zu _(toolbox)_.

In das Windows Terminal werden nun nacheinander die folgenden Befehle eingeben. Nach Eingabe des ersten Befehls
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

<p align="center">
  <img alt="" src="/img/mamba/mamba-test-1.png" class="screenshot" />
</p>

Fehler machen sich z.B. so bemerkbar:

<p align="center">
  <img alt="" src="/img/mamba/mamba-test-2.png" class="screenshot" />
</p>

Mit dem Befehl
```
quit
```
kann das Programm _ipython_ im Anschluss beendet werden.


Beim Ausführen von `%matplotlib` kann es vorkommen, dass der Fehler
```
qt.qpa.plugin: Could not find the Qt platform "wayland" in ""
```
angezeigt wird. Dieser lässt sich mit einer Umgebungsvariablen in der Datei `~/.bashrc`
beheben. Führe dazu folgenden Befehl im Terminal aus:
```
echo 'export QT_QPA_PLATFORM=xcb' >> ~/.bashrc
```

### Make

Make kann durch Öffnen eines Windows Terminals und durch Eingeben des folgenden Befehls getestet werden.

```
make
```

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:
```
    make: *** No targets specified and no makefile found.  Stop.
```

### TeXLive

Die TeXLive Installation wird ebenfalls unter Verwendung des Windows Terminals getestet.
In dieses wird der folgende Befehl eingegeben.

```
luatex
```

Es sollte folgende oder ähnliche Ausgabe erscheinen:

```
This is LuaTeX, Version 1.18.0 (TeX Live 2024)
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
Der Test-Befehl lautet:
```
texdoc texlive
```

## <a id="update"></a>Aktualisieren

### Mamba

Um Updates für mamba zu installieren, wird in einem Windows Terminal folgender Befehl eingetragen.
```
mamba update -n toolbox --all
```

<p align="center">
  <img alt="" src="/img/mamba/mamba-update-1.png" class="screenshot" />
</p>

Auch hier muss die Installation wieder mit einem `Y` gefolgt von einem `Enter` bestätigt werden.

<p align="center">
  <img alt="" src="/img/mamba/mamba-update-2.png" class="screenshot" />
</p>

Die Installation ist (mittlerweile) wie gewohnt abgeschlossen, wenn die Eingabezeile auf dem Terminal
angezeigt wird.

### Git, Make und weitere Unix-Tools

Um Updates für diese sogenannten Unix-Tools zu erhalten,
müssen wie schon nach der Installation nacheinander die beiden folgenden Befehle in ein
Windows Terminal eingegeben werden.
```
sudo apt update
```
```
sudo apt upgrade
```

### TeXLive

Die Updates für TeXLive werden durch Eingeben des folgenden Befehls in ein Windows Terminal installiert.
```
tlmgr update --self --all --reinstall-forcibly-removed
```

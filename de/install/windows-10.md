---
title: Windows-10-Installation
---

Diese Installation verwendet das [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install) (WSL), um eine Ubuntu-Installation verwenden zu können, ohne ein komplett neues Betriebssystem installieren zu müssen.

:::{caution} Bitte die folgenden Punkte unbedingt lesen

+ Diese Anleitung mag relativ lang erscheinen und im ersten Moment abschreckend wirken.
Wir versichern dir, dass diese Länge aber viel mehr ein Zeichen von Ausführlichkeit
ist, um sicherzustellen, dass du auch folgen kannst, wenn du bisher keine Berührungen
mit den Inhalten des Toolbox Workshops hattest.

+ Befolge die Anleitung daher konzentriert und gründlich, um keinen Schritt zu vergessen,
und kontrolliere jedes Mal, dass du die Befehle richtig kopiert oder abgetippt hast.

+ Alle drei Abschnitte (Installieren, Testen, Aktualisieren) und deren Unterabschnitte sind **notwendig**.
Den Beginn jedes dieser drei Abschnitte erreichst du über das Inhaltsverzeichnis auf der rechten Seite.

+ Sollte es an irgendeiner Stelle zu Problemen kommen, überspringe diesen Schritt **nicht**,
sondern melde dich bei uns. Unter [Hilfe](/problem/) findest du die Hinweise,
wie und mit welchen Informationen du uns am besten kontaktieren kannst.

Falls du **nicht** am LaTeX-Kurs teilnehmen willst, ist der Abschnitt {ref}`win10-texlive` optional.
Dann kannst du allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls du **nur** am LaTeX-Kurs teilnehmen willst, ist der Abschnitt {ref}`win10-miniforge3` optional.
:::


## Installieren

(win10-installation-vorbereitungen)=
### Vorbereitungen

####  Windows-Info: Betriebssystembuild-Nummer
Zunächst musst du einmal überprüfen, ob deine Windows-Installation aktuell ist.
Hierfür machst du einen `Rechtsklick` auf das Windows-Symbol in der Taskleiste,
gefolgt von einem `Linksklick` auf _System_.

```{image} /img/wsl/win10-buildnumber-1.png
:alt:
:class: screenshot
:align: center
```

In der Liste am linken Rand lautet der letzte Punkt _Info_ (dieser sollte bereits ausgewählt sein).
Hinter dem Wort _Betriebssystembuild_-Nummer kannst du die entsprechende Nummer ablesen.

```{image} /img/wsl/win10-buildnumber-2.png
:alt:
:class: screenshot
:align: center
```

Die Installation des WSL wurde im Vergleich zu den vergangenen Jahren erheblich vereinfacht.
Um diese Vereinfachungen nutzen zu können, muss die Nummer vor dem _._ mindestens _19041_ sein.

Sollte deine Nummer niedriger sein, empfehlen wir dir, die Updates für deine Windows-Installation
zu installieren. Dafür kannst du in dem obigen _Info_-Fenster in der Suchleiste nach „Update“
suchen und den Punkt _Nach Updates suchen_ auswählen.

```{image} /img/wsl/win10-updates-1.png
:alt:
:class: screenshot
:align: center
```

Anschließend kannst du über den Button `Nach Updates suchen` fehlende Updates installieren.

```{image} /img/wsl/win10-updates-2.png
:alt:
:class: screenshot
:align: center
```

Überprüfe nach der Installation der Updates und einem Neustart deines PCs noch einmal die
_Betriebssystembuild_-Nummer. Sollte diese immer noch nicht passen, melde dich bei uns.


#### Dateiendungen einschalten

Die Endungen einer Datei (die Auskunft über die Art der Datei geben, z. B. `.pdf` für PDF-Dokumente)
sind unter Windows nicht standardmäßig aktiviert. Diese können und sollen aktiviert werden.

Diese Einstellung kannst du im Datei-Explorer vornehmen.
Dieser kann am einfachsten mit der Tastenkombination `Windows` + `E` geöffnet werden
(`Windows` ist die Taste mit dem Windowslogo zwischen
`Strg` und `Alt` unten links auf der Tastatur).

Alternativ kann der Explorer in der Suche im Startmenü gefunden werden.
Nach dem Öffnen des Startmenüs wird automatisch eine Suche gestartet,
wenn Buchstaben über die Tastatur eingegeben werden.
Hier musst du `Explorer` eingeben.
Durch einen Klick auf _Öffnen_ kann dann ein Explorer-Fenster geöffnet werden.

```{image} /img/explorer/explorer-start.png
:alt:
:class: screenshot
:align: center
```

In der obersten Zeile gibt es den Punkt `Ansicht`,
das Kästchen für den Punkt `Dateinamenerweiterungen` muss ausgewählt werden
(ein schwarzer Haken muss im Kästchen zu sehen sein).

```{image} /img/explorer/explorer-fileext.png
:alt:
:class: screenshot
:align: center
```

### Windows Subsystem for Linux (WSL)

Diese Anleitung funktioniert nur mit der passenden _Betriebssystembuild_-Nummer,
siehe Abschnitt {ref}`win10-installation-vorbereitungen`.

#### Installation des WSL
Zunächst musst du eine PowerShell Konsole als Administrator starten.
Eine Möglichkeit dafür ist das Öffnen des Windows-Startmenüs.
Durch Tippen des Begriffs „Power“ auf der Tastatur wird automatisch eine Suche gestartet.
Klicke auf der rechten Seite des Suchfensters den Punkt _Als Administrator ausführen_ an.

```{image} /img/wsl/win10-powershell-admin.png
:alt:
:class: screenshot
:align: center
```

In den meisten Fällen wird das folgende Fenster erscheinen.
Dieses musst du mit _Ja_ bestätigen.
Diese Warnungen können auch im Folgenden noch auftreten,
auch dann müssen diese mit _Ja_ bestätigt werden.
Es ist kein Problem, wenn dieses Fenster nicht erscheint.

```{image} /img/wsl/win10-admin-warning.png
:alt:
:class: screenshot
:align: center
```

Nun öffnet sich ein Fenster, wie unten zu sehen; dies ist die PowerShell Konsole.
Um sicherzugehen, dass du eine PowerShell mit Administrator-Rechten geöffnet hast,
kannst du den Titel des Fensters überprüfen, dieser muss mit _Administrator:_ beginnen.

```{image} /img/wsl/win10-powershell-admin-test.png
:alt:
:class: screenshot
:align: center
```

In die PowerShell gibst du den folgenden Befehl ein.
Dieser kann auch kopiert und eingefügt werden;
Einfügen funktioniert in der PowerShell mit einem `Rechtsklick`.
```powershell
wsl --install
```

```{image} /img/wsl/win10-wsl-install.png
:alt:
:class: screenshot
:align: center
```

Durch Drücken der `Enter`-Taste wird die Eingabe bestätigt.

Diese Installation kann einige Minuten in Anspruch nehmen, während dieser Zeit werden einige
stilisierte Ladebalken angezeigt. Nach dem erfolgreichen Abschluss dieses Vorgangs sieht die
Ausgabe wie folgt aus

```{image} /img/wsl/win10-wsl-install-complete.png
:alt:
:class: screenshot
:align: center
```

Wie der letzten Zeile zu entnehmen ist, muss der PC jetzt einmal neu gestartet werden.

Nach dem Neustart soll sich automatisch das folgende Fenster öffnen,
in dem die Installation des WSL durch Einrichten des Benutzerkontos
abgeschlossen werden kann.

```{image} /img/wsl/win10-wsl-ubuntu-complete.png
:alt:
:class: screenshot
:align: center
```


#### Einrichten eines Benutzerkontos

Nach erfolgreicher Installation erscheint die Aufforderung,
einen Benutzernamen für das Linux-Betriebssystem einzugeben.
Diesen Linux-Benutzernamen kannst du frei wählen.
Der Linux-Benutzername __kann, muss aber nicht,__
mit deinem Windows-Benutzernamen übereinstimmen.


:::{caution} Wichtig
Der Benutzername darf **nur** Kleinbuchstaben und **keine** Leerzeichen enthalten.
:::

Die Eingabe des Benutzernamens wird mit Drücken der `Enter`-Taste bestätigt.

```{image} /img/windows-ubuntu/wsl-ubuntu-username.png
:alt:
:class: screenshot
:align: center
```

Im Anschluss wird auch nach einem Passwort für das Linux-Betriebssystem gefragt.
Aus Sicherheitsgründen wird das eingegebene Passwort nicht angezeigt.
Die Eingabe bestätigst du mit dem Drücken der `Enter`-Taste.
Im Anschluss musst du das Passwort erneut eingeben, um Tippfehler auszuschließen.
Auch diese Eingabe wird wieder mit der `Enter`-Taste bestätigt.

:::{caution} Wichtig
Merke dir dein Passwort.
:::

```{image} /img/windows-ubuntu/wsl-ubuntu-passwd.png
:alt:
:class: screenshot
:align: center
```

Sollte die Eingabe des zweiten Passworts nicht mit dem ersten übereinstimmen,
so muss ein erneuter Versuch zunächst mit `y` bestätigt werden.

```{image} /img/windows-ubuntu/wsl-ubuntu-wrong-passwd-1.png
:alt:
:class: screenshot
:align: center
```

Danach wird die Eingabe des Passworts wiederholt (das Passwort muss wie zuvor zweimal eingegeben werden).

```{image} /img/windows-ubuntu/wsl-ubuntu-wrong-passwd-2.png
:alt:
:class: screenshot
:align: center
```

Ist die Installation erfolgreich durchgeführt,
erhältst du eine zum folgenden Screenshot ähnliche Ausgabe.
Die letzte Zeile (im Screenshot: `luckyjosh@DESKTOP-L02KDEF:~$`) wird im Folgenden **Eingabezeile** genannt.

Die Eingabezeile besteht aus zwei Teilen.
Die Information vor dem Doppelpunkt setzt sich dabei aus dem Benutzernamen (im Screenshot: `luckyjosh`)
und dem Computernamen (im Screenshot: `DESKTOP-L02KDEF`) zusammen.
Hier werden bei dir andere Namen stehen.
Der Teil nach dem Doppelpunkt besteht aus einer Tilde `~` und einem Dollarzeichen `$`.
Dies ist der typische Aufbau der Linux-Kommandozeile `bash`, die maßgeblich zur Interaktion
mit dem Linux-Betriebssystem verwendet wird. Eine detailliertere Einführung in den Umgang erfolgt während
des Workshops, im Folgenden wird diese jedoch schon zur Installation der benötigten Software verwendet.

```{image} /img/windows-ubuntu/wsl-ubuntu-correct-passwd.png
:alt:
:class: screenshot
:align: center
```

Schließe vor dem nächsten Abschnitt dieses Terminal Fensters, indem du den Befehl
```shell
exit
```
eingibst (+ `Enter`) oder auf das `X` oben rechts klickst.

(win10-terminal)=
### Windows Terminal

Das Windows Terminal stellt einen Ersatz der Standard-WSL-Kommandozeile dar.
Das Windows Terminal kannst du aus dem Microsoft Store installieren.

Der Microsoft Store kannst du wieder über die Suche im Startmenü finden:

```{image} /img/windows-terminal/windows-terminal-store-1.png
:alt:
:class: screenshot
:align: center
```

Suche im Microsoft Store nach `Terminal` und wähle _Windows Terminal_ aus:

```{image} /img/windows-terminal/windows-terminal-store-2.png
:alt:
:class: screenshot
:align: center
```

Und im folgenden Fenster `Herunterladen` anklicken:

```{image} /img/windows-terminal/windows-terminal-store-3.png
:alt:
:class: screenshot
:align: center
```

Im Anschluss an die Installation kannst du den Microsoft Store wieder schließen.

Das Windows Terminal kann über das Startmenü geöffnet werden. Direkt nach der Installation
befindet sich das Terminal für gewöhnlich ganz oben in der Liste, ansonsten kannst du
`Terminal` eingeben. Geöffnet wird das Terminal durch einen Klick auf _Öffnen_ in der
rechten Spalte.

```{image} /img/windows-terminal/windows-terminal-start.png
:alt:
:class: screenshot
:align: center
```

Beim ersten Öffnen des Windows Terminals erscheint ein Informations-Banner am oberen Fensterrand,
welches du mit dem `X` am rechten Rand schließen kannst.

```{image} /img/windows-terminal/windows-terminal-default-terminal.png
:alt:
:class: screenshot
:align: center
```

Standardmäßig wird mit dem Windows Terminal die Windows PowerShell geöffnet (zu erkennen an dem Text in dem Tab).
Um eine Ubuntu-Kommandozeile zu öffnen, klicke zunächst oben im Fenster auf den Pfeil nach unten, es öffnet sich ein Dropdown-Menü,
in dem `Einstellungen` angeklickt werden muss:

```{image} /img/windows-terminal/windows-terminal-settings-1.png
:alt:
:class: screenshot
:align: center
```

Hier kannst du einstellen, dass sich beim Start von Windows Terminal standardmäßig Ubuntu öffnet.
Unter _Starten_ in der linken Spalte gibt es den Einstellungspunkt _Standardprofil_, durch Klicken
auf den Pfeil nach unten öffnet sich eine Auswahl.

```{image} /img/windows-terminal/windows-terminal-settings-2.png
:alt:
:class: screenshot
:align: center
```

In der Auswahl wählst du dann Ubuntu aus (falls _Ubuntu_ mehrfach auftaucht, den Punkt mit dem Pinguin-Icon):

```{image} /img/windows-terminal/windows-terminal-settings-3.png
:alt:
:class: screenshot
:align: center
```

Im Anschluss kannst du das Terminal Fenster schließen.
Wir öffnen es gleich zwar direkt wieder,
so kannst du aber überprüfen, ob die Einstellung des Standardprofils funktioniert hat.


### Git, Make und weiteres

:::{caution} Wichtig
In diesem und den folgenden Abschnitten werden einige Befehle in das Windows Terminal eingegeben.
Diese werden in einem Codeblock wie diesem angegeben:
```shell
Beispielbefehl
```
Im Terminal musst du **jeden Codeblock einzeln** eingeben und mit `Enter` bestätigen.
:::



Für die Installation der beiden Programme git und make musst du zunächst das Windows Terminal öffnen
(wie im Abschnitt {ref}`win10-terminal` über das Startmenü).

Als Erstes solltest du ein Update mit dem folgenden Befehl durchführen:
```shell
sudo apt update
```
Die Ausführung dieses Befehls kann einige Zeit in Anspruch nehmen und setzt eine
Internetverbindung voraus.

Befehle, die mit `sudo` beginnen, erfordern besondere Zugriffsrechte. Daher muss zunächst immer
das Linux-Benutzerpasswort (**nicht** notwendigerweise das Windows-Benutzerpasswort) eingegeben werden.

```{image} /img/unix/unix-1.png
:alt:
:class: screenshot
:align: center
```

Ein erfolgreiches Update sieht in etwa wie folgt aus, jedoch kann die ausgegebene Liste der Programme,
die aktualisiert werden können, beim ersten Ausführen wesentlich länger sein.

```{image} /img/unix/unix-2.png
:alt:
:class: screenshot
:align: center
```

Die Updates müssen nun noch installiert werden, denn bisher wurden diese nur heruntergeladen.
Dies erfolgt durch Eingabe des Befehls
```shell
sudo apt upgrade
```
Anschließend kann eine erneute Bestätigung durch Eingabe des Buchstabens `y` und Drücken der
`Enter`-Taste nötig sein. (Auch hier wird die ausgegebene Liste wesentlich länger sein.)

```{image} /img/unix/unix-3.png
:alt:
:class: screenshot
:align: center
```

Nun kannst du die drei Programme `git`, `make` und `curl` installieren.
Dies erfolgt durch die Eingabe des Befehls
```shell
sudo apt install -y git make curl
```
und anschließende Bestätigung mit der `Enter`-Taste.
Auch diese Installation kann wieder etwas Zeit in Anspruch nehmen.

```{image} /img/unix/unix-4.png
:alt:
:class: screenshot
:align: center
```

Du erkennst eine erfolgreiche Installation, wie unten gezeigt, daran, dass keine Fehlermeldungen ausgegeben werden.

```{image} /img/unix/unix-5.png
:alt:
:class: screenshot
:align: center
```


#### Git-Einstellungen

Für Git musst du noch ein paar Einstellungen vornehmen.
Schreibe dafür in das Windows Terminal wie zuvor
die folgenden Befehle und bestätige sie jeweils mit der `Enter`-Taste.

:::{caution} Wichtig
Anstelle von `Max Mustermann` solltest du natürlich deinen **eigenen Namen** und auch deine
**eigene E-Mail-Adresse** verwenden!
:::

```shell
git config --global user.name "Max Mustermann"
```
```shell
git config --global user.email "max.mustermann@tu-dortmund.de"
```
```shell
git config --global rebase.stat true
```
```shell
git config --global merge.conflictstyle diff3
```

Hier wurden absichtlich keine Screenshots eingefügt, damit du den Umgang mit dem Windows Terminal selbst üben kannst.
Falls noch Unsicherheit darüber besteht, was mit dem obigen Befehl angestellt werden soll, kann zunächst mit
der restlichen Anleitung (mit Bildern) fortgefahren werden. Diese Einstellung kann dann im Anschluss mit mehr
Sicherheit nachgeholt werden.


#### Installationsordner `~/.local`

Für die {ref}`win10-miniforge3` und {ref}`win10-texlive` wird noch ein Ordner benötigt.
Diesen kannst du mit dem folgenden Befehl erstellen:

```shell
mkdir -p ~/.local
```

Dieser Befehl erstellt einen Ordner mit dem Namen `.local`, falls dieser nicht schon existiert,
und tut gar nichts, falls dieser Ordner schon existiert.


(win10-miniforge3)=
### Python Installation: Miniforge3

Für die Installation der Programme, die nötig sind, um die Programmiersprache Python komfortabel
nutzen zu können, verwenden wir das Tool `mamba`.

Die Installationsdatei _Miniforge3-Linux-x86-64.sh_ kannst du,
durch die Eingabe der folgenden Befehle ins Windows Terminal, herunterladen:
```shell
cd ~/.local
```
Dieser Befehl ändert den aktuellen Pfad auf den Ordner, in dem die Installationsdatei heruntergeladen werden soll.
Der aktuelle Pfad wird zwischen dem `:` und `$` angezeigt, dieser sollte nun `~/.local` sein.
Jetzt kannst du die Installationsdatei herunterladen.
```shell
curl -LO https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
```
Der Download kann einige Zeit in Anspruch nehmen.

```shell
ls
```
Dieser Befehl zeigt alle Dateien an, die sich im aktuellen Ordner befinden.
Die Datei _Miniforge3-Linux-x86-64.sh_ sollte hier aufgeführt sein.

```{image} /img/mamba/mamba-download.png
:alt:
:class: screenshot
:align: center
```

Zum Installieren musst du den folgenden Befehl ausführen.

```shell
bash Miniforge3-Linux-x86_64.sh -p ~/.local/conda
```

Wie zuvor wird auch dieser Befehl durch Drücken der `Enter`-Taste bestätigt.

Im Folgenden musst du die Benutzungsbestimmungen bestätigen.
Diese werden zunächst mit der `Enter`-Taste geöffnet

```{image} /img/mamba/mamba-install-1.png
:alt:
:class: screenshot
:align: center
```

Abhängig von der Größe des Terminal Fensters, kann es vorkommen, dass der Text nur zeilenweise
ausgegeben wird. Dies erkennst du daran, dass in der letzten Zeile _`--More--`_ steht.

```{image} /img/mamba/mamba-install-2.png
:alt:
:class: screenshot
:align: center
```

Drücke dann mehrfach auf die `Enter`-Taste, um zum Ende (siehe nächsten Screenshot)
der Benutzungsbestimmung zu gelangen.
Am Ende der Benutzungsbestimmungen kannst du diese durch die Eingabe von `yes`
und anschließendem `Enter` akzeptieren.

```{image} /img/mamba/mamba-install-3.png
:alt:
:class: screenshot
:align: center
```

Mit einem weiteren `Enter` startest du die Installation,
auch diese kann einige Minuten Zeit brauchen.

```{image} /img/mamba/mamba-install-4.png
:alt:
:class: screenshot
:align: center
```

Die Installation endet mit den folgenden Zeilen:
Hier musst du abermals `yes` eingeben und mit `Enter` bestätigen.

```{image} /img/mamba/mamba-install-5.png
:alt:
:class: screenshot
:align: center
```

Wenn die letzte Zeile wieder die Eingabezeile ist, ist die Installation beendet.

```{image} /img/mamba/mamba-install-6.png
:alt:
:class: screenshot
:align: center
```

:::{caution} Wichtig
Du kannst Mamba erst verwenden, wenn du das aktuelle Terminal Fenster geschlossen und ein neues geöffnet hast
:::

Im neuen Terminal Fenster sollte nun _(base)_ am Anfang der Eingabezeile stehen.

```{image} /img/mamba/mamba-install-7.png
:alt:
:class: screenshot
:align: center
```

Jetzt musst du noch die Python-Pakete installieren, die im Workshop vorgestellt werden.
Dafür verwenden wir eine sogenannte _virtuelle Umgebung_. Was eine solche Umgebung genau ist
und wofür sie gut ist, erklären wir im Laufe des Workshops. Einfach gesprochen erstellen
wir eine separate Python Installation mit genau den Paketen, die du für den Workshop brauchst.

Nutze dazu den folgenden Befehl:

```shell
mamba create -y -n toolbox python=3.13 ipython numpy matplotlib scipy uncertainties sympy
```

Die Installation beginnt mit der folgenden Ausgabe

```{image} /img/mamba/mamba-virtual-env-1.png
:alt:
:class: screenshot
:align: center
```

und bedarf auch wieder etwas Zeit. Die Installation ist beendet, wenn wieder die Eingabezeile
angezeigt wird.

```{image} /img/mamba/mamba-virtual-env-2.png
:alt:
:class: screenshot
:align: center
```

Nach erfolgreicher Installation kannst du die Installationsdatei _Miniforge3-Linux-x86-64.sh_
mit dem Befehl

```shell
rm ~/.local/Miniforge3-Linux-x86_64.sh
```

löschen.


(win10-texlive)=
### TeXLive

Mit den folgenden drei Befehlen lädst du das Installationsskript
herunter und führst es aus. Als Erstes wechselst du in den `.local`-Ordner,
den du oben erstellt hast,
der zweite Befehl lädt das Installationsskript herunter und entpackt es.
Mit dem dritten Befehl startest du dieses.
```shell
cd ~/.local
```

```shell
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
```

```shell
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Die Installation startest du mit `I` und `Enter`.

Nach der Installation muss dem System mitgeteilt werden, wo LaTeX installiert wurde,
das machst du in der Datei `~/.bashrc`.
Führe dazu folgenden Befehl im Terminal aus:

```shell
echo 'export PATH="$HOME/.local/texlive/2026/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Dieser schreibt die Information in `~/.bashrc`.

Schließe jetzt erneut das Terminal und starte ein neues.
Gib dann in dem neuen Terminal die folgenden Befehle ein,
 um Einstellungen an LaTeX vorzunehmen:

```shell
tlmgr option autobackup -- -1
```

```shell
tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```

```shell
luaotfload-tool --update --force
```

Falls diese Installation aufgrund von zu geringem Speicherplatz nicht funktioniert,
gibt es [diese Möglichkeit](/install/latex_mini/), eine minimale Version von
TeXLive zu installieren.


### Visual Studio Code (VSCode)

#### Installation
Visual Studio Code (VSCode) ist ein Text-Editor,
der sowohl zum Schreiben von Programm-Code in Python als auch Texten in LaTeX geeignet ist.
Darüber hinaus hat dieser auch noch viele weitere Funktionen.

VSCode kannst du, wie das Windows Terminal, über den Microsoft Store installieren.
Öffne dazu den  Microsoft Store, genauso wie im Abschnitt {ref}`win10-terminal`.
Gib in der Suche `Visual Studio Code` ein und wähle den entsprechenden Punkt aus der Liste aus:

```{image} /img/vscodium/vscode-download-1.png
:alt:
:class: screenshot
:align: center
```

Auf der folgenden Seite kannst du VSCode durch einen Klick auf den Button `Installieren` installieren.

```{image} /img/vscodium/vscode-download-2.png
:alt:
:class: screenshot
:align: center
```

Über das Startmenü (wie zuvor wird durch Eingabe von `Visual` automatisch eine Suche begonnen),
kannst du VSCode durch einen Klick auf `Öffnen` öffnen.

```{image} /img/vscodium/vscode-start.png
:alt:
:class: screenshot
:align: center
```

Beim ersten Start von VSCode nach der Installation
sollte in der rechten unteren Ecke eine Infobox angezeigt,
in dieser empfehlen wir dir den Button `Install` anzuklicken,
wenn gefragt wird, ob die `WSL` Erweiterung installiert werden soll.

```{image} /img/vscodium/vscode-prompt-wsl-plugin.png
:alt:
:class: screenshot
:align: center
```


#### VSCode: Sprache

Auch wenn es vielleicht ungewohnt ist, kann es von Vorteil sein, Software mit englischen Spracheinstellungen
zu verwenden. Um die Spracheinstellungen von VSCode zu ändern, kannst du die folgenden Schritte befolgen.
Dies ist **nicht** nötig, wenn die Sprache bereits auf Englisch eingestellt ist oder du eine Änderung der
Sprache nicht wünschst.


Zum Öffnen der Spracheinstellungen drücke zunächst die Taste `F1`.
Dies öffnet ein Eingabefenster, in dem du nach Einstellungen suchen kannst.

Suche hier nach _Configure Display Language_.
Die Einstellung kannst du durch das Drücken der `Enter`-Taste auswählen.

```{image} /img/vscodium/vscode-language-1.png
:alt:
:class: screenshot
:align: center
```

Im dann folgenden Auswahlmenü kannst du die gewünschte Sprache mit einem `Linksklick` auswählen.

```{image} /img/vscodium/vscode-language-2.png
:alt:
:class: screenshot
:align: center
```

Die gewählte Sprache wird gegebenenfalls heruntergeladen und ist nach einem Neustart von VSCode nutzbar,
der im folgenden Fenster ausgeführt werden kann.

```{image} /img/vscodium/vscode-language-3.png
:alt:
:class: screenshot
:align: center
```


#### VSCode: Terminal einrichten

Mit der Tastenkombination `Strg` + `Shift` + `ö` oder über die Menüleiste: _Terminal_ → _Neues Terminal_
öffnest du ein Terminal in VSCode. Dieses Terminal ist nach der ersten Installation aber
die Windows Powershell. Wie beim Windows Terminal kannst du auch in diesem das Standardprofil umstellen.
Klicke rechts auf den Pfeil nach unten, neben dem `+`, und wähle den Punkt _Select Default Profile_ aus.

```{image} /img/vscodium/vscode-terminal-1.png
:alt:
:class: screenshot
:align: center
```

In der folgenden Auswahl klickst du auf _Ubuntu (WSL)_.

```{image} /img/vscodium/vscode-terminal-2.png
:alt:
:class: screenshot
:align: center
```

Und anschließend kannst du das schon geöffnete Terminal mit einem Klick auf die Mülltonne schließen.

```{image} /img/vscodium/vscode-terminal-3.png
:alt:
:class: screenshot
:align: center
```

Öffnest du erneut ein Terminal, z. B. mit `Strg` + `Shift` + `ö`,
so sollte dieses nun wie das (mittlerweile) gewohnte Terminal aussehen:

```{image} /img/vscodium/vscode-terminal-4.png
:alt:
:class: screenshot
:align: center
```


### PDF-Betrachter

#### Sumatra PDF

Als PDF-Betrachter für Windows solltest du Sumatra PDF verwenden.
Die Verwendung von Acrobat Reader empfehlen wir nicht, da dieser die PDF-Datei blockiert,
sodass sie nicht von TeX überschrieben werden kann (warum das wichtig ist, erfährst du im Workshop).
Den Download findest du unter dem folgenden Link.

[Sumatra Download](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html)

Auf der Download-Seite kannst du dann die `x64` Version von Sumatra PDF mit einem
`Linksklick` auf dem hervorgehobenen Link herunterladen.

```{image} /img/sumatra/sumatra-download.png
:alt:
:class: screenshot
:align: center
```

Die heruntergeladene Datei findest du im Downloads-Ordner
und kannst sie durch einen doppelten `Linksklick` ausführen.

```{image} /img/sumatra/sumatra-install-1.png
:alt:
:class: screenshot
:align: center
```

Infolgedessen öffnet sich das folgende Fenster,
in dem du die Installation mit einem `Linksklick` auf _Installieren_ starten kannst.

```{image} /img/sumatra/sumatra-install-2.png
:alt:
:class: screenshot
:align: center
```

Schließe das Fenster nach der Installation mit dem `X`.

```{image} /img/sumatra/sumatra-install-3.png
:alt:
:class: screenshot
:align: center
```

Zuletzt musst du Sumatra PDF noch als Standard PDF-Betrachter einstellen.
Suche dafür im Startmenü nach `Standard` und öffne _Standard-Apps_.

```{image} /img/sumatra/sumatra-standard-app-1.png
:alt:
:class: screenshot
:align: center
```

In dem geöffneten Fenster befindet sich unten der Link _Standard-Apps nach Dateityp auswählen_,

```{image} /img/sumatra/sumatra-standard-app-2.png
:alt:
:class: screenshot
:align: center
```

durch Klicken auf diesen wird ein weiteres Menü geöffnet (das Öffnen kann ein paar Sekunden dauern).
In diesem musst du bis zu der Zeile nach unten scrollen, in der _.pdf_ in der ersten Spalte steht.

```{image} /img/sumatra/sumatra-standard-app-3.png
:alt:
:class: screenshot
:align: center
```

Ist in der zweiten Spalte bereits _SumatraPDF_ eingetragen, so musst du nichts Weiteres tun und
kannst das Fenster wie gewöhnlich durch Klicken auf das `X` schließen.

Ist statt _SumatraPDF_ ein anderes Programm eingetragen (z. B. _Acrobat Reader_ oder _Microsoft Edge_)
kannst du durch Klicken auf den Programmnamen ein Auswahlmenü öffnen.
In diesem wählst du dann _SumatraPDF_ aus.

```{image} /img/sumatra/sumatra-standard-app-4.png
:alt:
:class: screenshot
:align: center
```


#### Evince

Um (ohne viele Umstände) PDF-Dateien auch aus dem Windows Terminal öffnen zu können,
empfehlen wir dir auch, einen PDF-Betrachter für das WSL zu installieren.
Dafür musst du folgenden Befehl in das Windows Terminal eingeben:
```shell
sudo apt install -y evince
```


(win10-tests)=
## Testen

Im folgenden Abschnitt zeigen wir dir, wie du testen kannst, dass die Installationen funktioniert haben 
und somit entspannt in den Workshop starten kannst.


### Mamba: Python

Um die Python Installation (durch Mamba) zu testen, solltest du erst alle
offenen Fenster des Windows Terminals schließen und ein neues öffnen.

Um die installierten Pakete nutzen zu können,
musst du zunächst die _virtuelle Umgebung_  mit diesem Befehl aktivieren:

```shell
mamba activate toolbox
```

Durch diesen Befehl ändert sich der Beginn der Eingabezeile von _(base)_ zu _(toolbox)_.

Gib nun die folgenden Befehle nacheinander in das Windows Terminal ein.
Nach Eingabe des ersten Befehls wird sich das Erscheinungsbild der Kommandozeile etwas verändern.
Am Anfang der Zeile steht jetzt `In [1]:`.

```shell
ipython
```
```ipython
%matplotlib
```
```ipython
import matplotlib.pyplot as plt
```
```ipython
import numpy as np
```
```ipython
import scipy
```
```ipython
import sympy
```
```ipython
import uncertainties
```
```ipython
plt.plot([1, 2, 4])
```

Es sollte ein Fenster mit einem Koordinatensystem und einer eingezeichneten Linie erscheinen.

Insgesamt sollte das Terminal wie folgt aussehen:

```{image} /img/mamba/mamba-test-1.png
:alt:
:class: screenshot
:align: center
```

Fehler machen sich z. B. so bemerkbar:

```{image} /img/mamba/mamba-test-2.png
:alt:
:class: screenshot
:align: center
```

Mit dem Befehl
```ipython
quit
```
kannst du das Programm _ipython_ im Anschluss beenden.

Beim Ausführen von `%matplotlib` kann es vorkommen, dass der Fehler
```ipython
qt.qpa.plugin: Could not find the Qt platform "wayland" in ""
```
angezeigt wird. Dieser lässt sich mit einer Umgebungsvariablen in der Datei `~/.bashrc`
beheben. Führe dazu folgenden Befehl im Terminal aus:
```shell
echo 'export QT_QPA_PLATFORM=xcb' >> ~/.bashrc
```


### Make

Make kannst du durch Öffnen eines Windows Terminals und durch Eingeben des folgenden Befehls testen,
du kannst auch das Terminal vom Python-Test weiternutzen.
Der Test besteht auch nur aus einem Befehl:
```shell
make
```

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:
```shell
    make: *** No targets specified and no makefile found.  Stop.
```


### TeXLive

Die TeXLive Installation wird ebenfalls unter Verwendung des Windows Terminals getestet.
In dieses gibst du zuerst den folgenden Befehl ein:

```shell
luatex
```

Es sollte folgende oder ähnliche Ausgabe erscheinen:

```shell
This is LuaTeX, Version 1.24.0 (TeX Live 2026)
restricted system commands enabled.
**
```
Momentan läuft das Programm `luatex`,
mit dem Drücken der Tastenkombination `Strg-c` (`Strg` und `c`) kannst du es beenden.
Nun testen wir ein weiteres Programm, das von LaTeX verwendet wird.
Dies erreichst du durch Eingabe des Befehls
```shell
biber
```

Es sollte die Biber-Hilfe erscheinen.
```shell
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

Zuletzt testen wir noch das Programm zur Betrachtung von Paket-Dokumentationen.
Der Test-Befehl lautet:
```shell
texdoc texlive
```

Schließe das aufgehende Fenster und beende das Windows Terminal mit
```shell
exit
```


## Aktualisieren

### Mamba

Um Updates für mamba zu installieren,
trägst du in einem Windows Terminal folgenden Befehl ein.
```shell
mamba update -n toolbox --all
```

```{image} /img/mamba/mamba-update-1.png
:alt:
:class: screenshot
:align: center
```

Auch hier musst du die Installation wieder mit einem `Y` gefolgt von einem `Enter` bestätigen.

```{image} /img/mamba/mamba-update-2.png
:alt:
:class: screenshot
:align: center
```

Die Installation ist wie (mittlerweile) gewohnt abgeschlossen,
wenn die Eingabezeile auf dem Terminal angezeigt wird.

### Git, Make und weitere Unix-Tools

Um Updates für diese sogenannten Unix-Tools zu erhalten,
musst du, wie schon nach der Installation, nacheinander die beiden folgenden Befehle in ein
Windows Terminal eingeben.
```shell
sudo apt update
```
```shell
sudo apt upgrade
```

### TeXLive

Die Updates für TeXLive werden durch Eingeben des folgenden Befehls in ein Windows Terminal installiert.
```shell
tlmgr update --self --all --reinstall-forcibly-removed
```

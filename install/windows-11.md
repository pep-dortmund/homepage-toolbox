---
layout: install
permalink: /install/windows_11/
title: Windows-11-Installation
---

__Bitte die folgenden Punkte unbedingt lesen:__

+ Diese Anleitung mag relativ lang erscheinen und im ersten Moment abschreckend wirken.
Wir versichern dir, dass diese Länge aber viel mehr ein Zeichen von Ausführlichkeit
ist, um sicherzustellen, dass du auch folgen kannst, wenn du bisher keine Berührungen
mit den Inhalten des Toolbox Workshops hattest.

+ Befolge die Anleitung daher konzentriert und gründlich, um keinen Schritt zu vergessen,
und kontrolliere jedes Mal, dass du die Befehle richtig kopiert oder abgetippt hast.

+ Alle drei Abschnitte (Installieren, Testen, Aktualisieren) und deren Unterabschnitte sind notwendig.
Den Beginn jedes dieser drei Abschnitte erreichst du über das Inhaltsverzeichnis auf der rechten Seite.

+ Sollte es an irgendeiner Stelle zu Problemen kommen, überspringe diesen Schritt **nicht**,
sondern melde dich bei uns. Unter [Hilfe](/problem/) findest du die Hinweise,
wie und mit welchen Informationen du uns am besten kontaktieren kannst.

Falls du __nicht__ am LaTeX-Kurs teilnehmen willst, ist der Abschnitt <a href="#TeXLive">TeXLive </a> optional.
Dann kannst du allerdings kein TeX in matplotlib benutzen (führt zu weniger schönen Plots).

Falls du __nur__ am LaTeX-Kurs teilnehmen willst, ist der Abschnitt <a href="#Miniforge3">Python Installation: Miniforge3</a> optional.

Diese Installation verwendet das [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10){:target="_blank"} (WSL),
um eine Ubuntu-Installation verwenden zu können, ohne ein komplett neues Betriebssystem installieren zu müssen.


## <a id="Installieren"></a>Installieren

### <a id="Vorbereitungen"></a>Vorbereitungen

#### <a id="Dateiendungen"></a>Dateiendungen einschalten

Die Endungen einer Datei (die Auskunft über die Art der Datei geben, z. B. `.pdf` für PDF-Dokumente)
sind unter Windows nicht standardmäßig aktiviert. Diese können und sollen aktiviert werden.

Diese Einstellung kannst du im Datei-Explorer vornehmen.
Diesen kannst du am einfachsten mit der Tastenkombination `Windows` + `E`
geöffnet werden (`Windows` ist die Taste mit dem Windowslogo zwischen
`Strg` und `Alt` unten links auf der Tastatur).

Alternativ kannst du den Explorer mit einem `Rechtsklick` auf das Startmenü-Icon und anschließendem `Linksklick` auf _Explorer_ öffnen.

<p align="center">
  <img alt="" src="/img/explorer/explorer-start_win11.png" class="screenshot" />
</p>

In der obersten Zeile stehen am rechten Ende drei Punkte. Klicke auf dieses Icon und anschließend auf den letzten Eintrag in der Liste: _Optionen_.

<p align="center">
  <img alt="" src="/img/explorer/explorer-fileext-1_win11.png" class="screenshot" />
</p>

In dem geöffneten Fenster musst du zuerst auf den Reiter _Ansicht_ klicken und dort dann den Haken vor _Erweiterung bei bekannten Dateitypen ausblenden_ entfernen.
KLicke zum Abschluss auf `Übernehmen`.

<p align="center">
  <img alt="" src="/img/explorer/explorer-fileext-2_win11.png" class="screenshot" />
</p>

### Windows Subsystem for Linux (WSL)

#### Installation des WSL
Zunächst musst du eine PowerShell Konsole als Administrator starten.
Die einfachste Möglichkeit dafür ist ein `Rechtsklick` auf das Startmenü-Icon,
gefolgt von einem `Linkslick` auf _Terminal (Administrator)_.

<p align="center">
  <img alt="" src="/img/wsl/win11-powershell-admin.png" class="screenshot" />
</p>

In den meisten Fällen wird das folgende Fenster erscheinen. Dieses musst du mit _Ja_ bestätigen.
Diese Warnungen können auch im Folgenden noch auftreten, auch dann musst du diese mit _Ja_ bestätigen.
Es ist kein Problem, wenn dieses Fenster nicht erscheint.

<p align="center">
  <img alt="" src="/img/wsl/win11-admin-warning.jpg" class="screenshot" />
</p>

Nun öffnet sich ein Fenster, wie unten zu sehen; dies ist die PowerShell Konsole.
Um sicherzugehen, dass eine PowerShell mit Administrator-Rechten geöffnet wurde,
kannst du den Titel des Fensters überprüfen, dieser muss mit _Administrator:_ beginnen.

Die Info-Leiste, die am oberen Fensterrand erscheint, kannst du durch einen Klick auf das `X` schließen.

<p align="center">
  <img alt="" src="/img/wsl/win11-powershell-admin-test.png" class="screenshot" />
</p>

In die PowerShell musst du nun den folgenden Befehl eingeben. Diesen kannst du auch kopieren
und einfügen; Einfügen funktioniert in der PowerShell mit einem `Rechtsklick`.
```
wsl --install
```

<p align="center">
  <img alt="" src="/img/wsl/win11-wsl-install.png" class="screenshot" />
</p>

Mit dem Drücken der `Enter`-Taste bestätigst du die Eingabe.

Diese Installation kann einige Minuten in Anspruch nehmen, während dieser Zeit werden einige
stilisierte Ladebalken angezeigt. Nach dem erfolgreichen Abschluss dieses Vorgangs sieht die
Ausgabe wie folgt aus

<p align="center">
  <img alt="" src="/img/wsl/win11-wsl-install-complete.png" class="screenshot" />
</p>

Wie der letzten Zeile zu entnehmen ist, muss der PC jetzt einmal neu gestartet werden.

Nach dem Neustart soll sich automatisch das folgende Fenster öffnen,
in dem die Installation des WSL durch Einrichten des Benutzerkontos
abgeschlossen werden kann.

<p align="center">
  <img alt="" src="/img/wsl/win11-wsl-ubuntu-complete.png" class="screenshot" />
</p>

#### <a id="Einrichten des Benutzerkontos">Einrichten eines Benutzerkontos

Nach erfolgreicher Installation erscheint die Aufforderung, einen Benutzernamen für
das Linux-Betriebssystem einzugeben.
Dein Linux-Benutzername __kann, muss aber nicht,__
mit deinem Windows-Benutzernamen übereinstimmen.

{% include admonition.html type="warning" title="Wichtig" body="Der Benutzername darf <b>nur</b> Kleinbuchstaben und <b>keine</b> Leerzeichen enthalten." %}

Die Eingabe des Benutzernamens bestätigst du mit Drücken der `Enter`-Taste.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-username_win11.png" class="screenshot" />
</p>

Im Anschluss wird auch nach einem Passwort für das Linux-Betriebssystem gefragt.
Aus Sicherheitsgründen wird das eingegebene Passwort nicht angezeigt.
Die Eingabe bestätigst du wieder durch Drücken der `Enter`-Taste.
Im Anschluss musst du das Passwort erneut eingeben, um Tippfehler auszuschließen.
Auch diese Eingabe bestätigst du wieder mit der `Enter`-Taste.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-passwd_win11.png" class="screenshot" />
</p>

Sollte die Eingabe des zweiten Passworts nicht mit dem ersten übereinstimmen,
so musst du einen erneuten Versuch zunächst mit `y` (kurz für _yes_) bestätigen.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-wrong-passwd-1_win11.png" class="screenshot" />
</p>

Wiederhole dann die Eingabe des Passworts, wie zuvor musst du es zweimal eingeben.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-wrong-passwd-2_win11.png" class="screenshot" />
</p>

Ist die Installation erfolgreich durchgeführt worden,
erhälst du eine Ausgabe ähnlich zum nächsten Screenshot
Die letzte Zeile (im Screenshot: `luckyjosh@DESKTOP-L02KDEF:~$`) wird im Folgenden **Eingabezeile** genannt.
Diese besteht aus zwei Teilen.
Die Information vor dem Doppelpunkt setzt sich dabei aus dem Benutzernamen (im Screenshot: `luckyjosh`) und dem Computernamen (im Screenshot: `DESKTOP-L02KDEF`) zusammen.
Hier werden bei dir andere Namen stehen.
Der Teil nach dem Doppelpunkt besteht aus einer Tilde `~` und einem Dollarzeichen `$`.
Dies ist der typische Aufbau der Linux-Kommandozeile `bash`, die maßgeblich zur Interaktion
mit dem Linux-Betriebssystem verwendet wird. Eine detailliertere Einführung in den Umgang erfolgt während
des Workshops, im Folgenden wird diese jedoch schon zur Installation der benötigten Software verwendet.

<p align="center">
  <img alt="" src="/img/windows-ubuntu/wsl-ubuntu-correct-passwd_win11.png" class="screenshot" />
</p>

Vor dem nächsten Abschnitt kannst du das Terminal Fenster schließen, indem du den Befehl
```
exit
```
eingibst oder oben rechts auf das `X` klickst.

### <a id="WindowsTerminal"></a>Windows Terminal

Wir verwenden auch weiterhin das Windows Terminal, allerdings nicht als Administrator.
Außerdem musst du noch eine Einstellung vornehmen.

Das Windows Terminal kannst du wieder durch einen `Rechtsklick` auf das Startmenü-Icon
und anschließendem `Linksklick` auf _Terminal_ öffnen.

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-start_win11.png" class="screenshot" />
</p>

Standardmäßig wird mit dem Windows Terminal die Windows PowerShell geöffnet (zu erkennen an dem Text in dem Tab).
Um eine Ubuntu-Kommandozeile zu öffnen, klicke zunächst oben im Fenster auf den Pfeil nach unten, es öffnet sich ein Dropdown-Menü,
in dem `Einstellungen` angeklickt werden muss:

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-settings-1.png" class="screenshot" />
</p>

Hier kannst du einstellen, dass sich beim Start von Windows Terminal
standardmäßig Ubuntu öffnet.
Unter _Starten_ in der linken Spalte gibt es den Einstellungspunkt _Standardprofil_, durch Klicken
auf den Pfeil nach unten öffnet sich eine Auswahl.

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-settings-2.png" class="screenshot" />
</p>

Wähle dann in der Auswahl aus (falls _Ubuntu_ mehrfach auftaucht, den Punkt mit dem Pinguin-Icon):

<p align="center">
  <img alt="" src="/img/windows-terminal/windows-terminal-settings-3.png" class="screenshot" />
</p>

Im Anschluss kannst du das Terminal Fenster wieder mit
```
exit
```
oder dem `X` oben rechts schließen.

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
Dabei kannst du direkt überprüfen, ob das Einstellen des Standardprofils funktioniert hat.

Zunächst muss ein Update mit dem folgenden Befehl durchgeführt werden:
```
sudo apt update
```
Die Ausführung dieses Befehls kann einige Zeit in Anspruch nehmen und setzt eine
Internetverbindung voraus.

Befehle, die mit `sudo` beginnen, erfordern besondere Zugriffsrechte. Daher musst du zunächst immer
das Linux-Benutzerpasswort (**nicht** notwendigerweise das Windows-Benutzerpasswort) eingeben.

<p align="center">
  <img alt="" src="/img/unix/unix-1.png" class="screenshot" />
</p>

Ein erfolgreiches Update sieht in etwa wie folgt aus, jedoch kann die ausgegebene Liste der Programme,
die bei dir upgedatet werden können, beim ersten Ausführen wesentlich länger sein.

<p align="center">
  <img alt="" src="/img/unix/unix-2.png" class="screenshot" />
</p>

Die Updates müssen nun noch installiert werden, denn bisher hast du diese nur heruntergeladen.
Dies erfolgt durch Eingabe des Befehls
```
sudo apt upgrade
```
und auch diesen Befehl bestätigst du mit der `Enter`-Taste.
Anschließend kann eine erneute Bestätigung durch Eingabe des Buchstabens `y` und Drücken der
`Enter`-Taste nötig sein. (Auch hier wird die ausgegebene Liste wesentlich länger sein.)

<p align="center">
  <img alt="" src="/img/unix/unix-3.png" class="screenshot" />
</p>

Nun kannst du die drei Programme `git`, `make` und `curl` installieren.
Dies erfolgt durch die Eingabe des Befehls
```
sudo apt install git make curl
```
und anschließende Bestätigung mit der `Enter`-Taste.
Auch diese Installation kann wieder etwas Zeit in Anspruch nehmen.

<p align="center">
  <img alt="" src="/img/unix/unix-4.png" class="screenshot" />
</p>

Eine erfolgreiche Installation, wie unten gezeigt, kannst du daran erkennen, dass keine Fehlermeldungen ausgegeben werden.

<p align="center">
  <img alt="" src="/img/unix/unix-5.png" class="screenshot" />
</p>

#### Git-Einstellungen

Für Git müssen noch ein paar Einstellungen vorgenommen werden. Gib dafür in das Windows Terminal, wie zuvor,
die folgenden Befehle ein und bestätige sie jeweils mit der `Enter`-Taste.

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
Falls noch Unsicherheit darüber besteht, was mit dem obigen Befehl angestellt werden soll, kannst du zunächst mit
der restlichen Anleitung (mit Bildern) fortfahren. Diese Einstellung kann dann im Anschluss mit mehr
Sicherheit nachgeholt werden.

#### Installationsordner `~/.local`


Für die Installation von [Miniforge3 (Python)](#Miniforge3) und [TeXLive (LaTeX)](#TeXLive) wird noch ein Ordner benötigt.
Diesen kannst du mit dem folgenden Befehl erstellen.

```
mkdir -p ~/.local
```

Dieser Befehl erstellt einen Ordner mit dem Namen `.local`, falls dieser nicht schon existiert,
und tut gar nichts, falls dieser Ordner schon existiert.

### <a id="Miniforge3"></a>Python Installation: Miniforge3

Für die Installation der Programme, die nötig sind, um die Programmiersprache Python komfortabel
nutzen zu können, verwenden wir das Tool `mamba`.

Die Installationsdatei _Miniforge3-Linux-x86-64.sh_ kannst du durch die Eingabe der folgenden Befehle
ins Windows Terminal herunterladen:

```
cd ~/.local
```
Dieser Befehl ändert den aktuellen Pfad auf den Ordner, in dem die Installationsdatei heruntergeladen werden soll.
Der aktuelle Pfad wird zwischen dem `:` und `$` angezeigt, dieser sollte nun `~/.local` sein.
Also der Ordner, den du im Befehl davor erstellt hast.

Mit diesem Befehl lädst du die Installationsdatei herunter. Der Download kann einige Zeit in Anspruch nehmen.
```
curl -LO https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
```

Mit
```
ls
```
kannst du dir alle Dateien anzeigen, die sich im aktuellen Pfad befinden.
Die Datei _Miniforge3-Linux-x86-64.sh_ sollte hier aufgeführt sein.

<p align="center">
  <img alt="" src="/img/mamba/mamba-download.png" class="screenshot" />
</p>

Zum Installieren musst du den folgenden Befehl ins Terminal eingeben oder kopieren.

```
bash Miniforge3-Linux-x86_64.sh -p ~/.local/conda
```
Wie zuvor wird auch dieser Befehl durch Drücken der `Enter`-Taste bestätigt.

Im Folgenden musst du noch die Benutzungsbestimmungen bestätigen.
Diese werden zunächst mit der `Enter`-Taste geöffnet.

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

Die Installation startest du dann mit einem weiteren `Enter`, auch diese kann einige Minuten Zeit brauchen.

<p align="center">
  <img alt="" src="/img/mamba/mamba-install-4.png" class="screenshot" />
</p>

Die Installation endet mit den folgenden Zeilen:
Hier musst du abermals `yes` eingeben und mit `Enter` bestätigen.

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

Jetzt musst du noch die Python-Pakete installieren, die im Workshop vorgestellt werden.
Dafür verwenden wir eine sogenannte _virtuelle Umgebung_. Was eine solche Umgebung genau ist
und wofür sie gut ist, erklären wir dir im Laufe des Workshops. Einfach gesprochen erstellen
wir eine separate Python Installation mit genau den Paketen, die du für den Workshop und auch das Praktikum brauchst.

Nutze dazu den folgenden Befehl:

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

Nach erfolgreicher Installation kannst du die Installationsdatei _Miniforge3-Linux-x86-64.sh_
mit dem Befehl

```
rm ~/.local/Miniforge3-Linux-x86_64.sh
```
löschen.

### <a id="TeXLive"></a>TeXLive

Für LaTeX kannst du mit den folgenden drei Befehlen das Installationsskript herunterladen
und ausführen.
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

Nach der Installation musst du dem System mitteilen, wo LaTeX installiert wurde;
das machst du in der Datei `~/.bashrc`.
Führe dazu folgenden Befehl im Terminal aus:

```
echo 'export PATH="$HOME/.local/texlive/2025/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

Schließe jetzt einmal das Terminal und öffne für die weiteren Schritte ein neues.

Gib in dem neuen Terminal die folgenden Befehle ein:

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

VSCode kannst du über den Microsoft Store installieren.
Diesen findest du am einfachsten, indem du das Startmenü öffnest und in das Suchfeld oben `Store` eingibst.
Der Microsoft Store ist das Suchergebnis mit der höchsten Übereinstimmung.
Öffnen kannst du diesen durch einen Klick auf _Öffnen_ :

<p align="center">
  <img alt="" src="/img/vscodium/vscode-msstore_win11.png" class="screenshot" />
</p>

Durch die Suche im Microsoft Store nach `Visual Studio Code` kannst du in der Liste den entsprechenden Punkt auswählen:

<p align="center">
  <img alt="" src="/img/vscodium/vscode-download-1.png" class="screenshot" />
</p>

Auf der folgenden Seite kannst du VSCode durch einen Klick auf den Button `Installieren` installieren.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-download-2.png" class="screenshot" />
</p>

VSCode kannst du nach der Installation über das Startmenü (wie zuvor durch die Suche) öffnen.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-start_win11.png" class="screenshot" />
</p>

#### VSCode: WSL-Plugin

Ein nützliches Plugin für VSCode dient der Zusammenarbeit mit dem WSL (weiteres dazu im Workshop).
Über das im Screenshot gezeigte Icon am linken Rand kommst du zur Plugin-Suche. Suche dort nach `WSL`
und klicke auf den kleinen Button `Install` neben dem obersten Suchergebnis.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-wsl-plugin_win11.png" class="screenshot" />
</p>

#### VSCode: Sprache

Auch wenn es vielleicht ungewohnt ist, kann es von Vorteil sein, Software mit englischen Spracheinstellungen
zu verwenden. Um die Spracheinstellungen von VSCode zu ändern, kannst du die folgenden Schritte befolgen.
Dies ist **nicht** nötig, wenn die Sprache bereits auf Englisch eingestellt ist oder du eine Änderung der
Sprache nicht wünschst.

Zum Öffnen der Spracheinstellungen musst du zunächst die Taste `F1` drücken.
Dies öffnet ein Eingabefenster, in dem nach Einstellungen gesucht werden kann.

Hier musst du nun nach _Configure Display Language_ suchen.
Die Einstellung kannst du durch Drücken der `Enter`-Taste auswählen.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-language-1.png" class="screenshot" />
</p>

Im folgenden Auswahlmenü kannst du die gewünschte Sprache mit einem `Linksklick` auswählen.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-language-2.png" class="screenshot" />
</p>

Die gewählte Sprache wird gegebenenfalls heruntergeladen und ist nach einem Neustart von VSCode nutzbar,
der im folgenden Fenster ausgeführt werden kann.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-language-3.png" class="screenshot" />
</p>

#### <a id="VSCodeTerminal"></a>VSCode: Terminal einrichten

Mit der Tastenkombination `Strg` + `Shift` + `ö` oder über die Menüleiste: _Terminal_ → _Neues Terminal_
kannst du in VSCode ein Terminal öffnen.
Dieses Terminal ist nach der ersten Installation aber die Windows Powershell.
Wie beim Windows Terminal muss dieses Terminal auch noch umgestellt werden.
Klicke rechts auf den Pfeil nach unten, neben dem `+`, und wähle den Punkt _Select Default Profile_ aus.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-terminal-1.png" class="screenshot" />
</p>

In der folgenden Auswahl klickst du erneut auf _Ubuntu (WSL)_.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-terminal-2.png" class="screenshot" />
</p>

Anschließend kannst du das schon geöffnete Terminal mit einem Klick auf die Mülltonne schließen.

<p align="center">
  <img alt="" src="/img/vscodium/vscode-terminal-3.png" class="screenshot" />
</p>

Wird nun erneut ein Terminal, z. B. mit `Strg` + `Shift` + `ö`, geöffnet,
so sollte dieses nun wie das (mittlerweile) gewohnte Terminal aussehen:

<p align="center">
  <img alt="" src="/img/vscodium/vscode-terminal-4.png" class="screenshot" />
</p>

### PDF-Betrachter

#### <a id="SumatraPDF"></a>Sumatra PDF

Als PDF-Betrachter für Windows solltest du Sumatra PDF verwenden.
Die Verwendung von Acrobat Reader empfehlen wir nicht, da er die PDF-Datei blockiert,
sodass sie nicht von TeX überschrieben werden kann (warum das wichtig ist, erfährst du im Workshop).
Den Download findest du unter dem folgenden Link.

[Sumatra Download](http://www.sumatrapdfreader.org/download-free-pdf-viewer.html){:target="_blank"}

Auf der Download-Seite kannst du dann die `x64` Version von Sumatra PDF mit einem `Linksklick` auf dem
hervorgehobenen Link herunterladen.
Dieser ist von der Form `SumatraPDF-X.X.X-64-install.exe`,
wobei die `X` die Versionsnummer ist und unterschiedlich zu der im Screenshot ist.


<p align="center">
  <img alt="" src="/img/sumatra/sumatra-download.png" class="screenshot" />
</p>

Die heruntergeladene Datei befindet sich im Downloads-Ordner, und du kannst sie durch einen doppelten `Linksklick` ausführen.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-install-1.png" class="screenshot" />
</p>

Infolgedessen öffnet sich das folgende Fenster, in dem du die Installation mit einem `Linksklick` auf _Installieren_ starten kannst.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-install-2.png" class="screenshot" />
</p>

Schließe das Fenster nach der Installation mit dem `X`.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-install-3.png" class="screenshot" />
</p>

Zuletzt solltest du Sumatra PDF noch als Standard PDF-Betrachter einstellen.
Dafür kannst du im Startmenü nach `Standard-Apps` suchen.
Anschließend öffnest du dann _Standard-Apps_.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-standard-app-1_win11.png" class="screenshot" />
</p>

In dem geöffneten Fenster kannst du in dem Suchfeld nach `.pdf` suchen und anschließend
auf das Icon am rechten Ende des Suchergebnisses klicken.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-standard-app-3_win11.png" class="screenshot" />
</p>

Dadurch öffnest du ein Auswahlmenü. In diesem musst du dann _SumatraPDF_ anklicken und mit
einem Klick auf `Standard festlegen` bestätigen.

<p align="center">
  <img alt="" src="/img/sumatra/sumatra-standard-app-4_win11.png" class="screenshot" />
</p>

Das Fenster kannst du anschließend wie gewöhnlich durch Klicken auf das `X` schließen.

#### <a id="evince"></a>Evince

Um, ohne viele Umstände, PDF-Dateien auch aus dem Windows Terminal öffnen zu können,
empfiehlt es sich auch, einen PDF-Betrachter für das WSL zu installieren.
Dafür musst du den folgenden Befehl in das Windows Terminal eingeben und die Installation mit einem `y` bestätigen:

```
sudo apt install evince
```

## <a id="test"></a>Testen

Im folgenden Abschnitt zeigen wir dir, wie du testen kannst, dass die Installationen funktioniert haben 
und somit entspannt in den Workshop starten kannst.

### Mamba: Python

Um die Python Installation (durch Mamba) zu testen, solltest du alle offenen Fenster des Windows Terminals
schließen und ein neues öffnen.

Um die installierten Pakete nutzen zu können, musst du zunächst die _virtuelle Umgebung_  mit diesem Befehl aktivieren:

```
mamba activate toolbox
```

Durch diesen Befehl ändert sich der Beginn der Eingabezeile von _(base)_ zu _(toolbox)_.

Gib nun nacheinander die folgenden Befehle in das Windows Terminal ein.
Nach Eingabe des ersten Befehls wird sich das Erscheinungsbild der Kommandozeile etwas verändern.

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

Schließe das Fenster mit dem Koordinatensystem und 
mit dem Befehl
```
quit
```
kannst du das Programm _ipython_ im beenden.


Beim Ausführen von `%matplotlib` kann es vorkommen, dass der Fehler
```
qt.qpa.plugin: Could not find the Qt platform "wayland" in ""
```
angezeigt wird.
Dieser lässt sich mit einer Umgebungsvariablen in der Datei `~/.bashrc` beheben.
Führe dazu folgenden Befehl im Terminal aus:
```
echo 'export QT_QPA_PLATFORM=xcb' >> ~/.bashrc
```

### Make

Make kannst du in einem Windows Terminal durch Eingeben des folgenden Befehls testen.

```
make
```

Es sollte folgende Ausgabe oder das deutsche Äquivalent erscheinen:
```
    make: *** No targets specified and no makefile found.  Stop.
```

### TeXLive

Die TeXLive Installation wird ebenfalls unter Verwendung des Windows Terminals getestet.
Gib in dieses den folgenden Befehl ein.

```
luatex
```

Es sollte folgende oder ähnliche Ausgabe erscheinen:

```
This is LuaTeX, Version 1.18.0 (TeX Live 2024)
restricted system commands enabled.
**
```

Diese kannst du mit Drücken der Tastenkombination `Strg-c` (`Strg` und `c`) beenden.
Nun kannst du ein weiteres Programm testen, das von LaTeX für das Literaturverzeichnis verwendet wird.
Teste das durch Eingabe des Befehls
```
biber
```

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

Zuletzt testen wir noch das Programm zur Betrachtung von Paket-Dokumentationen.
Der Test-Befehl lautet:
```
texdoc texlive
```

Schließe das aufgehende Fenster und beende das Windows Terminal mit
```
exit
```

## <a id="update"></a>Aktualisieren

### Mamba

Um Updates für mamba zu installieren,
trägst du in einem Windows Terminal folgenden Befehl ein.
```
mamba update -n toolbox --all
```

<p align="center">
  <img alt="" src="/img/mamba/mamba-update-1.png" class="screenshot" />
</p>

Auch hier musst du die Installation wieder mit einem `Y` gefolgt von einem `Enter` bestätigen.

<p align="center">
  <img alt="" src="/img/mamba/mamba-update-2.png" class="screenshot" />
</p>

Die Installation ist wie (mittlerweile) gewohnt abgeschlossen,
wenn die Eingabezeile auf dem Terminal angezeigt wird.

### Git, Make und weitere Unix-Tools

Um Updates für diese sogenannten Unix-Tools zu erhalten,
musst du, wie schon nach der Installation, nacheinander die beiden folgenden Befehle in ein
Windows Terminal eingeben.
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

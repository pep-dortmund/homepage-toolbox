---
layout: default
title: LaTeX Minimale Installation
---

Wir empfehlen die komplette Version zu installieren, falls der vorhandene Speicherplatz auf eurem Laptop/PC zu gering ist, könnt ihr die minimierte Version installieren.
**Es muss nur eine Version installiert werden!**


Um die minimale Version (≈600 MB) zu installieren könnt ihr das folgende Skript mit dem Terminal herunterladen

```
curl -fLO https://toolbox.pep-dortmund.org/install/downloads/toolbox-latex-install-mini.sh
```
Es ist von uns geschrieben und regelt den Download und die Installation.
Zum Ausführen muss folgender Befehl aus dem Ordner ausgeführt werden, in dem ihr das Skript gespeichert habt.
```
bash ./toolbox-latex-install-mini.sh
```

Nach der erfolgreichen Installation muss das Terminal neu gestartet werden.


### Welche Schritte passieren im Skript?

- **Z. 4** Einstellungen für das Behandeln von Fehlern, die während der Ausführung auftreten können
- **Z. 7** Erstellen eines temporären Ordners
- **Z. 9** Wechseln in das neu erstellte Verzeichnis
- **Z.10** Herunterladen des TeXLive Installers und entpacken vom tar-Ball
- **Z.13** Erstellen eines Installations-Profils _Toolbox_
- **Z.16** Starten der TeXLive Installation
- **Z.19** Hinzufügen des Installationspfades zum Systempfad
- **Z.22** Wechseln in das Installationsverzeichnis
- **Z.24** Installation der minimal benötigten Pakete
- **Z.93** Setzen der update Optionen

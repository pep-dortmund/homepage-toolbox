---
layout: install
permalink: /install/latex_mini/
title: LaTeX Minimale Installation
---

Wir empfehlen die komplette Version zu installieren, aber falls der vorhandene Speicherplatz auf deinem Laptop/PC zu gering ist, kannst du mit dieser Anleitung die minimierte Version installieren.
**Es muss nur eine Version installiert werden!**

Um die minimale Version (≈600 MB) zu installieren kannst du, analog zur vollen Installation, mit den folgenden Schritten beginnen, um das Installationsskript von TeXLive herunterzuladen:
```
$ cd ~/.local
$ curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
$ TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```
Um nicht die volle Version herunterzuladen, sondern die `basic` Version, musst du `S` eingeben und mit `Enter` bestätigen.
Danach kann das `full-scheme` auf `basic` gewechselt werden, indem du erst `d` und dann `R` eingibst und jeweils mit `Enter` bestätigst.

Anschließend kann wie bei der vollen Installation das Installieren mit `I` begonnen werden.

Hier wird aber nur das Programm _tlmgr_ installiert.

Damit das Programm anschließend ausführbar ist, muss der Pfad zu der Datei in der Konfigurationsdatei deiner Shell hinzugefügt werden.
Dafür fügst du die folgende Zeile der Datei `~/.bashrc` oder `~/.zshrc` hinzu.
Um zu sehen, welche Shell du benutzst, kannst du `echo $SHELL` im Terminal eingeben.
Wenn die Ausgabe _bash_ enthält, kannst du mit dem folgenden Befehl den Pfad zu TeXlive zum `PATH` hinzufügen
```
$ echo 'export PATH="$HOME/.local/texlive/2023/bin/x86_64-linux:$PATH"' >> ~/.bashrc
$ source ~/.bashrc
```
Für andere Terminal-Varianten musst du den `export` in die entsprechende Konfigurationsdatei schreiben.  
Dann sollten noch die Update-Optionen angepasst werden
```
$ tlmgr option autobackup -- -1
$ tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
```

Eine Liste aller notwendiger LaTeX Packages, die wir brauchen werden, lädst du mit
```
$ curl -fLO https://toolbox.pep-dortmund.org/install/downloads/latex_packages.txt
```
herunter.
Die Installation kann dann durchgeführt werden mit
```
$ xargs -a latex_packages.txt tlmgr install
```
Damit ist die Installation der kleinen Version abgeschlossen.
Weiter geht es mit den Tests in der Anleitung für [Windows 10](/install/windows_10/#test), [Windows 11](/install/windows_11/#test) oder [Linux](/install/linux/#test).

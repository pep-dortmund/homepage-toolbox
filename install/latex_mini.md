---
layout: default
title: LaTeX Minimale Installation
---

Wir empfehlen die komplette Version zu installieren, aber falls der vorhandene Speicherplatz auf eurem Laptop/PC zu gering ist, könnt ihr hier die minimierte Version installieren.
**Es muss nur eine Version installiert werden!**

Um die minimale Version (≈600 MB) zu installieren könnt ihr analog zur vollen Installation mit den folgenden Schritten beginnen, um das Installationsskript von TexLive herunterzuladen:
```
$ cd ~/.local
$ curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
$ TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```
Um nicht die volle Version herunterzuladen, sondern die `basic` Version, müsst ihr `S` eingeben und mit Enter bestätigen.
Danach kann das `full-scheme` auf `basic` gewechselt werden, indem ihr erst `d` und dann `R` eingebt und jeweils mit Enter bestätigt.

Anschließend kann wie bei der vollen Installation das Installieren mit `I` begonnen werden.

Hier wird aber nur das Programm tlmgr installiert.

Damit das Programm anschließend ausführbar ist, muss der Pfad zu der Datei in der Konfigurationsdatei eurer Shell hinzugefügt werden.
Dafür fügt ihr die folgende Zeile der Datei `~/.bashrc` oder `~/.zshrc` hinzu.
Um zu sehen, welche Shell ihr benutzt, könnt ihr `echo $SHELL` im Terminal eingeben.
Anschließend könnt ihr den Pfad zu Texlive dann mit folgendem Kommando zum `PATH` hinzufügen
```
$ echo 'export PATH="$HOME/.local/texlive/2022/bin/x86_64-linux:$PATH"' >> ~/.bashrc
$ source ~/.bashrc
```
Dann sollten noch die Update-Optionen angepasst werden
```
$ tlmgr option autobackup -- -1
$ tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```

Eine Liste aller notwendiger LaTeX Packages, die wir brauchen werden, ladet ihr mit
```
$ curl -fLO https://toolbox.pep-dortmund.org/install/downloads/latex_packages.txt
```
herunter.
Die Installation kann dann durchgeführt werden mit
```
$ xargs -a latex_packages.txt tlmgr install
```
Damit ist die Installation der kleinen Version abgeschlossen.
Weiter geht es mit den Tests in der Anleitung für [Windows 10](/install/windows.html#test), [Windows 11](/install/windows-11.html#test) oder [Linux](/install/linux.html#test).

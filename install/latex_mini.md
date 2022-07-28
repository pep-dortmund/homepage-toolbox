---
layout: default
title: LaTeX Minimale Installation
---

Wir empfehlen die komplette Version zu installieren, falls der vorhandene Speicherplatz auf eurem Laptop/PC zu gering ist, könnt ihr die minimierte Version installieren.
**Es muss nur eine Version installiert werden!**


Um die minimale Version (≈600 MB) zu installieren könnt ihr analog zur vollen Installation mit den folgenden Schritten beginnen, um das Installationsskript von TexLive herunterzuladen

```
cd ~/.local
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```
Danach muss das eingeben von `S`  mit Enter bestätigt werden. Dann kann das full-scheme auf basic gewechselt werden.
Dafür muss erst `d` und danach `R` jeweils mit Enter bestätigt werden.
Anschließend kann wie bei der vollen Installation das Installieren mit `I` begonnen werden.

Hier wird aber nur das Programm tlmgr installiert. 

Damit das Programm anschließend ausführbar ist, muss der Pfad zu der Datei in der Konfigurationsdatei eurer Shell hinzugefügt werden.
Dafür fügt ihr die folgende Zeile der Datei `~/.bashrc` oder `~/.zshrc` hinzu. 
Um zu sehen, welche Shell ihr benutzt, könnt ihr `echo $SHELL` im Terminal eingeben.
Anschließend könnt ihr den Pfad zu Texlive dann mit folgendem Kommando hinzufügen
```
echo 'export PATH="$HOME/.local/texlive/2022/bin/x86_64-linux:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Eine Liste aller notwendiger Latex Packages, die wir brauchen werden, bekommt ihr mit
```
curl -fLO https://toolbox.pep-dortmund.org/install/downloads/latex_packages.txt
```
Die Installation kann dann durchgeführt werden mit 
```
<latex_packages.txt | xargs tlmgr install 
```
Zu guter Letzt müssen noch die Update-Optionen angepasst werden
```
tlmgr option autobackup -- -1
tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```
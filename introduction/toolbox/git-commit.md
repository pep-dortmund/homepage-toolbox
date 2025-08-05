---
layout: install
permalink: /introduction/git-commit/
title:
---

## `git`: Die eigenen Änderungen hochladen

Wenn du an einem Punkt bist, den du auf GitHub hochladen möchtest,
wechselst du auf dein Terminal und tippst als Erstes
```
git status
```
Damit erhältst du eine Liste aller Dateien, die du verändert hast.
Mit
```
git add <file>
```
kannst du die Dateien in den Staging-Bereich schieben.
Hast du alle Dateien, die du in einem commit haben möchtest, hinzugefügt,
packst du den commit mit
```
git commit
```
und schreibst deine commit-Nachricht im sich öffnenden Texteditor.
Alternativ kannst du mit
```
git commit -m "<commit Nachricht>"
```
alles im Terminal schreiben.
Bevor du deine Änderungen hochlädst,
solltest du erst schauen,
ob während deiner Arbeitszeit Änderungen hochgeladen wurden.
Also führe erst
```
git pull
```
aus und dann,
nachdem du auch eventuell auftretende merge-Konflikte gelöst hast,
```
git push
```

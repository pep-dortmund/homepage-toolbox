---
layout: install
permalink: /introduction/toolbox/git-clone-repository
title:
---

## `git`: Ein Repository klonen

Wenn du ein Repository klonen möchtest, gehst du auf die GitHub-Seite des Repositories
und klickst dort auf _<> Code_.
Wenn du die _ssh-keys_ eingerichtet hast, kannst du jetzt auf _SSH_,
im Screenshot orange unterstrichen, klicken
und dann auf die beiden Quadrate rechts neben der Textzeile.

<p align="center">
  <img alt="" src="/img/toolbox/template_4.png" style="max-width:60%;" />
</p>

Öffne nun dein Terminal und navigiere mit `cd` zu dem Ordner,
wohin du das Repository klonen möchtest.
Oder navigiere mit deinem Dateiexplorer zu dem Ordner
und nutze die _Öffne Terminal hier_ Funktion
(per Rechtsklick oder `Strg`-Klick auf MacOS).
Jetzt kannst du mit
```
git clone git@github.com:chrbeckm/lab_course_2025_26.git
```
dein Repository lokal klonen.

**Wichtig ist, dass du `git@github.com:chrbeckm/lab_course_2025_26.git` mit
deinem kopierten Link ersetzt.**

# `git`: Ein Repository klonen

Wenn du ein Repository klonen möchtest, gehst du auf die GitHub-Seite des Repositories
und klickst dort auf {gui}`<> Code`.
Wenn du die _ssh-keys_ eingerichtet hast, kannst du jetzt auf {gui}`SSH`,
im Screenshot orange unterstrichen, klicken
und dann auf die beiden Quadrate {icon}`bi:copy` rechts neben der Textzeile.

```{image} /img/toolbox/template_4.png
:alt:
:align: center
```

Öffne nun dein Terminal und navigiere mit `cd` zu dem Ordner,
wohin du das Repository klonen möchtest.
Oder navigiere mit deinem Dateiexplorer zu dem Ordner
und nutze die {gui}`Öffne Terminal hier` Funktion
(per {kbd}`Rechtsklick` oder {kbd}`Strg`-{kbd}`Klick` auf MacOS).
Jetzt kannst du mit
```shell
git clone git@github.com:chrbeckm/lab_course_2025_26.git
```
dein Repository lokal klonen.

**Wichtig ist, dass du `git@github.com:chrbeckm/lab_course_2025_26.git` mit
deinem kopierten Link ersetzt.**

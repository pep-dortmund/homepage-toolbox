---
layout: install
permalink: /introduction/toolbox/new-labreport
title:
---

## Einen neuen Ordner für einen Versuch anlegen

In diesem Terminal bist du in dem Ordner, in dem die Datei liegt, auf die du geklickt hast.
Mit dem Terminal-Befehl `pwd` kannst du dir den aktuellen Pfad anzeigen lassen,
erhältst du als letzten Ordner in der Ausgabe den Namen deines Repositories,
bist du im Hauptordner.
Mit `ls` kannst du dir alle Dateien und Ordner ausgeben lassen,
die im aktuellen Ordner liegen, das sollten alle aus der linken Seitenleiste sein.
Alle, bis auf `.gitignore`, mit `ls -a` siehst du auch die `.gitignore` und
den Ordner `.git`. Dateien und Ordner mit einem Punkt am Anfang des Namens
werden versteckte Dateien genannt und verstecken sich vor dem einfachen `ls`-Befehl.

Wir wollen nun eine Auswertung und das Protokoll für den nächsten Versuch anfangen.
Dazu kopieren `cp` wir den `vXXX`-Ordner in einen neuen Ordner.
Um die Übersicht zu behalten, nennen wir die Ordner im Schema `v` + Versuchsnummer.
Du kannst gerne auch noch den Namen des Versuchs dahinter setzen,
hier wäre das zum Beispiel dann `v101_Das_Traegheitsmoment`.
Achte darauf, im Namen keine Leerzeichen oder Umlaute zu verwenden.
Im Folgenden zeigen wir dir alle Befehle für `v101`,
du kannst es für jeden anderen Versuch analog durchführen,
ersetze dafür `101` mit der anderen Versuchsnummer.
Das Kopieren ist im Screenshot die Zeile `cp -r vXXX v101`.
Wichtig ist hier auch, dass `-r`, da wir einen Ordner kopieren,
müssen wir es hinter den `cp` Befehl schreiben.
Im Anschluss sehen wir auch unseren neuen Ordner `v101` in der Ausgabe von `ls`.

<p align="center">
  <img alt="" src="/img/toolbox/VSCode_1.png" style="max-width:90%;" />
</p>

Nun wechseln wir mit `cd v101`,
oder `cd` deinem Ordnernamen, in den neu erstellten Ordner.
Dort benennen wir die `vXXX.tex` in `v101.tex` um;
```
cd v101
mv vXXX.tex v101.tex
```

<p align="center">
  <img alt="" src="/img/toolbox/VSCode_2.png" style="max-width:30%;" />
</p>

Als Nächstes ändern wir im _Makefile_ des neu erstellten Ordners
den Namen der `.tex` Datei.
Dazu gibt es in der ersten Zeile die Variable `TEXFILE`,
ersetze hier `vXXX` durch `v101` oder den Namen, den du im `mv`-Befehl vergeben hast.

## Arbeiten am Code

Nun kannst du am Code arbeiten,
zum Beispiel einen Ordner für die aufgenommenen Daten
und dort Dateien für die Messreihen erstellen.
```
mkdir data
touch data/{quader,puppe,feder}.txt
```

Auf das Schreiben des Codes gehen wir hier nicht näher ein,
du kannst aber jederzeit die Materialien als Nachschlagewerk verwenden.
Wenn du zwischen dem Schreiben am Code, ihn auch mal ausführen willst,
kannst du mit `Strg` + `ö` (deutsche Tastatur)/`Strg` + \` (englische Tastatur)
das Terminal wieder aufrufen und dann mit der Pfeiltaste nach oben
die letzten Befehle durchgehen und mit `Enter` ausführen.

**Bevor du mit `python` arbeitest, solltest du die toolbox environment aktivieren;
`mamba activate toolbox`.**

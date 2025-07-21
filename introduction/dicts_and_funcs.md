---
layout: install
permalink: /introduction/dicts_and_funcs/
title: Wörterbücher und eigene Funktionen
---

Das, was wir dir bisher gezeigt haben, kann ähnlich
in vielen anderen Programmiersprachen verwendet werden.
Jetzt möchten wir dir etwas zeigen, dass `python` spezifischer ist,
die `dictionaries`.

# Dictionaries

Wie in einem Wörterbuch funktioniert ein `dictionary` darüber,
dass wir hinter einem Schlagwort Inhalt finden.
In `python` heißt es `keys` und `items`.
Als Beispiel erstellen wir erst ein leeres `dictionary`.
Dann erstellen wir ein `dictionary` `lectures`
und fügen direkt eine Wahl an Vorlesungen
des ersten Semesters der Physik hinzu.
In der neunten Zeile fügen wir nachträglich die Vorlesungen
des zweiten Semesters hinzu.
Schließlich geben wir uns mehrere Dinge aus,
mehr dazu nach dem Code-Beispiel.
```python
empty_dict = dict()  # generates an empty dict
lectures = {
    "Semester 01": [
        "Physik I",
        "Einführung in die Programmierung",
        "Höhere Mathematik I",
    ]
}
lectures["Semester 02"] = ["Physik II", "Höhere Mathematik II"]
print(f"{lectures = }")
print(f"{lectures.keys() = }")
print(f"{lectures.items() = }")
print(f"{lectures["Semester 02"] = }")
```
Im Code siehst du eine aufgetrennte Zeile,
der Code funktioniert aber genauso,
als wenn wir ihn wie folgt schreiben.
```python
lectures = {"Semester 01": ["Physik I", "Einführung in die Programmierung", "Höhere Mathematik I"]}
```
Nur, dass er besser sichtbar ist, da die Zeile nicht so lang ist.

Wir sehen, dass wir `dictionary`-Einträge direkt in der Erstellung
des `dictionary` hinzufügen können und später.
In der Ausgabe sind dictionaries nicht so schön wie Listen oder
einzelne Variablen.
Umfasst von geschweiften Klammern `{}` sehen wir erst die `keys`
und dann das hinterlegte `item`.
Die Listen mit allen `keys` und `items` erhalten wir
mit den letzten beiden Ausgaben.
Wenn wir mit einem `key` das zugehörige `item` erhalten wollen,
nutzen wir, wie bei Listen, die eckigen Klammern und
setzen dort unseren `key` ein.
Als Ausgabe erhalten wir hier die Liste der Vorlesungen aus
dem zweiten Semester.

Das Liste der `keys` ist sehr nützlich,
wenn wir mit den `items` arbeiten wollen.
Um die Funktionsweise zu zeigen,
geben wir uns mit `for`-Schleifen die Vorlesungen aus,
die wir für die Semester eingetragen haben.
```python
for key in lectures.keys():
  print(f"Im {key} hörte ich die Vorlesungen")
  for lecture in lectures[key]:
    print(f"- {lecture}")
```
Mit `lectures.keys()` erhalten wir die Liste mit den `keys` des
`dictionaries`, mit der `for`-Schleife können wir über diese
iterieren.
`lectures[key]` liefert uns das `item` hinter dem `key`,
in diesem Beispiel die Liste der Vorlesungen aus dem jeweiligen
Semester.
Über diese Liste lassen wir eine weitere `for`-Schleife laufen.
Mit dieser lassen wir uns die einzelnen Vorlesungen ausgeben.

Schaffst du es, den Code so zu verändern,
dass die Vorlesungen zu denen passen, die du besucht hast?

# Funktionen selber schreiben

Weiter geht es im [Toolbox Workshop](/index/#Ablaufplan).

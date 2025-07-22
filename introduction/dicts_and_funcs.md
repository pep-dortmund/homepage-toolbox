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
Als Letztes wollen wir dir zeigen,
wie du eigene Funktionen schreiben kannst.
Denn mit [Schleifen](/introduction/control_structures/#Loops){:target="_blank"}
haben wir dir gezeigt, wie du an einer Stelle im Code Zeilen wiederholen kannst.
Mit Funktionen kannst du Teile deines Codes immer und immer wieder
an unterschiedlichen Stellen im Code verwenden, ohne sie dauernd neu zu schreiben.
Eine von `python` gestellte Funktion haben wir in diesen Lektionen sehr häufig verwendet, `print`.
Im Workshop selber werden wir dir noch mehr Funktionen zeigen,
die Möglichkeit unendlich viele selber zu schreiben ist diese hier:
```python
def function_name(argument_0, argument_1, argument_2):
    # Code to be excecuted
    # for example
    result = argument_1 * (argument_2 - argument_0)
    return result
```
Zuerst wollen wir über die Schreibweise sprechen.
Als Erstes kommt das _keyword_ `def`, definiere,
dann der Funktionsname `function_name`.
Diesen kannst du (fast) frei wählen, es empfiehlt sich, keinen Namen zu wählen,
den es in `python` gibt und du benutzen möchtest.
Und wie bei den Variablennamen hilft es, wenn der Name schon gut erklärt,
was die Funktion tut.
In den runden Klammern `()` stehen die Argumente, die du an die Funktion übergeben willst.
Das können Variablen sein, aber sogar auch andere Funktionen.
Eingerückt stehen die Zeilen, die beim Aufruf der Funktion ausgeführt werden.
Als Letztes, wenn du möchtest, kannst du auch etwas aus der Funktion zurückgeben.
Dafür nutzen wir das _keyword_ `return` und schreiben dahinter, was wir zurückgegeben haben wollen.

Jetzt schauen wir uns an, wie wir die Funktion aufrufen und wie wir an den Rückgabewert kommen.
```python
a = 2
b = 3
c = 4
return_value = function_name(a, b, c)
print(f"{return_value = }")
print(f"{function_name(a, b, c) = }")
```
Für jedes Argument müssen wir etwas übergeben.
Den Rückgabewert können wir uns entweder direkt ausgeben lassen,
oder in eine Variable schreiben. Letzteres ist häufig sinnvoller,
damit mit dem Wert weiter gearbeitet werden kann.

Ein letztes Beispiel ist eine physikalische Kraft.
```python
def coulomb_force(q1, q2, r):
    return 1 / (4 * 3.14 * 8.854e-12) * q1 * q2 / r

print(f"F_C = {coulomb_force(1.602e-19, -1.602e-19, 0.01)}")
```
Wir verkürzen die Zeilenanzahl, indem wir die Rechnung in der Zeile des `return` durchführen.
Du kennst die Formel aus deinem zweiten Semester, π ist als `3.14` abgekürzt.
In der `print`-Ausgabe lassen wir uns dann die Kraft zwischen einer positiven und
einer negativen Elementarladung im Abstand von 1 cm ausgeben. 
Wie du siehst ist die Ausgabe auch in der `e`-Notation, 
so wie wir auch einige Werte angegeben haben.

Das war es an Lektionen in dieser `python`-Einführung.
Weiter geht es im [Toolbox Workshop](/index/#Ablaufplan).

# Kompletter Code
Am Ende jeder Lektion findest du den kompletten Code der entsprechenden Lektion.
Da dies die letzte Lektion ist,
[findest du hier den kompleten Code aller Einheiten.](/introduction/complete_introduction.py)

```python
"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python/

The included section is: Wörterbücher und eigene Funktionen
"""

print("Lektion 4")
print("Dictionaries")

empty_dict = dict()  # generates an empty dict
lectures = {
    "Semester 01": [
        "Physik I",
        "Einführung in die Programmierung",
        "Höhere Mathematik I",
    ]
}
# lectures = {"Semester 01": ["Physik I", "Einführung in die Programmierung", "Höhere Mathematik I"]}
lectures["Semester 02"] = ["Physik II", "Höhere Mathematik II"]
print(f"{lectures = }")
print(f"{lectures.keys() = }")
print(f"{lectures.items() = }")
print(f"{lectures["Semester 02"] = }")

for key in lectures.keys():
  print(f"Im {key} hörte ich die Vorlesungen")
  for lecture in lectures[key]:
    print(f"- {lecture}")

print("Functions")


def function_name(argument_0, argument_1, argument_2):
    # Code to be excecuted
    # for example
    result = argument_1 * (argument_2 - argument_0)
    return result


a = 2
b = 3
c = 4
return_value = function_name(a, b, c)
print(f"{return_value = }")
print(f"{function_name(a, b, c) = }")


def coulomb_force(q1, q2, r):
    return 1 / (4 * 22/7 * 8.854e-12) * q1 * q2 / r


print(f"F_C = {coulomb_force(1.602e-19, -1.602e-19, 0.01):.2e}N")
```
---
layout: install
permalink: /introduction/control_structures/
title:
---
# Kontrollstrukturen

Als Kontrollstrukturen schauen wir uns in dieser Lektion
Fallunterscheidungen und Schleifen an.

## Fallunterscheidungen
_Wenn_, _sonst wenn_, _sonst_ ist eine Fallunterscheidung.

_Wenn_ ein Fall eintritt, wollen wir, dass gewisse Zeilen an Code
ausgeführt werden, wenn nicht, dann nicht.
Das Ganze können wir auch weiterführen und sagen,
_wenn_ ein Fall eintritt, soll ein Teil des Codes ausgeführt werden,
_sonst_ soll ein anderer Codeteil ausgeführt werden,
_wenn_ ein anderer Fall wahr ist.
Das Prozedere können wir so häufig wiederholen, wie wir brauchen.
Zum Schluss können wir alle Fälle zusammenfassen,
die _sonst_ noch auftreten können.

Im Code sieht es zum Beispiel so aus (diesen Pseudocode-Block jetzt nicht übernehmen)
```python
if statement:
    do this
elif different statement:  # elif short for else if
    then do this
else:
    all statements were wrong, do this
```
Wir sehen hier, dass die drei _keywords_ `if`, `elif` und `else`
dick geschrieben sind.
Nach den ersten beiden _keywords_ folgen `statements`,
die schauen wir uns im nächsten Abschnitt an.
Wichtig ist, dass am Ende jeder Zeile ein Doppelpunkt `:` steht.
Mit diesem wird der Teil des Codes eingeleitet, der ausgeführt wird,
wenn das davorstehende Statement korrekt ist.
Wichtig ist hier, dass die Zeilen eingerückt sind,
wie im Codeblock gezeigt.
Viele Programme, wie z.B. VSC, machen diese Einrückung automatisch,
ansonsten kannst du mit der `Tab`-Taste oder vier Leerzeichen
die Einrückung selber setzen.

Zum Start schauen wir uns deshalb erst einmal Vergleiche in `python` an, um
die Statements formulieren zu können.

### Vergleiche
Am Ende eines Vergleiches wissen wir, ob dieser Richtig oder Falsch ist,
in `python` heißt es `True` und `False`.
Probieren wir es direkt aus, die Operatoren kennen wir aus der Mathematik.
Bis auf _gleich_, da `=` einer Variable einen Wert zuweist, ist _gleich_ `==`.
```python
print(f"{1 < 2 = }")
print(f"{1 == 2 = }")
print(f"{1 > 2 = }")
print(f"{2 < 2 = }")
print(f"{2 <= 2 = }")
```
Damit können wir schon sehr viel vergleichen, ein Zeichen möchten wir
dir jetzt noch zeigen: das Ausrufezeichen `!`.
In `python` verwenden wir es, um _nicht_ nutzen zu können.
Dazu ein Paar an Beispielen.
```python
print(f"{1 != 2 = }")
print(f"{2 != 2 = }")
```
Du kannst so jetzt auch `<` als `!>` schreiben und andersrum
`>` als `!<`, das ist nur nicht sinnvoll,
da es schwieriger zum Lesen ist.

### `if`
Jetzt schreiben wir uns ein kleines Programm, welches uns ausgibt,
ob eine Zahl größer, kleiner oder gleich einer anderen Zahl ist.
Definieren wir uns also die Zahl, die wir vergleichen und die Zahl,
mit der wir sie vergleichen wollen.
Schreibe die folgenden Code-Blöcke jeweils an das Ende deiner `introduction.py` Datei.
Führe sie aus, wann immer du das Zwischenergebnis sehen willst, aber auf jeden Fall am Ende.
```python
nr_to_compare = 4
compare_to = 3
```
Als Erstes schauen wir uns kleiner an.
Wir vergleichen, ob `nr_to_compare` kleiner als `compare_to` ist und geben dann aus,
dass dies so ist, am besten noch mit den Werten.
Das kann wie folgt aussehen.
```python
if nr_to_compare < compare_to:
    print(f"{nr_to_compare} < {compare_to}")
```
Dafür schreiben wir als Erstes das keyword `if`,
danach folgt der Vergleich zwischen den beiden Zahlen.
Am Ende der Zeile kommt ein `:`, um `python` zu zeigen,
dass der Vergleich zu Ende ist und jetzt eingerückte Zeilen kommen,
die ausgeführt werden sollen, wenn der Vergleich korrekt ist.
In diesem Block geben wir die Zahlen mit dem richtigen Vergleichszeichen aus.

### `elif`
Nachdem wir den kleiner Vergleich gemacht haben,
müssen wir auch überprüfen,
ob `nr_to_compare` gleich `compare_to` ist.
Dafür müssen wir nicht ein neues `if`-statement aufmachen,
sondern können mit `elif` weiterschreiben.
Falls der Vergleich hinter dem `if` richtig wäre,
würde dieses `elif` übersprungen werden.
```python
elif nr_to_compare > compare_to:
    print(f"{nr_to_compare} > {compare_to}")
```
Die Syntax hier ist analog zu `if`, erst kommt das _keyword_
`elif`, kurz für _else if_, dann ein neuer Vergleich und der `:`
zum Abschluss der Zeile.

Ob die Zahlen gleich sind, testen wir mit einem weiteren `elif`.
```python
elif nr_to_compare == compare_to:
    print(f"{nr_to_compare} == {compare_to}")
```

### `else`
Eigentlich müsste mit den vorangegangenen Vergleichen alles abgedeckt sein,
wir fangen alle anderen Fälle aber trotzdem mit `else` ab.
Hier gibt es keinen Vergleich hinter `else`,
daher kommt direkt dahinter der `:`.
Alle Fälle, die nirgendwo mit einem `if` oder
`elif` Vergleich übereinstimmen, landen hier.
Wir geben die Werte aus, um notfalls einfacher Fehler zu finden.
```python
else:
    print(f"Error: {nr_to_compare = }, {compare_to = }")
```

Führen wir nun den Code aus, sehen wir, dass `4 > 3`.
Teste hier mal weitere Werte für `nr_to_compare` und `compare_to`.
Verhält sich alles so, wie du es erwartest?

## <a id="Loops"></a>Schleifen
Nachdem wir gelernt haben, wie wir Code schreiben können,
der nur ausgeführt wird, wenn bestimmte Bedingungen erfüllt sind,
geht es jetzt um Code, der wiederholt werden kann.
Solche Kontrollstrukturen werden Schleifen genannt und wiederholen
einen gewissen Codeteil wieder und wieder,
solange eine Bedingung erfüllt ist.
Es gibt verschiedene Varianten von Schleifen,
wir zeigen dir hier zwei.

### `while`
Die erste Schleifenart, die wir dir hier zeigen, ist die `während`-Schleife.
Das _keyword_ hier ist `while`, danach folgt, wie bei `if`, ein Statement.
Solange dieses Statement wahr ist, wird der Code in den nachfolgenden,
eingerückten Zeilen immer wieder ausgeführt.
```python
# do not include this code block in your introduction.py
while statement:
    do these lines
```

Gehen wir die Funktionsweise einmal anhand des folgenden Beispiels durch.
Schreibe es in deine `introduction.py` und führe sie wieder aus.
```python
print("while-loop start")
i = 0
while i < 2:
    print(f"{i = }")
    i += 1  # i = i + 1
print("while-loop done")
```
Gehen wir nun die Zeilen und die Ausgabe durch, um die Funktionsweise
der Schleife zu verstehen.
Vor der Schleife geben wir einmal „while-loop start“ aus,
damit wir in der Ausgabe klar erkennen können,
wo die Ausgabe der Schleife beginnt.
In der zweiten Zeile initialisieren wir die Variable `i` mit 0.
Für Variablen, die als Zähler in Schleifen verwendet werden,
sind kurze Namen wie `i` oder `j` üblich.
Zeile 3 lesen wir als, _während i kleiner als drei ist, tue Folgendes_.
Momentan ist `i = 0` uns damit kleiner als zwei, es werden jetzt die
eingerückten Zeilen ausgeführt.
Diese Zeilen beinhalten `i` auszugeben und anschließend
eins zu `i` zu addieren.
Dann springen wir wieder hoch zu `while i < 2`.
Ein Durchlauf der Schleife wird auch **Iteration** genannt.
Der Wert von `i` ist jetzt 1 und damit weiterhin kleiner als zwei.
Es wird wieder `i` ausgegeben und eins zu `i` addiert.
In diesem Moment ist `i = 2`.
Der Vergleich `i < 2` ist somit `False` und der Block der eingerückten
Zeilen wird übersprungen. Damit wird „while-loop end“ ausgegeben,
die erste nicht eingerückte Zeile nach dem `while`-_keyword_.

### `for`
Eine weitere Schleifenart ist die `für`-Schleife.
Diese führt die eingerückten Zeilen für alle Elemente eines Objekts durch.
Da das schwer zum Vorstellen ist, schauen wir uns direkt Beispiele an.
In der Lektion über [Listen](/introduction/variables/#Lists){:target="_blank"} haben wir eine Liste
mit verschiedenen Elementen erstellt. Definieren wir sie noch einmal,
falls du sie nicht mehr in deiner Datei hast.
```python
elements = ['gold', 'titan', 'copper', 'silver']
```
Jetzt wollen wir jedes Element einzeln ausgeben.
Dafür nehmen wir die `for`-Schleife und iterieren
über unsere Liste `elements`.
Als Code in der Schleife haben wir eine Zeile mit `print`.
```python
for element in elements:
    print(element)
```
Als Ausgabe erhalten wir die vier Elemente, jeweils eins pro Zeile,
in der Reihenfolge, wie sie in der Liste stehen.
Denn `python` führt folgende Befehle aus:
_Für jedes element in elements, gib den Inhalt der Variable element aus._
Im ersten Durchlauf der Schleife haben wir die Variable
`element = elements[0]`, was gleich `element = "gold"` ist.
Innerhalb der Schleife, der eingerückten Zeilen,
können wir auf das aktuelle Element mit `element` zugreifen.

Schauen wir uns den letzten Punkt in einem weiteren Beispiel an.
```python
numbers = [10, -4, 1]
for x in numbers:
    print(x**2)
print(numbers)
```
Hier haben wir uns eine Liste an Zahlen definiert
und lassen uns die Quadrate ausgeben.
Am Ende geben wir noch einmal die Liste aus und sehen,
dass diese unverändert ist.
Das Quadrieren innerhalb der Schleife ändert also nicht
die Elemente der Liste, da wir dort nur mit `x` arbeiten.

### `range`
Dieser Abschnitt gehört eigentlich noch zur `for`-Schleife,
wir führen hier aber noch die sehr nützliche Funktion `range` ein.

Als Erstes schauen wir uns an, was `range` kann.
```python
for i in range(3):
    print(i)
```
So bekommen wir sehr einfach die Zahlen zwischen Null und Zwei,
oder Null und einer anderen Zahl, sodass wir nicht eine Liste
selber schreiben müssen, falls wir diese Zahlen benötigen.

Probiere auch folgende ranges aus:
`range(2, 10, 2)` und `range(5, 0, -1)`.

Mit der ersten `range` werden die Zahlen von 2 bis 8 in
Zweierschritten ausgegeben.
Denn mit den Argumenten `2`, `10` und `2`, geben wir an,
dass wir die Zahlen zwischen `2`, eingeschlossen,
und `10`, nicht mehr eingeschlossen,
mit einer Schrittweite von `2` bekommen.

In der zweiten `range` geben wir analog an,
dass wir von 5 bis 0 - Schrittweite die Zahlen im Abstand
von -1 bekommen, also rückwärts.
Hier muss dann auch der Startwert größer sein als der Endwert,
sonst wird die Schleife effektiv übersprungen,
da keine passenden Zahlen existieren.

Weiter geht es in [Lektion 4 - Wörterbücher & eigene Funktionen](/introduction/dicts_and_funcs).

# Kompletter Code
Am Ende jeder Lektion findest du den kompletten Code der entsprechenden Lektion.

```python
"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python/

The included section is: control structures
"""

print("Lektion 3")

print("Vergleiche")
print(f"{1 < 2 = }")
print(f"{1 == 2 = }")
print(f"{1 > 2 = }")
print(f"{2 < 2 = }")
print(f"{2 <= 2 = }")

print(f"{1 != 2 = }")
print(f"{2 != 2 = }")

print("if-elif-else")
nr_to_compare = 4
compare_to = 3

if nr_to_compare < compare_to:
    print(f"{nr_to_compare} < {compare_to}")
elif nr_to_compare > compare_to:
    print(f"{nr_to_compare} > {compare_to}")
elif nr_to_compare == compare_to:
    print(f"{nr_to_compare} == {compare_to}")
else:
    print(f"Error: {nr_to_compare = }, {compare_to = }")

print("Loops")
print("while-loop start")
i = 0
while i < 2:
    print(f"{i = }")
    i += 1  # i = i + 1
print("while-loop done")

elements = ['gold', 'titan', 'copper', 'silver']
for element in elements:
    print(element)

print("for-loop")
numbers = [10, -4, 1]
for x in numbers:
    print(x**2)
print(numbers)

print("range 0")
for i in range(3):
    print(i)

print("range 1")
for i in range(2, 10, 2):
    print(i)

print("range 2")
for i in range(5, 0, -1):
    print(i)
```
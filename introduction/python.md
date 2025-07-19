---
layout: install
permalink: /introduction/python/
title: Einführung in Python
---

In dieser Anleitung möchten wir dir einen Einstieg in `python` geben,
und dafür direkt die von dir installierten Programme nutzen.

Wir möchten hier jede*n abholen, daher ist die Anleitung sehr detailliert.
Und dementsprechend auch länger, du musst nicht alle Lektionen auf einmal durchgehen,
merk dir in welcher Lektion du warst und steige dort dann wieder ein.

Du hast schon Erfahrungen gesammelt?
Dann lies dir die Abschnitte in deinem Tempo durch
und wenn dir alles bekannt ist,
schau, ob du den zusammengefassten Code am Ende jeder Lektion verstehst.

Wenn du einen Fehler in der Anleitung siehst oder dir etwas unklar ist,
kannst du immer auf das ? klicken, was auftaucht, wenn du auf der Seite herunterscrollst;
oder auf **Hilfe** in der oberen Leiste.
Dort findest du alle Informationen, die wir brauchen, um dir weiterzuhelfen.

# Die ersten Schritte
Das erste Programm, das typischerweise in einer neuen Programmiersprache geschrieben wird, ist _Hello World!_
Das Gleiche wollen wir hier auch machen und `python` beibringen, uns etwas auszugeben.

## VSCode/VSCodium
Als Erstes öffnen wir dazu VSCode/VSCodium (VSC ab jetzt).
Nutzt du Windows, klickst du auf das Windows-Logo am unteren Bildschirmrand
und tippst _VSCode_ ein und klickst auf die VSCode App.
Du hast einen Mac? Dann öffne den _Finder_ und tippe VSCodium ein,
öffne es dann auch.

<!-- ToDo Christian: Ergänze Screenshots von einem W11 Laptop. -->
Jetzt wollen wir einen Ordner _ToolboxWorkshop_ auf dem Desktop erstellen
und darin eine Datei _test.py_.
In VSC gibt es in der oberen Leiste _File_/_Datei_, klicke darauf und dann auf _Öffne Ordner_/_Open Folder_.
Navigiere in dem aufgehenden Fenster auf deinen Schreibtisch/Desktop Ordner
und erstelle einen neuen Ordner mit dem Namen `ToolboxWorkshop`.
Öffne diesen Ordner. In VSC kannst du hier jetzt in der linken Seitenleiste
eine Datei erstellen. Gib ihr den Namen `test.py`.

<img alt="" src="/img/introduction/VSCode_NewFile.png" style="max-width:40%;" />

Im Hauptbereich öffnet sich jetzt direkt `test.py`, momentan als leere Datei.

<img alt="" src="/img/introduction/VSCode_emptyTest.png" style="max-width:60%;" />

## _Hello World!_

Als erstes `python`-Programm schreiben wir eine Ausgabe von _Hello World!_
Schreibe dafür in deine `test.py`
```python
print("Hello World!")
```

<script
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"
  type="text/javascript">
</script>

`print` ist eine `python` Funktion, die es ermöglicht, verschiedenes auszugeben.
Wir werden sie in diesen Einheiten häufiger verwenden, um uns alles mögliche auszugeben.
Alles, was innerhalb der `()`-Klammern steht, heißt Argument,
in diesem Fall ist es der Text/[Strings](/introduction/python/Strings) "Hello World!"
Eine `python`-Funktion kannst du dir vorstellen wie eine mathematische Funktion,
z.B. $$f(x) = x^2$$. Nur dass in `python` nicht nur Zahlen als Argumente verwendet werden können.

Dein VSC sollte jetzt ähnlich zu dem folgenden Screenshot aussehen.
Wichtig ist hier der Hinweis neben OPEN EDITORS: _1 unsaved_
und der weiße Kreis neben dem Dateinamen.
Beides bedeutet, dass die Änderungen in der Datei noch nicht gespeichert sind.
Speichern kannst du mit `Strg` + `s`, oder über _File_ und dann _Datei speichern_/_Save File_.
Hier steht dann auch die Tastenkombination zum Speichern auf deinem Betriebssystem.
**Bevor du eine `python`-Datei ausführst, musst du deine Änderungen speichern,
sonst kann `python` deinen neu geschriebenen Code nicht ausführen.
Achte also immer auf den weißen Punkt.**

<img alt="" src="/img/introduction/VSCode_HelloWorld.png" style="max-width:80%;" />

## <a id="Terminal"></a>Terminal öffnen und `python` ausführen
Nun öffnen wir das in VSC integrierte Terminal, um darüber unsere `python`-Datei auszuführen.
Klicke dazu mit einem Rechtsklick auf den Dateinamen in der Liste links und dann auf
_Öffne in integriertem Terminal_/_Open in Integrated Terminal_.

<img alt="" src="/img/introduction/VSCode_Terminal.png" style="max-width:80%;" />

Am unteren Rand des Fensters ist jetzt das Terminal geöffnet.
Schreibe dort einmal `ls` ein und führe den Befehl aus, indem du auf `Enter` drückst.
`ls` ist kurz fürs _list_ und gibt dir aus, welche Dateien in einem Ordner sind.
Du solltest in den zurückgegebenen Namen `test.py` sehen.
Schreibe jetzt `python test.py` in das Terminal und führe es mit `Enter` aus.

Dein Terminal sollte jetzt ähnlich zu dem im Screenshot aussehen,
bis auf `(base) ToolboxWorkshop$`. Dies ist der Prompt und kann individuell angepasst werden.

<img alt="" src="/img/introduction/VSCode_TerminalOutput.png" style="max-width:80%;" />

## Kommentare
In Programmiersprachen sollen Kommentare verwendet werden, um den Code zu erklären.
Das ist nützlich für dich und andere Leute, die mit deinem Code arbeiten,
zum Beispiel dein/e Partnerïn im Praktikum.
Kommentare können auch verwendet werden, um Abschnitten im Code eine Art Überschrift
zu geben. Für die Praktikumsprotokolle könnten das _Daten einlesen_,
_Ausgleichsrechnung_ und _grafische Darstellung_ sein.
Kommentare, die eine Zeile lang sind oder in der Zeile mit dem Code stehen,
beginnen mit `#`.
Ab dem `#` wird alles bis zum Ende der Zeile als Kommentar angesehen.
Längere Kommentare beginnen mit `"""` und enden genau so.
Unseren aktuellen Code in `test.py` können wir somit so kommentieren:
```python
"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python/

The last included section is: Kommentare
"""

# Section: Die ersten Schritte

# Subsection: Hello World!
print("Hello World!")  # prints the words Hello World! as an output
# print("Hello World!") <-- this line will be ignored
```
Was fällt dir an der Ausgabe auf, wenn du diesen Code nun ausführst?

Es sollte sich nichts ändern.
Sämtliche Kommentare werden beim Ausführen ignoriert,
genauso wie die leeren Zeilen.
Du kannst also beide nutzen, um deinen Code zu strukturieren.

# Variablen
Als Nächstes möchten wir das Konzept von Variablen besprechen.
Variablen sind Objekte die einen Namen und einen Wert haben.

## Zahlen
Dem obigen Beispiel von Funktionen der Mathematik treu bleibend, starten wir mit Zahlen.
Ergänze dazu in deiner `test.py` die folgenden Zeilen am Ende der Datei.
```python
x = 5
print(x)
```
Es wird eine Variable mit dem Namen `x` erstellt und ihr wird der Wert 5 zugewiesen.
Dann geben wir mittels `print` die Variable aus.

Wenn dein Terminal am unteren Ende des Fensters noch ist, kannst du einmal in die
letzte Zeile klicken.
Mit der Pfeiltaste nach oben kannst du den letzten geschriebenen Befehl aufrufen
und mit `Enter` erneut ausführen.
Wenn dein Terminal geschlossen ist, findest du
[hier](/introduction/python/#Terminal){:target="_blank"}
die Schritte zum Öffnen.
Du solltest jetzt folgende Ausgabe sehen:
```
Hello World!
5
```

Nur eine Variable ist aber natürlich nicht alles, daher führen wir jetzt ein paar mehr ein.
Es ist gute Praxis, den Variablen englische Namen zu geben, mit `print` haben wir schon
gesehen, dass `python` Funktionen englische Namen haben, das bleibt auch so.
Ergänze die folgenden Zeilen am Ende deiner `test.py`.
```python
y = 3
thisisavariable = 4
hereIsAnother = 9.81
this_is_a_multiplicator = 2
```
Mit diesen Zeilen erstellen wir drei neue Variablen.
`y` ist ein Variablenname, den wir auch aus der Mathematik kennen,
in `python` können wir aber auch andere Bezeichner wählen, wie wir in den beiden anderen Zeilen sehen können.
Wichtig dafür ist, dass es ein zusammenhängender Name ist, also keine Leerzeichen hat und nicht mit einer Zahl beginnt.
Es ist immer sinnvoll, einen _sprechenden_ Namen zu wählen, Beispiele für das Praktikum sind
`nr_of_measurements`, `temperature_gold`, `lengthRod1`.
In dieser Anleitung werden wir, wenn es sinnvoll ist und wir nicht `a`, `b`, `x` & `y` nehmen, den
[snake_case](https://en.wikipedia.org/wiki/Naming_convention_(programming)#Examples_of_multiple-word_identifier_formats){:target="_blank"}
verwenden, wie z.B. `this_is_a_multiplicator`.

Für Kommazahlen müssen wir den Punkt als Dezimaltrennzeichen nutzen,
so wie bei `hereIsAnother`.

Wenn wir uns die Werte von mehreren Variablen ausgeben wollen, kann das unübersichtlich werden.
Um das besser zu gestalten, nutzen wir `f-strings`, die können deutlich mehr,
was wir im Workshop auch zeigen, hier beschränken wir uns auf das Grundlegenste.
Mit der folgenden Schreibweise können wir uns den Namen und Wert einer Variablen ausgeben lassen,
füge die Zeile ans Ende deiner Datei an und führe sie erneut aus.
```python
print(f"{x = }")
print(f"{hereIsAnother = }")
```
Wie der Name vorsagt, benötigen wir für `f-strings` ein `f` und einen String.
Das `f` siehst du in den beiden `print`-Funktionen nach der Klammer auf.
Strings sind eine Ansammlung von Zeichen, und wir schauen sie uns im Abschnitt
[Strings](/introduction/python/Strings) direkt im Anschluss an.
Jetzt benötigen wir nur die Information, dass Strings in `python` mit einem `"`
beginnen und aufhören.
In `f-strings` nutzen wir die geschweiften Klammern `{}`, um uns den Wert der
darin enthaltenen Variable auszugeben, das `=` sorgt dafür, dass erst der Name
und dann der Wert ausgegeben wird.

### Rechenmethoden
Wie in der Mathematik können wir auch die Grundrechenarten in `python` nutzen,
die Symbole sind `+`, `-`, `*`, `/`.
Exponenten werden in `python` mit `**` geschrieben.
Eine Besonderheit in Programmiersprachen sind Modulo und Ganzzahldivision,
für diese werden die Zeichen `%` und `//` verwendet.

Die folgenden Code-Zeilen kannst du wieder ans Ende deiner `test.py` kopieren,
du darfst aber auch gerne eigenes ausprobieren.
```python
print("Rechenmethoden")
# Addition
print(f"{4 + 2 = }")
print(f"{8 + 4 + 5 = }")
# Subtraction
print(f"{4 - 2 = }")
print(f"{5 - 8 = }")
# Multiplication
print(f"{4 * 2 = }")
print(f"{5 * 8 = }")
# Division
print(f"{4 / 2 = }")
print(f"{5 / 8 = }")
# Exponential
print(f"{4**2 = }")
print(f"{2**(-1) = }")
```
Diese Rechenmethoden sind dir sicherlich vertraut,
für die folgenden beiden schauen wir uns erst den Code und die Ausgabe an
und besprechen sie dann detaillierter.
```python
# Modulo
print(f"{4 % 1 = }")    # = 0
print(f"{4 % 2 = }")    # = 0
print(f"{4 % 3 = }")    # = 1
print(f"{4 % 4 = }")    # = 0
print(f"{4 % 5 = }")    # = 4
# Euclidian division / Division mit Rest
print(f"{3 // 1 = }")   # = 3
print(f"{3 // 2 = }")   # = 1
print(f"{3 // 4 = }")   # = 0
```
Modulo (`%`) gibt an, welcher Rest bei der Division übrig bleibt.
4 ist ohne Rest durch 1, 2 und 4 teilbar, 3 passt einmal in die 4 und lässt den Rest 1 über.
Analog passt die 5 keinmal in die 4 und lässt damit den Rest 4 über.
Die Ganzzahldivision (`//`) gibt an, wie häufig der Divisor komplett in den Dividenden passt.
Wie bei der „normalen“ Division passt die 1 dreimal in die 3.
Die 2 nur einmal in die 3 und die 4 gar nicht.


## <a id="Strings"></a>Strings
Als Strings werden Variablen bezeichnet, die eine Reihe an Zeichen enthalten,
in den meisten Fällen sind es Buchstaben.
Das kann wie im _Hello World!_ Beispiel „Hello World!“ sein, aber auch noch ganz viel mehr.

Vor dem nächsten Beispielcode wollen wir einmal String-Addition erwähnen und erklären es nach dem Beispiel.
Schreib also wieder diesen Code ans Ende der Datei und führe sie aus.
```python
print("Strings")
club_name = "PeP et al. e.V."
event = "Toolbox Workshop"
year = "2025"
print(event)
string_addition = club_name + event + year
print(string_addition)
```
Strings werden in `python` durch Anführungszeichen markiert, wie wörtliche Rede in Texten.
Die erste Zeile des neuen Ausgabeteils ist der Inhalt der Variablen `event`.
Die letzte ausgegebene Zeile ist das Ergebnis der String-Addition,
denn Zeichenketten werden in `python` so addiert, dass sie aneinander angehängt werden.
Da das Ergebnis nicht so gut aussieht, es fehlen Leerzeichen, fügen wir diese drei Zeilen ans Ende an.
Was fällt dir an Unterschieden in der Ausgabe auf?
```python
string_addition = club_name + " " + event + " " + year
print(string_addition)
print(club_name, event, year)
```
Im Gegensatz zur ersten `string_addition` Ausgabe sind jetzt Leerzeichen zwischen
den einzelnen Variablen. Erreicht haben wir das durch die Leerzeichen-Strings `" "`.
Wir können also immer Strings kombinieren, egal ob die einen als Variablen kommen
und die anderen als Strings in der Zeile.
Die letzte Ausgabe sieht so aus wie die `string_addition` mit Leerzeichen,
das liegt daran, dass `print` standardmäßig Leerzeichen zwischen die Argumente setzt.
Die Argumente sind in diesem Fall die drei String-Variablen, getrennt durch Kommata.

## Lists
Mit den bisher vorgestellten Variablen können wir einzelne Zahlen oder Zeichenketten
in unserem Programmcode verwenden.
Wenn wir nun aber etwas gemessen haben, wird es schon bei wenigen Messwerten lästig,
für jeden Messwert eine einzelne Variable zu erstellen und zu nutzen.
Deswegen führen wir hier Listen ein, diese können mehrere Werte speichern.
Wie bei allen anderen Variablen müssen wir auch einer Liste einen Namen geben,
wir nehmen hier an, dass wir die Namen von Elementen aus dem Versuch speichern wollen.
Daher nennen wir sie `elements` und speichern die Namen mehrerer Elemente.
```python
elements = ["gold", "silver", "copper"]
```
Dass es sich bei `elements` um eine Liste handelt,
wird durch die eckigen Klammern `[]` gekennzeichnet.
Die einzelnen Elemente der Liste werden zwischen die Klammern gesetzt
und mit Kommata voneinander getrennt.
Geben wir nun die Liste aus erhalten wir
```python
print(f"{elements = }")
# elements = ['gold', 'silver', 'copper']
```
### Indizieren
Da wir so nur die gesamte Liste ausgeben können, schauen wir uns jetzt an,
wie wir einzelne Elemente aus der Liste bekommen.
Dieses nennt man indizieren und funktioniert, wie das Erstellen der Liste,
mit eckigen Klammern. Folglich schreiben wir um das erste Element der Liste zu bekommen
```python
print(f"{elements[1] = }")
```
Wenn wir das Ausführen erhalten wir `elements[1] = 'silver'`.

Wenn du noch keine Programmiererfahrung hast, ist das sicherlich überraschend.
Das erste Element der Liste ist doch eigentlich `gold`,
warum gibt `python` dann `silver` aus?
In fast allen Programmiersprachen fängt das Zählen bei 0 an,
somit ist `elements[1]` das zweite Element, in unserer „normalen“ Zählweise.
Für die Liste `elements` können wir die Indizes 0, 1, 2 verwenden,
aber auch -1, -2 und -3.
Mit folgendem Code können wir uns das erste und das letzte Element ausgeben lassen.
```python
print(f"{elements[0] = }", f"{elements[-3] = }")
print(f"{elements[2] = }", f"{elements[-1] = }")
```
Aus einer Liste können wir nicht nur einzelne Elemente bekommen,
sondern auch Teillisten. Dafür schreiben wir nicht nur eine Zahl in die eckigen Klammern,
sondern `[Anfangsindex:Endindex+1]`.
Folgende Zeilen geben drei Teillisten aus, schaffst du es vor dem Ausführen
herauszufinden was die Ausgabe ist?
```python
print(f"{elements[0:2] = }")
print(f"{elements[-3:-1] = }")
print(f"{elements[2:] = }")
```
Die erste Zeile gibt uns eine Liste mit den Elemente von Index 0 bis Index 2-1=1 aus.
Mit der zweiten Zeile erhalten wir die gleiche Teilliste,
da wir hier die Liste nur mit den negativen Indizes indizieren.
In der dritten Zeile sehen wir nur eine Zahl um den Doppelpunkt,
diese Schreibweise verkürzt Indizierungen, wenn wir vom Start oder bis zum Ende
der Liste gehen wollen. Die ganze Liste bekommen wir auch mittels `elements[:]`.

### Ersetzen und erweitern
Wie bei den anderen Variablen, können wir einzelne Elemente der Liste überschreiben.
Nehmen wir an, wir sollten im Versuch nicht mit Silber arbeiten, sondern mit Titan.
Dann können wir den Eintrag ersetzen
```python
elements[1] = "titan"
print(f"{elements = }")
```
Fällt uns ein, dass wir doch noch eine Messung mit Silber gemacht haben,
können wir die Liste mit der Funktion `.append()` erweitern.
```python
elements.append("silver")
print(f"{elements = }")
```
Wie bei Zahlen und Strings schauen wir uns auch für Listen an, was bei `+` und `*` passiert.
Mit `+` werden Listen zusammengeführt, die ursprünglichen Listen bleiben aber unverändert.
`*` vervielfacht Listen, auch ohne die Ursprungsliste zu verändern.
```python
print(f"{elements+elements[:2] = }")
print(f"{elements * 2 = }")
print(f"{elements = }")
```

# Kontrollstrukturen
Immer wenn du `python test.py` aufrufst geht `python` die Datei von oben nach
unten durch und führt die Zeilen nacheinander aus.
Für einfache Programme ist das ausreichend, doch schnell wirst du Grenzen erreichen
oder ganz häufig die gleichen Zeilen schreiben.
Damit du und alle anderen das nicht machen müsst, gibt es Kontrollstrukturen.

## If-elif-else

## Schleifen

# Dictionaries

# Funktionen selber schreiben

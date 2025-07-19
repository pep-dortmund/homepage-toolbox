---
layout: install
permalink: /introduction/python/
title: Einführung in Python
---

In dieser Anleitung möchten wir dir einen Einstieg in `python` geben,
und dafür direkt die von dir installierten Programme nutzen.

# Schritte:
### VSC öffnen
### Desktop als Ordner öffnen, oder anderen wenn gewünscht
### python Datei erstellen
### print("Hello World")
### Terminal öffnen und ausführen
### Variablen
### Zahlen, und Ausgabe mit print
### f string aber nur für print mit Variablennamen
### Rechenmethoden
### Strings
### String addition
### lists
### if else
### Schleifen
### Dict
### Funktionen selber schreiben

Wir möchten hier jede*n abholen, daher ist die Anleitung sehr detailliert.
Und dementsprechend auch länger, du musst nicht alle Lektionen auf einmal durchgehen,
merk dir in welcher Lektion du warst und steige dort dann wieder ein.

Du hast schon Erfahrungen gesammelt?
Dann lies dir die Abschnitte in deinem Tempo durch
und wenn dir alles bekannt ist,
schau ob du den zusammengefassten Code am Ende jeder Lektion verstehst.

Wenn du einen Fehler in der Anleitung siehst oder dir etwas unklar ist,
kannst du immer auf das ? klicken, was auftaucht, wenn du auf der Seite herunterscrollst;
oder auf **Hilfe** in der oberen Leiste.
Dort findest du alle Informationen die wir brauchen um dir weiterzuhelfen.

# Die ersten Schritte
Das erste Programm was typischerweise in einer neuen Programmiersprache geschrieben wird ist _Hello World!_
Das gleiche wollen wir hier auch machen und `python` beibringen, uns etwas auszugeben.

## VSCode/VSCodium
Als erstes öffnen wir dazu VSCode/VSCodium (VSC ab jetzt).
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

Als erstes `python`-Programm schreiben wir eine Ausgabe von _Hello World!_.
Schreibe dafür in deine `test.py`
```python
print("Hello World!")
```

<script
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"
  type="text/javascript">
</script>

`print` ist eine `python` Funktion die es ermöglicht verschiedenstes auszugeben.
Wir werden sie in diesen Einheiten häufiger verwenden um uns alles mögliche auszugeben.
Alles was innerhalb der `()`-Klammern steht heisst Argument, in diesem Fall ist es der Text/string "Hello World!"
Eine `python`-Funktion kannst du dir vorstellen wie eine mathematische Funktion,
z.B. $$f(x) = x^2$$ , nur dass in `python` nicht nur Zahlen als Argumente verwendet werden können.

Dein VSC sollte jetzt ähnlich zu dem folgenden Screenshot aussehen.
Wichtig ist hier der Hinweis neben OPEN EDITORS: _1 unsaved_
und der weiße Kreis neben dem Dateinamen.
Beides bedeutet, dass die Änderungen in der Datei noch nicht gespeichert sind.
Speichern kannst du mit `Strg` + `s`, oder über _File_ und dann _Datei speichern_/_Save File_.
Hier steht dann auch die Tastenkombination zum speichern auf deinem Betriebssystem.

<img alt="" src="/img/introduction/VSCode_HelloWorld.png" style="max-width:80%;" />

## <a id="Terminal"></a>Terminal öffnen und `python` ausführen
Nun öffnen wir das in VSC integrierte Terminal um darüber unsere `python`-Datei auszuführen.
Klicke dazu mit einem Rechtsklick auf den Dateinamen in der Liste links und dann auf
_Öffne in integriertem Terminal_/_Open in Integrated Terminal_.

<img alt="" src="/img/introduction/VSCode_Terminal.png" style="max-width:80%;" />

Am unteren Rand des Fensters ist jetzt das Terminal geöffnet.
Schreibe dort einmal `ls` ein und führe den Befehl aus indem du auf `Enter` drückst.
`ls` ist kurz fürs _list_ und gibt dir aus welche Dateien in einem Ordner sind.
Du solltest in den zurückgegebenen Namen `test.py` sehen.
Schreibe jetzt `python test.py` in das Terminal und führe es mit `Enter` aus.

Dein Terminal sollte jetzt ähnlich zu dem im Screenshot aussehen,
bis auf `(base) ToolboxWorkshop$`. Dies ist der Prompt und kann individuell angepasst werden.

<img alt="" src="/img/introduction/VSCode_TerminalOutput.png" style="max-width:80%;" />

# Variablen
Als nächstes möchten wir das Konzept von Variablen besprechen.
dem obigen Beispiel von Funktionen der Mathematik treu bleibend, starten wir mit Zahlen.
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
die Schritte zum öffnen.
Du solltest jetzt folgende Ausgabe sehen:
```
Hello World!
5
```

Nur eine Variable ist aber natürlich nicht alles, daher führen wir jetzt ein paar mehr ein.
Es ist gute Praxis den Variablen englische Namen zu geben, mit `print` haben wir schon
gesehen, dass `python` Funktionen englische Namen haben, das bleibt auch so.
Ergänze die folgenden Zeilen am Ende deiner `test.py`.
```python
y = 3
thisisavariable = 4
hereIsAnother = 10
this_is_a_multiplicator = 2
```
Mit diesen Zeilen erstellen wir drei neue Variablen.
`y` ist ein Variablenname den wir auch aus der Mathematik kennen,
in `python` können wir aber auch andere Bezeichner wählen, wie wir in den beiden anderen Zeilen sehen können.
Wichtig dafür ist, dass es ein zusammenhängender Name ist, also keine Leerzeichen hat und nicht mit einer Zahl beginnt.
es ist immer sinnvoll einen _sprechenden_ Namen zu wählen, Beispiele für das Praktikum sind
`nr_of_measurements`, `temperature_gold`, `lengthRod1`.


## Rechenmethoden
Wie in der Mathematik können wir auch die Grundrechenarten in `python` nutzen,
die Symbole sind `+`, `-`, `*`, `/`.
Exponenten werden in `python` mit `**` geschrieben.
Eine Besonderheit in Programmiersprachen sind modulo und Ganzzahldivision,
für diese werden die Zeichen `%` und `//` verwendet.

```python
# Beispiele der Rechenarten
```


Wenn wir uns die Werte von mehreren Variablen ausgeben wollen, kann das unübersichtlich werden. Um das besser zu gestalten, nutzen wir `f-strings`, die können deutlich mehr, was wir im Workshop auch zeigen, hier beschränken wir uns auf das Grundlegenste.
Mit der folgenden Schreibweise können wir uns den Namen und Wert einer Variablen ausgeben lassen, füge die Zeile ans Ende deiner Datei an und führe sie erneut aus.
```python
print(f"{x = }")
print(f"{novhEineVariable = }")
```

# Strings
Als Strings werden werden Variablen bezeichnet "Text" enthalten.
Das kann wie im _Hello World!_ Beispiel "Hello World!" sein, aber auch noch ganz viel mehr.

Vor dem nächsten Beispielcode wollen wir einmal String-Addition erwähnen und erklären es nach dem Beispiel.
Also wieder Code ans Ende der Datei schreiben und ausführen
```python
vereinsname = "PeP et al. e.V."
veranstaltung = "Toolbox Workshop"
jahr = "2025"
print(veranstaltung)
string_addition = vereinsname + veranstaltung + jahr
print(string_addition)
```
Strings werden in `python` durch Anführungszeichen markiert, wie wörtliche Rede in Texten.
Die erste Zeile des neuen Ausgabeteils ist der Inhalt der Variablen `veranstaltung`.
Die letzte ausgegeben Zeile ist das Ergebnis der String Addition, denn Zeichenketten werden in `python` so addiert, dass sie aneinander angehängt werden.
Da das Ergebnis nicht so gut aussieht, ersetzen wir die letzte Zeile mit diesen beiden, was fällt dir an Unterschieden in der Ausgabe auf?
```python
string_addition = vereinsname + " " + veranstaltung + " " + jahr
print(string_addition)
print(veranstaltung, veranstaltung, jahr, sep=" ")
```

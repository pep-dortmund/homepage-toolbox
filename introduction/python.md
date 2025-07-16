In dieser Anleitung möchten wir dir einen Einstieg in `python` geben, 
 und dafür direkt die von dir installierten Programme nutzen. 
  
 Schritte: 
 - VSC öffnen 
 - Desktop als Ordner öffnen, oder anderen wenn gewünscht 
 - python Datei erstellen 
 - print("Hello World") 
 - Terminal öffnen und ausführen 
 - Variablen 
 - Zahlen, und Ausgabe mit print 
 - f string aber nur für print mit Variablennamen 
 - Rechenmethoden 
 - Strings 
 - String addition 
 - lists 
 - if else 
 - Schleifen 
 - Dict 
 - Funktionen selber schreiben

# Die ersten Schritte
Das erste Programm was typischerweise in einer neuen Programmiersprache geschrieben wird ist _Hello World!_
Das gleiche wollen wir hier auch machen und `python` beibringen, uns etwas auszugeben.
Schreibe dafür in deine `test.py` 
```python
print("Hello World!")
```
`print` ist eine `python` Funktion die es ermöglicht verschiedenstes auszugeben.
Wir werden sie in diesen Einheiten häufiger verwenden um uns alles mögliche auszugeben.
Alles was innerhalb der `()`-Klammern steht heisst Argument, in diesem Fall ist es der Text/string "Hello World!"
Eine `python`-Funktion kannst du dir vorstellen wie eine mathematische Funktion,
z.B. $f(x) = x^2$, nur dass in `python` nicht nur Zahlen als Argumente verwendet werden können.

Jetzt kannst du mit einem Rechtsklick auf den Dateinamen in der linken Leiste ein Terminal öffnen und dort `python test.py` eingeben.
Das ist der Befehl um mit dem Programm `python` das Skript `test.py` auszuführen.
Mit `Enter` führen wir den Befehl aus und können im Terminal _Hello World!_ lesen.

# Variablen
Als nächstes möchten wir das Konzept von Variablen besprechen.
dem obigen Beispiel der Mathematik treu bleibend, starten wir mit Zahlen.
Ergänze dazu in deiner `test.py` die folgenden Zeilen am Ende der Datei.
```python
x = 5
print(x)
```
Du solltest jetzt folgende Ausgabe sehen,
```
Hello World!
5
```
Nur eine Variable ist aber natürlich nicht alles, daher führen wir jetzt ein paar mehr ein,
ergänze dazu die folgenden Zeilen
```python
y = 3
dasisteinevariable = 4
novhEineVariable = 10
dies_ist_einteiler = 2
```
Mit diesen Zeilen erstellen wir drei neue Variablen.
`y` ist ein Variablenname den wir auch aus der Mathematik kennen,
in `python` können wir aber auch andere Bezeichner wählen, wie wir in den beiden anderen Zeilen sehen können.
Wichtig dafür ist, dass es ein zusammenhängender Name ist, also keine Leerzeichen hat und nicht mit einer Zahl beginnt.
es ist immer sinnvoll einen _sprechenden_ Namen zu wählen, Beispiele sind
`anzahl_an_messungen`/`nr_of_measurements`
usw.

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
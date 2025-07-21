---
layout: install
permalink: /introduction/first_steps/
title:
---
<script
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"
  type="text/javascript">
</script>
# Die ersten Schritte

Worauf musst du achten, wenn du eine (neue) Programmiersprache lernst?
Für Programmiersprachen gibt es eine Syntax, die vorgibt,
welche Schlüsselwörter/keywords es gibt und was diese tun.
Zudem gibt sie vor, wie Code geschrieben werden soll,
wie bei der Grammatik einer Sprache, geht es um die Reihenfolge
von Wörtern/Befehlen, die vom Gegenüber, Mensch oder Computer,
verstanden werden.
So wie um Zeichen, die Sätze oder den Code strukturieren.

Im Vergleich zu `C++` oder `Java`, zwei weitverbreiteten Sprachen,
nutzt `python` weniger Zeichen um den Code zu strukturieren.
Ein paar gibt es dennoch, also bereitet eure
`:`, `{`, `(`, `[`, `]`, `)`, `}`-Tasten vor.

Das erste Programm, das typischerweise in einer neuen Programmiersprache geschrieben wird, ist _Hello World!_
Das Gleiche wollen wir hier auch machen und `python` beibringen, uns etwas auszugeben.

## VSCode/VSCodium
Als Erstes öffnen wir dazu VSCode/VSCodium (VSC ab jetzt).
Nutzt du Windows, klickst du auf das Windows-Logo am unteren Bildschirmrand
und tippst _VSCode_ ein und klickst auf die VSCode App.
Du hast einen Mac? Dann öffne den _Finder_ und tippe VSCodium ein,
öffne es dann auch.

<!-- ToDo Christian:
  - Ergänze Screenshots von einem W11 Laptop
  - test.py -> introduction.py
-->
Jetzt wollen wir einen Ordner _ToolboxWorkshop_ auf dem Desktop erstellen
und darin eine Datei _introduction.py_.
In VSC gibt es in der oberen Leiste _File_/_Datei_, klicke darauf und dann auf _Öffne Ordner_/_Open Folder_.
Navigiere in dem aufgehenden Fenster auf deinen Schreibtisch/Desktop Ordner
und erstelle einen neuen Ordner mit dem Namen `ToolboxWorkshop`.
Öffne diesen Ordner. In VSC kannst du hier jetzt in der linken Seitenleiste
eine Datei erstellen. Gib ihr den Namen `introduction.py`.

<img alt="" src="/img/introduction/VSCode_NewFile.png" style="max-width:40%;" />

Im Hauptbereich öffnet sich jetzt direkt `introduction.py`, momentan als leere Datei.

<img alt="" src="/img/introduction/VSCode_emptyTest.png" style="max-width:60%;" />

## _Hello World!_

Als erstes `python`-Programm schreiben wir eine Ausgabe von _Hello World!_
Schreibe dafür in deine `introduction.py`
```python
print("Hello World!")
```

An dieser Stelle wird dir auffallen, dass die Farben in deinem VSC
anders sind als in dem Codeblock. Das ist kein Fehler.
Die farbliche Gestaltung nennt man _Highlighting_ und ist je nach
Programm unterschiedlich. Lass dich also nicht davon irritieren,
wenn die Farben zwischen den Codeblöcken hier und dem Code in VSC
unterschiedlich sind.
Wenn du dich an die Farben in VSC gewöhnt hast, ist es sehr praktisch,
da du so einfacher Strukturen im Code erkennen kannst.
Und Tippfehler, wenn zum Beispiel `print` nicht mehr farbig hinterlegt
ist, weil `prnit` getippt wurde.

`print` ist eine `python` Funktion, die es ermöglicht, verschiedenes auszugeben.
Wir werden sie in diesen Einheiten häufiger verwenden, um uns alles mögliche auszugeben.
Alles, was innerhalb der `()`-Klammern steht, heißt Argument,
in diesem Fall ist es der Text/[String](/introduction/python/#Strings){:target="_blank"} "Hello World!"
Eine `python`-Funktion kannst du dir vorstellen wie eine mathematische Funktion,
z.B. $$f(x) = x^2$$. Nur dass in `python` nicht nur Zahlen als Argumente verwendet werden können.

<img alt="" src="/img/introduction/VSCode_HelloWorld.png" style="max-width:80%;" />

Dein VSC sollte jetzt ähnlich zum folgenden Screenshot aussehen.
Wichtig ist hier der Hinweis neben OPEN EDITORS: _1 unsaved_
und der weiße Kreis neben dem Dateinamen.
Beides bedeutet, dass die Änderungen in der Datei noch nicht gespeichert sind.
Speichern kannst du mit `Strg` + `s`, oder über _File_ und dann _Datei speichern_/_Save File_.
Hier steht dann auch die Tastenkombination zum Speichern auf deinem Betriebssystem.

**Bevor du eine `python`-Datei ausführst, musst du deine Änderungen speichern,
sonst kann `python` deinen neu geschriebenen Code nicht ausführen.
Achte also immer auf den weißen Punkt.**

## <a id="Terminal"></a>Terminal öffnen und `python` ausführen
Nun öffnen wir das in VSC integrierte Terminal, um darüber unsere `python`-Datei auszuführen.
Klicke dazu mit einem Rechtsklick auf den Dateinamen in der Liste links und dann auf
_Öffne in integriertem Terminal_/_Open in Integrated Terminal_.

<img alt="" src="/img/introduction/VSCode_Terminal.png" style="max-width:80%;" />

Am unteren Rand des Fensters ist jetzt das Terminal geöffnet.
Schreibe dort einmal `ls` ein und führe den Befehl aus, indem du auf `Enter` drückst.
`ls` ist kurz fürs _list_ und gibt dir aus, welche Dateien in einem Ordner sind.
Du solltest in den zurückgegebenen Namen `introduction.py` sehen.
Schreibe jetzt `python introduction.py` in das Terminal und führe es mit `Enter` aus.

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
Unseren aktuellen Code in `introduction.py` können wir somit so kommentieren:
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

Weiter geht es in [Lektion 2 - Variablen](/introduction/variables).

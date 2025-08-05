---
layout: install
permalink: /introduction/makefile
title:
---

## Die Struktur des Makefiles

An dieser Stelle wollen wir über das Makefile schreiben und dir die Regeln,
die schon drin stehen, erklären;
und auch den Rest.

- ```make
  TEXFILE = vXXX
  ```
  Wir erstellen hier die Variable `TEXFILE` um darin den Namen der
  Haupt-`.tex`-Datei zu speichern.
  Wenn wir die Variable später nutzen wollen, schreiben wir `$(TEXFILE)`.
  Aus `build/$(TEXFILE).pdf` wird dann `build/vXXX.pdf`.
- ```make
  all: build/$(TEXFILE).pdf
  ```
  Es ist üblich, als erstes Ziel das `all` Ziel zu setzen,
  und in unserem Fall ist es das mit LaTeX erstellte PDF.
  Auch wenn wir `python`-Skripts im Makefile stehen haben,
  sind die dort erzeugten Dateien nicht unser Endziel im Praktikum,
  da wird ein Protokoll abgegeben und nicht nur einzelne Plots.
- ```make
  build/plot.pdf: plot.py ../matplotlibrc ../header-matplotlib.tex | build
    TEXINPUTS=$$(pwd)/..: MATPLOTLIBRC=../matplotlibrc python plot.py
  ```
  Nun schauen wir uns die erste Regel im Makefile an,
  sämtliche Regeln folgen diesem Aufbau.
  Zuerst steht die Zieldatei, dann getrennt durch einen Doppelpunkt `:`,
  die Dateien, die wir benötigen, um die Zieldatei zu erstellen,
  und in der nächsten Zeile, eingerückt durch einen Tab,
  der Befehl, der ausgeführt werden muss, um die Zieldatei zu erstellen.
  Das `recipe` wird immer ausgeführt, wenn eines der `prerequisites`
  ein späteres Zugriffsdatum als das `target` hat.
  ```make
  target: prerequisites
    recipe
  ```
  In dieser Regel wird `build/plot.pdf` erstellt.
  Benötigt dazu werden `plot.py`, das `python`-Skript, welches die Auswertung durchführt,
  und die beiden Konfigurationsdateien `matplotlibrc` und `header-matplotlib.tex`.
  Diese ermöglichen dir innerhalb der `matplotlib`-Plots LaTeX zu verwenden,
  beide liegen im Hauptordner des Repository und daher muss `../` vor ihnen stehen,
  damit sie gefunden werden.
  Weiteres zu LaTeX in `matplotlib` findest du in den
  [Folien zu LaTeX](https://toolbox.pep-dortmund.org/files/archive/current/latex.pdf){:target="_blank"}
  im Abschnitt _TeX in matplotlib in TeX_.
  Zusätzlich solltest du hier auch deine Datendateien hinschreiben,
  mit relativem Pfad zum Makefile, z.B. `data/quader.txt`.
  Als Letztes in dieser Zeile steht `| build`, zum Abspeichern
  benötigt `python` den `build`-Ordner, das Zugriffsdatum von diesem ist egal,
  deswegen steht es hinter der Pipe `|`, hier wird nur geprüft, ob der Ordner existiert.

  Das `recipe` setzt sich aus verschiedenen Komponenten zusammen.
  Als Erstes wird `python` der Pfad zu den Konfigurationsdateien mitgeteilt,
  mit `TEXINPUTS=$$(pwd)/..:` der zu `header-matplotlib.tex`,
  mit `MATPLOTLIBRC=../matplotlibrc` zur `matplotlibrc`.
  Der Rest der Zeile ist der Aufruf `python plot.py`.
- ```make
  build/$(TEXFILE).pdf: build/plot.pdf
  ```
  Diese Zeile ist eine Möglichkeit,
  einer Datei eine Abhängigkeit zuzuordnen,
  ohne eine komplette Regel zu schreiben.
  Innerhalb des Protokolls wird `build/plot.pdf` eingefügt,
  daher sollte die Datei existieren, bevor wir mit LaTeX
  das Hauptdokument bauen.
- Möchtest du ein weiteres `python`-Skript hinzufügen,
  kannst du folgende Zeilen in dein Makefile schreiben.
  Die Namen der Dateien sind hier `<fit>`,
  ersetze diese fünf Zeichen mit deinen eigenen Dateinamen.
  ```make
  build/<fit>.pdf: <fit>.py data/<fit>.py ../matplotlibrc ../header-matplotlib.tex | build
    TEXINPUTS=$$(pwd)/..: MATPLOTLIBRC=../matplotlibrc python <fit>.py
  ```
  Die Zeile `build/$(TEXFILE).pdf: build/plot.pdf`
  kannst du dann entsprechend erweitern,
  mit dem Backslash `\` können wir die weitere Datei
  in eine weitere Zeile schreiben
  und mit noch mehr Dateien wird die Zeile noch länger
  und auch unübersichtlicher.
  ```make
    build/$(TEXFILE).pdf: build/plot.pdf \
      build/<fit>.pdf
  ```
- ```make
  build/$(TEXFILE).pdf: FORCE | build
    TEXINPUTS=..: \
    BIBINPUTS=..: \
    max_print_line=1048576 \
    latexmk \
      --lualatex \
      --output-directory=build \
      --interaction=nonstopmode \
      --halt-on-error \
    $(TEXFILE).tex
  ```
  Dies ist die lange LaTeX-Regel.
  Sie enthält alles, was in den
  [`make`-Folien](https://toolbox.pep-dortmund.org/files/archive/current/make.pdf){:target="_blank"}
  besprochen wird.
  Die `prerequisites` sind hier anders als für die `python`-Regeln.
  `| build` haben wir bei der `python`-Regel besprochen,
  neu ist `FORCE`.
  Das ist eine niemals erfüllte Abhängigkeit,
  weiter unten im Makefile sehen wir auch eine Zeile,
  die nur `FORCE:` beinhaltet.
  Dadurch wird immer das `recipe` ausgeführt,
  das ist hier extra so geschrieben,
  da wir `latexmk` aufrufen und nicht `lualatex`.
  Du siehst auch, dass wir nirgendwo angegeben haben,
  welche `.tex`-Dateien zu dieser Regel gehören.
  Das müssen wir nicht, da `latexmk` das selbstständig macht,
  wenn es liest, welches die Hauptdatei ist.
  Gehen wir einmal die einzelnen Zeilen des `recipe` durch:
  - `TEXINPUTS=..: \`:
    Im Hauptordner des Repository liegt die `header.tex`,
    die wir nutzen, damit `latexmk` sie findet,
    erweitern wir den Standardsuchpfad (`:`),
    der den aktuellen und alle Unterordner beinhaltet,
    um den Hauptordner.
    Mit den `\` können wir die Zeile visuell in mehrere
    einzelne aufteilen, ausgeführt wird von `TEXINPUTS` bis
    `$(TEXFILE).tex` alles als eine Zeile.
  - `BIBINPUTS=..: \`:
    Auch den Suchpfad für Literaturverzeichnisdateien
    erweitern wir, da jetzt schon `lit.bib` und `programme.bib`
    in dem Hauptordner liegen.
    Denn `latexmk` erkennt auch, wenn du `biber` nutzt und
    führt alles in der richtigen Reihenfolge aus.
  - `max_print_line=1048576 \`:
    Mit dieser Zeile erweitern wir die Anzahl an Zeichen,
    diebeim Ausführen von LaTeX in eine Zeile geschrieben
    werden dürfen.
    Das macht die Ausgabe _schöner_ und nicht so sehr abgehackt.
  - `latexmk \` startet `latexmk` mit den Argumenten
    - `--lualatex`: Es wird `lualatex` als TeX-Engine verwendet.
    - `--output-directory=build \`:
      Alle Dateien, die erstellt werden,
      werden in den `build`-Ordner gespeichert.
    - `--interaction=nonstopmode \`: Falls Fehler auftreten,
      wird die interaktive Lösungsstrategie von `lualatex`
      deaktiviert.
    - `--halt-on-error \`:Falls Fehler auftreten,
      stoppt der Prozess.
    - `$(TEXFILE).tex`: Die Datei, die wir bauen wollen.
- ```make
  build:
    mkdir -p build
  ```
  In den Regeln haben wir den `build`-Ordner schon besprochen,
  hier wird er erstellt.
  Er hat keine Abhängigkeiten,
  daher endet die erste Zeile nach dem Doppelpunkt `:`.
  Die Flag `-p` sorgt dafür, dass keine Fehlermeldung
  ausgegeben wird, wenn der Ordner schon existiert
  und dass, wenn wir eine Kette von Ordnern erstellen wollen,
  z.B. `build/figures`, alle Ordner in der Kette erstellt werden.
- ```make
  clean:
    rm -rf build
  ```
  Es ist gute Praxis, einen Befehl zu haben, der das Projekt
  in den Zustand vor der Ausführung von `make` versetzt.
  Da alles, was erzeugt wird, im `build`-Ordner gespeichert wird,
  müssen wir nur diesen löschen.
  Die Doppel-Flag `-rf` setzen wir,
  da wir einen Ordner löschen (`-r`)
  und keine Fehlermeldung ausgegeben haben wollen,
  falls das zu löschende Objekt nicht existiert (`-f`).
- ```make
  FORCE:
  ```
  Wie in der LaTeX-Regel beschrieben ist dies ein
  immer aktuelles `target`.
- ```make
  .PHONY: all clean
  ```
  Dies ist die letzte Regel und wird gesetzt,
  damit `make` weiß, dass die gelisteten `targets`
  keine Dateien erzeugen und falls es doch Dateien gibt,
  die so heißen, immer noch die Regeln ausgeführt werden.

### Das Makfile ausführen

Wenn du dein `Makefile` nutzen möchtest, hast du mehrere Möglichkeiten.
1. `make`: Dieser Befehl sorgt dafür, dass alles ausgeführt wird,
  damit die aktuellste Version der im `all` `target` genannten `prerequisites`
  am Ende vorliegt.
2. `make clean`: So räumst du deinen Versuchsordner wieder auf.
3. `make build/plot.pdf`: Du arbeitest gerade am Plot oder an einem anderen
  `python`-Skript und möchtest dir die Ergebnisse ansehen?
  Dann kannst du als Argument hinter `make` das entsprechende `target` schreiben.

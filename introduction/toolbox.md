---
layout: install
permalink: /introduction/toolbox/
title: Beispielhafte Nutzung der Programme
---

Auf dieser Seite erklären wir dir beispielhaft am
[Template-Repository](https://github.com/pep-dortmund/toolbox-workshop-protocol-template){:target="_blank"}
wie das Arbeiten mit den vorgestellten Programmen ablaufen kann.

Du suchst nach einem bestimmten Abschnitt?
Am rechten Rand gibt es ein Inhaltsverzeichnis,
mit dem du zu dem entsprechenden Abschnitt springen kannst.

## git: Das Template-Repository
Für das Praktikum haben wir eine Vorlage für die Protokolle geschrieben.
Du musst also nicht alles aus den Folien und Notebooks selber herausschreiben für deine Vorlage.
Um das Template sinnvoll nutzen zu können, brauchst du einen GitHub-Account,
falls du also keinen hast, kannst du dir
[hier](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2Feducation&source=header){:target="_blank"}
einen erstellen.

In der Nutzung von git ist es einfacher, mit einem ssh-keys als Passwortersatz zu arbeiten.
Am Ende der [git-Folien](https://toolbox.pep-dortmund.org/files/archive/current/git.pdf){:target="_blank"}
findest du eine Anleitung zum Einrichten von ssh-keys als Authentifizierungsmethode bei GitHub.

Zum Nutzen des Templates folgst du
[diesem Link zum Repository](https://github.com/pep-dortmund/toolbox-workshop-protocol-template){:target="_blank"}.
Dort klickst du auf den grünen Knopf _Use this template_, rechts am Bildrand.
Im aufploppenden Dialog wählst du dann _Create a new repository_ aus.

<p align="center">
  <img alt="" src="/img/toolbox/template_0.png" style="max-width:80%;" />
</p>

Auf der folgenden Seite musst du ein paar Sachen eintragen.

1. Als _Repository template_ muss _pep-dortmund/toolbox-workshop-protocol-template_ ausgewählt sein.
2. Bei _Owner_ wird dein GitHub Nutzername stehen, nicht _chrbeckm_, der schreibt nur diese Anleitung.
3. Im Textfeld unterhalb von _Repository name*_ musst du einen Namen für dein Repository angeben.
  Wichtig ist hier, dass der Name von dir noch nicht vergeben ist, das zeigt dir GitHub aber auch mit einem grünen Haken an.
   Hier ist als Beispiel der Name `lab_course_2025_26` vergeben,
   du kannst aber zum Beispiel auch `anfaengerpraktikum_20xx_xx` wählen und die `x` mit den entsprechenden Jahren ersetzen.
   Ein guter Name vereinfacht es, das Repository später besser wiederzufinden.
4. _Public_ oder _Private_: Du kannst wählen, ob dein Repository öffentlich,
  also von allen Internetnutzenden gesehen werden kann, oder privat ist
  und nur von dir und eingeladenen GitHub-Nutzenden angesehen werden kann.
5. Zum Schluss klickst du auf _Create repository_.

<p align="center">
  <img alt="" src="/img/toolbox/template_1.png" style="max-width:60%;" />
</p>

Warte kurz, bis dein Repository erstellt wurde,
dann wirst du automatisch zu deinem Repository weitergeleitet.

<p align="center">
  <img alt="" src="/img/toolbox/template_2.png" style="max-width:40%;" />
</p>

Nach dem Laden sieht dein Repository ähnlich zu dem auf der linken Seite aus.
Im Hintergrund läuft gerade noch ein Prozess, der einige Dateien aus deinem Repository
entfernt, die du nicht brauchst, wir brauchen diese aber im Template-Repository.
Entfernt wurden `.github/workflows` und `environment.yml`.
Zudem wurde der Inhalt der `README.md` in `notes.md` übertragen,
sodass du eigene Zeilen in die `README.md` schreiben kannst.

<p align="center">
  <img alt="" src="/img/toolbox/template_3.png" style="max-width:100%;" />
</p>

## git: Ein Repository clonen
Wenn du ein Repository klonen möchtest, gehst du auf die GitHub-Seite des Repositories
und klickst dort auf _<> Code_.
Wenn du die _ssh-keys_ eingerichtet hast, kannst du jetzt auf _SSH_,
im Screenshot orange unterstrichen, klicken
und dann auf die beiden Quadrate rechts neben der Textzeile.

<p align="center">
  <img alt="" src="/img/toolbox/template_4.png" style="max-width:60%;" />
</p>

Öffne nun dein Terminal und navigiere mit `cd` zu dem Ordner,
wohin du das Repository klonen möchtest.
Oder navigiere mit deinem Dateiexplorer zu dem Ordner
und nutze die _Öffne Terminal hier_ Funktion
(per Rechtsklick oder `Strg`-Klick auf MacOS).
Jetzt kannst du mit
```
git clone git@github.com:chrbeckm/lab_course_2025_26.git
```
dein Repository lokal klonen.

**Wichtig ist, dass du `git@github.com:chrbeckm/lab_course_2025_26.git` mit
deinem kopierten Link ersetzt.**

## VSCodium/VSCode (VSC) öffnen
1. Öffne VSC und gehe über _Datei_/_File_ zu _Ordner öffnen_/_Open Folder_.
    Dort wird auch die Tastenkombination für dein Betriebssystem angezeigt,
    z.B. erst `Strg`+`k` dann `Strg`+`o`.
    Im aufgehenden Fenster navigierst du zu dem Ordner,
    indem du arbeiten möchtest, und öffnest den.
    <p align="center">
      <img alt="" src="/img/introduction/VSCode_NewDir1.png" style="max-width:60%;" />
    </p>
2. Wenn du in einem Terminal bist,
  kannst du mit `cd` zu dem gewünschten Ordner navigieren.
  Dort kannst du mit `codium .`, wenn du VSCodium installiert hast,
  sonst mit `code .`, bei VSCode (Windows), den Ordner in VSC öffnen.

In VSC kannst du mit einem Rechtsklick auf eine der Dateien ein Terminal
innerhalb von VSC öffnen.

<p align="center">
  <img alt="" src="/img/toolbox/VSCode_0.png" style="max-width:50%;" />
</p>

## git pull: Änderungen herunterladen
Bevor du anfängst, an den Dateien zu arbeiten,
solltest du erst einmal schauen,
ob jemand anderes Änderungen hochgeladen hat.
Schreibe dazu
```
git pull
```
in dein Terminal und führe es mit `Enter` aus.
Alle Änderungen, die auf GitHub hochgeladen wurden,
nachdem du das letzte Mal `git pull` ausgeführt hast,
werden so heruntergeladen und du kannst mit dem aktuellen Stand arbeiten.

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

## Makefile
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

### Makfile ausführen
Wenn du dein `Makefile` nutzen möchtest, hast du mehrere Möglichkeiten.
1. `make`: Dieser Befehl sorgt dafür, dass alles ausgeführt wird,
  damit die aktuellste Version der im `all` `target` genannten `prerequisites`
  am Ende vorliegt.
2. `make clean`: So räumst du deinen Versuchsordner wieder auf.
3. `make build/plot.pdf`: Du arbeitest gerade am Plot oder an einem anderen
  `python`-Skript und möchtest dir die Ergebnisse ansehen?
  Dann kannst du als Argument hinter `make` das entsprechende `target` schreiben.

## git
Wenn du an einem Punkt bist, den du auf GitHub hochladen möchtest,
wechselst du auf dein Terminal und tippst als Erstes
```
git status
```
Damit erhältst du eine Liste aller Dateien, die du verändert hast.
Mit
```
git add <file>
```
kannst du die Dateien in den Staging-Bereich schieben.
Hast du alle Dateien, die du in einem commit haben möchtest, hinzugefügt,
packst du den commit mit
```
git commit
```
und schreibst deine commit-Nachricht im sich öffnenden Texteditor.
Alternativ kannst du mit
```
git commit -m "<commit Nachricht>"
```
alles im Terminal schreiben.
Bevor du deine Änderungen hochlädst,
solltest du erst schauen,
ob während deiner Arbeitszeit Änderungen hochgeladen wurden.
Also führe erst
```
git pull
```
aus und dann,
nachdem du auch eventuell auftretende merge-Konflikte gelöst hast,
```
git push
```

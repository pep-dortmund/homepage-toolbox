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

Öffne nun dein Terminal und navigiere mit `cd` zu dem Ordner wohin du das Repository
klonen möchtest.
Oder navigiere mit deinem Dateiexplorer zu dem Ordner
und nutze die _Öffne Terminal hier_ Funktion
(per Rechtsklick, oder `Strg`-Klick auf MacOS).
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
  indem du arbeiten möchtest und öffnest den.
  <p align="center">
    <img alt="" src="/img/introduction/VSCode_NewDir1.png" style="max-width:60%;" />
  </p>
2. Wenn du in einem Terminal bist,
  kannst du mit `cd` zu dem gewünschten Ordner navigieren.
  Dort kannst du mit `codium .`, wenn du VSCodium installiert hast,
  `code .`, bei VSCode (Windows), den Ordner in VSC öffnen.

In VSC kannst du mit einem Rechtsklick auf eine der Dateien ein Terminal
innerlahb von VSC öffnen.

Bild dazu

dann routine neuen Versuch anlegen 



## <a id="Ein neuer Versuch wird ausgewertet"></a>Ein neuer Versuch wird ausgewertet
Schritte:
- Öffnen von VSCode/VSCodium
- Open folder, git repo
- Open Terminal in VSC
- git pull
- work on files (Routine von template repo?)
- mamba activate toolbox
- make in terminal (`Strg` + `ö`, `Arrow up`)
- make build/plot.pdf
- git add
- git commit
- git push

## <a id="Ein GitHub Repository clonen">Ein GitHub Repository clonen
- Mittel des Terminals navigieren
- clone id von Github holen

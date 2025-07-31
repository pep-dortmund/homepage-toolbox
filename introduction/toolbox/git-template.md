---
layout: install
permalink: /introduction/toolbox/git-template
title:
---

## `git`: Das Template-Repository

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

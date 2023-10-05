---
layout: install
title: Installation eines Dual-Boot-Systems
---

Dual-Boot-System meint die Installation von zwei Betriebssystemen auf dem gleichen Rechner.
Dies ist nützlich, wenn man auf beide Betriebssysteme angewiesen ist.
Bei jedem Neustart wird ausgewählt, welches Betriebssystem gestartet werden soll.
Es lassen sich auch Festplatten-Partitionen einrichten, auf die beide Betriebssysteme
zugreifen können.

Während Linux für das wissenschaftliche Arbeiten zahlreiche Vorteile bietet,
gibt es einige wichtige Programme, die nicht für Linux verfügbar sind.
Zugriff auf diese Programme ist der Hauptgrund für ein Dual-Boot-System aus Windows und Linux.

Dies betrifft zum Beispiel:

* Microsoft Office (Word, Excel, PowerPoint etc.)
* Adobe Creative Suite (Photoshop, Lightroom, InDesign etc.)
* Die Mehrheit der Computerspiele

Diese Anleitung geht davon aus, dass du Windows 10/11 bereits installierst hast.
Bei der Installation eines Windows/Linux-Dual-Boot Systems muss Windows als erstes installiert
werden.

Weiterhin geht diese Anleitung davon aus, dass dein Rechner
[UEFI](https://en.wikipedia.org/wiki/Unified_Extensible_Firmware_Interface) verwendet.
Dies sollte für alle modernen Rechner die Regel sein, es kann aber vorkommen,
dass Windows im sogenannten *Legacy-BIOS* Modus installiert wurde, dann sollte Windows im UEFI Modus neu installiert werden.

Falls du einfach nur Linux installieren willst,
kannst du der Anleitung ab
[Schritt 6](#einen-bootfähigen-usb-stick-für-die-linux-installation-erstellen) folgen.


## Inhalt
{:.no_toc}

1. Table of Contents
{:toc}


## Vollständiges Backup erstellen

Die Installation eines neuen Betriebssystems involviert die Erstellung und
Formatierung neuer Partitionen, wenn etwas schiefgeht, können Daten verloren gehen.
<span style="color:crimson"> **Deshalb solltest du als Erstes ein vollständiges
Backup deines Rechners machen, bevor du weitermachst!** </span>



## Sich für eine Linux-Distribution entscheiden

Hinter dem Begriff Linux verbirgt sich „nur“ der absolute Kern des Betriebssystems.
Darauf aufbauend gibt es viele verschiedene „Distributionen“, die verschiedene
Programme vorinstallieren.
Hauptunterschiede sind die verwendete grafische Benutzeroberfläche und der Paketmanager.

**Für Einsteiger empfehlen wir [Ubuntu](https://www.ubuntu.com/), [Xubuntu](https://xubuntu.org/) oder [Kubuntu](https://kubuntu.org/).**
Diese drei Distributionen nutzen das gleiche Betriebssystem,
aber unterschiedliche grafische Benutzeroberflächen.


Der aktuelle Release von (K,X)Ubuntu ist die Version `23.04`,
es erscheinen halbjährlich im April und Oktober neue Versionen.
Alle zwei Jahre erscheint eine neue Version mit längerem (5 Jahre)
Support für Updates (LTS Version), 22.04 ist die aktuelle LTS Version.

Alternativen zu Ubuntu sind zum Beispiel (alphabetisch):

* [ArchLinux](https://www.archlinux.org/)
* [CentOS](https://www.centos.org/)
* [EndeavourOS](https://endeavouros.com/)
* [Fedora](https://getfedora.org/de/)
* [Gentoo](https://www.gentoo.org/)
* [openSUSE](https://www.opensuse.org/)


## Windows-Speicher freigeben

Eine Linux Installation erfordert ca. 10 GB Speicherplatz, um wirklich gut
damit arbeiten zu können, empfehlen wir mindestens 30 GB, besser 100 GB.

Um Linux auf die gleiche Festplatte wie Windows zu installieren,
musst du als Erstes eine Partition auf dieser Festplatte verkleinern.

Öffne hierzu die Datenträgerverwaltung (`Rechtsklick aufs Startmenü → Datenträgerverwaltung`),
wähle eine Partition zum Verkleinern aus (zum Beispiel C:\\) mit `Rechtsklick → Volume verkleinern...`.

Nun wird es einen Moment dauern, während geprüft wird,
um viel die Partition verkleinert werden kann.
Trage dann eine Zahl (in MB) ein, zum Beispiel 102400 für 100 GB.

## Mainboard-Uhr auf UTC stellen

Auf dem Mainboard des PCs wird die Uhrzeit gespeichert, Windows geht hier davon aus,
dass die lokale Uhrzeit gespeichert wird, Linux nimmt UTC an.
Wenn dies nicht geändert wird, stimmen die Uhrzeiten auf Windows und Linux nicht überein
und können in beiden System falsch sein.


Um Windows ebenfalls auf UTC umzustellen, muss die Registry bearbeitet werden.

1. Öffne das Programm `regedit`; am einfachsten, indem du `regedit` tippst,
  während das Startmenü offen ist, und auf `Registrierungs-Editor` klickst.

1. Navigiere auf der linken Seite zu
  `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation`

1. Erstelle per `Rechtsklick → neu → DWORD` einen neuen Schlüssel mit dem Namen
  `RealTimeIsUniversal` und setze den Wert auf `1`.

## Fast-Boot deaktivieren

Der Fast-Boot-Modus von Windows 10 cached Dateien,
um beim nächsten Start schneller betriebsbereit zu sein.
Dies verträgt sich aber nicht mit zwei Betriebssystemen,
die auf die gleichen Dateisysteme zugreifen.

`Rechtsklick auf Start → Energieoptionen → Auswählen was beim Drücken des Netzschalters geschehen soll`
und dann das Häkchen bei Fast-Boot entfernen.

## Einen bootfähigen USB-Stick für die Linux-Installation erstellen

1. Lade das Image deiner ausgewählten Linux Distribution herunter, zum Beispiel
   <https://cdimage.ubuntu.com/kubuntu/releases/22.04.3/release/kubuntu-22.04.3-desktop-amd64.iso>
   für Kubuntu.

1. Installiere das Tool `Rufus`, um das Image auf einen USB-Stick zu schreiben:
   <https://rufus.akeo.ie>.

1. Schreibe mit Rufus das heruntergeladene Image auf den USB-Stick.

## Linux installieren

Personen mit einem Acer-Laptop befolgen bitte gleichzeitig
<https://wiki.ubuntuusers.de/EFI_Problembehebung/#Acer-Rechner>.
Also tatsächlich herunterfahren, den Stick einstecken,
dann hochfahren und während das Acer-Logo zu sehen ist `F2` drücken.
Unter dem Punkt `Main` das `F12 Boot Menu` auf `enabled` setzen.
Nun die ersten 10 Punkte durchgehen.
Nach dem Verlassen des Menüs beim erneuten Anzeigen des Acer-Logos `F12` drücken.
Mit den Pfeiltasten kann jetzt der Stick ausgewählt werden.
Dann die Installation hier ab 4. starten.
Bei Punkt 10 (hier) wieder dem Link folgen und die letzten 11 Punkte durchgehen.


1. Klicke mit `Shift` auf `Neustarten`.

1. Wähle `Ein Gerät benutzen`

1. Wähle den USB-Stick, vermutlich `UEFI USB Device`.
  Der Computer startet neu und bootet in die Linux Installation.

1. Du solltest als Sprache Englisch wählen, aus dem einfachen Grund,
  dass der Großteil der Online-Dokumentation auf Englisch sind.

1. Das Keyboard-Layout sollte zu deinem Laptop passen,
  also vermutlich `German (eliminate dead keys)`.
  Die `eliminate dead keys` Variante sorgt dafür, dass Akzente direkt erscheinen,
  was sehr hilfreich für LaTeX ist.

1. Aktiviere die Optionen `Install Third Party Software` und falls du mit einem
  Netzwerk verbunden bist, installiert Updates während der Installation.

1. Die Ubuntu Installation scannt nun deine Festplatte und sollte Windows und den
  freigegebenen Speicher finden.
  War dies erfolgreich, wähle die Option `Install along-side Windows 10` oder 11.

1. Wähle die korrekte Zeitzone

1. Warte bis die Installation abgeschlossen ist, dann starte deinen Rechner neu
  und entferne den USB-Stick.

1. Beim Neustart solltest du ein neues Menü vorfinden,
  dass dich zwischen Linux und Windows wählen lässt.

1. Wähle deine installierte Linux-Distribution aus und richte dir dein System ein.

1. Befolge auch unsere Installationsanleitung für [Linux](/install/linux.html).

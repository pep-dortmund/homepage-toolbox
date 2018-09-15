---
layout: default
title: Installation eines Dual-Boot-Systems
---

Dual-Boot-System meint die Installation von zwei Betriebssystemen auf dem gleichen Rechner.
Dies ist nützlich, wenn man auf beide Betriebssysteme angewiesen ist.
Man kann dann bei jedem Neustart auswählen, welches Betriebssystem gestartet werden soll.
Es lassen sich auch Festplatten-Partitionen einrichten, auf die beide Betriebsysteme 
zugreifen können.

Während Linux für das wissenschaftliche Arbeiten zahlreiche Vorteile bietet, 
gibt es einige wichtige Programme, die nicht für Linux verfügbar sind.
Zugriff auf diese Programme ist der Hauptgrund für ein Dual-Boot-System aus Windows und Linux.

Dies betrifft zum Beispiel:

* Microsoft Office (Word, Excel, PowerPoint etc.)
* Adobe Creative Suite (Photoshop, Lightroom, InDesign etc.)
* Die Mehrheit der Computerspiele

Diese Anleitung geht davon aus, dass ihr Windows 10 bereits installiert habt.
Bei der Installation eines Windows/Linux-Dual-Boot Systems muss Windows als erstes installiert
werden.

Weiterhin geht diese Anleitung davon aus, dass euer Rechner [UEFI](https://en.wikipedia.org/wiki/Unified_Extensible_Firmware_Interface)
verwendet. 
Dies sollte für alle modernen Rechner die Regel sein, es kann aber vorkommen,
das Windows um sogennanten *Legacy-Bios* Modus installiert wurde, dann sollte Windows im UEFI Modus neu installiert werden.

Falls ihr einfach nur Linux installieren wollt, könnt ihr der Anleitung ab [Schritt 6](#einen-bootfähigen-usb-stick-für-die-linux-installation-erstellen) folgen.


## Inhalt
{:.no_toc}

1. Table of Contents
{:toc}


## Vollständiges Backup erstellen

Die Installation eines neuen Betriebssystems involviert die Erstellung und
Formatierung neuer Partionen, wenn etwas schief geht, können Daten verloren gehen.
Deshalb solltet ihr als erstes ein vollständiges Backup eures Rechners machen, bevor
ihr weitermacht.


## Sich für eine Linux-Distributionen entscheiden

Hinter dem Begriff Linux verbirgt sich „nur” der absolute Kern des Betriebssystems.
Darauf aufbauend gibt es viele verschiedene „Distributionen”, die verschiedene 
Programme vorinstallieren.
Hauptunterschiede sind die verwendete grafische Benutzeroberfläche und der Paketmanager.

**Für Einsteiger empfehlen wir [Ubuntu](https://www.ubuntu.com/), [Xubuntu](https://xubuntu.org/) oder [Kubuntu](https://kubuntu.org/).**
Diese drei Distributionen nutzen das gleiche Betriebssystem, aber unterschiedliche grafische Benutzeroberflächen.





Der aktuelle Release von (K,X)Ubuntu ist die Version `18.04`, es erscheinen halbjährlich
im April und Oktober neue Versionen.
Alle zwei Jahre erscheint eine neue Version mit längerem (5 Jahre) Support für Updates (LTS Version), 18.04 ist die aktuelle LTS Version.

Alternativen zu Ubuntu sind zum Beispiel (alphabetisch):

* [Antergos](https://antergos.com/)
* [ArchLinux](https://www.archlinux.org/)
* [CentOS](https://www.centos.org/)
* [Fedora](https://getfedora.org/de/)
* [Gentoo](https://www.gentoo.org/)
* [openSUSE](https://www.opensuse.org/)


## Windows-Speicher freigeben

Eine Linux Installation erfordert ca. 10 GB Speicherplatz, um wirklich gut
damit arbeiten zu können, empfehlen wir mindestens 30 GB, besser 100 GB.

Um Linux auf die gleiche Festplatte wie Windows zu installieren, müsst ihr als 
erstes eine Partion auf dieser Festplatte verkleinern.

Öffnet hierzu die Datenträgerverwaltung (`Rechtsklick aufs Startmenü → Datenträgerverwaltung`),
wählt eine Partition zum verkleinern aus (zum Beispiel C:\\) mit  `Rechtsklick → Volume verkleinern...`.

Nun wird es einen Moment dauern, währen geprüft wird, um viel die Partition verkleinert werden kann.
Tragt dann eine Zahl (in MB) ein, zum Beispiel 102400 für 100 GB.

## Mainboard-Uhr auf UTC stellen

Auf dem Mainboard des PCs wird die Uhrzeit gespeichert, Windows geht hier davon aus, das die lokale Uhrzeit gespeichert wird, Linux nimmt UTC an.
Wenn dies nicht geändert wird, stimmen die Uhrzeiten auf Windows und Linux nicht überein und können in beiden System falsch sein.

Um Windows ebenfalls auf UTC umzustellen, muss die Registry bearbeitet werden.

1. Öffnet das Programm `regedit`, am einfachsten indem ihr `regedit` tippt,
während das Startmenü offen ist.

1. Navigiert auf der linken Seite zu `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation`

1. Erstellt einen per `Rechtsklick → neu → DWORD` einen neuen Schlüssel mit dem Namen `RealTimeIsUniversal`
und setzt den Wert auf `1`.

## Fast-Boot deaktivieren

Der Fast-Boot-Modus von Windows 10 cached Dateinen um beim nächsten Start schneller
betriebsbereit zu sein. 
Dies verträgt sich aber nicht mit zwei Betriebssystemen, die auf die gleichen Dateisysteme zugreifen.

`Rechtsklick auf Start → Energieoptionen → Auswählen was beim Drücken des Netzschalters geschehen soll`
und dann das Häkchen bei Fast-Boot entfernen.

## Einen bootfähigen USB Stick für die Linux-Installation erstellen

1. Ladet das Image eurer ausgewählten Linux Distribution herunter, zum Beispiel
   <http://cdimage.ubuntu.com/kubuntu/releases/18.04/release/kubuntu-18.04-desktop-amd64.iso>
   für Kubuntu.

1. Installiert das Tool `Rufus` um das Image auf einen Stick zu schreiben:
   <https://rufus.akeo.ie>.

1. Schreibt mit Rufus das heruntergeladene Image auf den Stick.

## Linux installieren

1. Klickt mit `Shift` auf `Neustarten`.

1. Wählt `Ein Gerät benutzen`

1. Wählt den den USB Stick, vermutlich `UEFI USB Device`. Der Computer startet neu
und bootet in die Linux Installation.

1. Ihr solltet als Sprache Englisch wählen, aus dem einfachen Grund, dass der Großteil
der Online-Dokumentation auf Englisch sind.

1. Keyboard-Layout sollte zu eurem Laptop passen, also vermutlich `German (eliminate dead keys)`.
Die `eliminate dead keys` Variante sorgt dafür, das Akzente direkt erscheinen, was sehr hilfreich für
LaTeX ist.

1. Klickt die Optionen `Install Third Party Software` und falls ihr mit einem Netzwerk verbunden seit,
installiert Updates während der Installation.

1. Die Ubuntu Installation scanned nun eure Festplatte und sollte Windows und den freigegebenen Speicher finden.
War dies erfolgreich, wählt die Option `Install along-side Windows 10`.

1. Wählt die korrekte Zeitzone

1. Wartet bis die Installation abgeschlossen ist, dann startet den Rechner neu und entfernt den USB Stick.

1. Beim Neustart solltet ihr ein neues Menü vorfinden, das euch zwischen Linux und Windows wählen lässt.

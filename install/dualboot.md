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

Für Einsteiger empfehlen wir [Ubuntu](https://www.ubuntu.com/) oder [Xubuntu](https://xubuntu.org/). 

Der aktuelle Release ist Ubuntu bzw. Xubuntu ist die Version `17.10`, es erscheinen halbjährlich
im April und Oktober neue Versionen.

Alternativen zu Ubuntu sind zum Beispiel (alphabetisch):

* [Antergos](https://antergos.com/)
* [ArchLinux](https://www.archlinux.org/)
* [CentOS](https://www.centos.org/)
* [Fedora](https://getfedora.org/de/)
* [Gentoo](https://www.gentoo.org/)
* [openSUSE](https://www.opensuse.org/)


## Windows-Speicher freigeben

Eine Linux Installation erfordert ca. 10 GB Speicherplatz, um wirklich gut
damit arbeiten zu können, empfehlen wir mindestens 30 GB – 100 GB.

Um Linux auf die gleiche Festplatte wie Windows zu installieren, müsst ihr als 
erstes eine Partion auf dieser Festplatte verkleinern.

Öffnet hierzu die Datenträgerverwaltung (`Rechtsklick aufs Startmenü → Datenträgerverwaltung`),
wählt eine Partition zum verkleinern aus (zum Beispiel C:\\) mit  `Rechtsklick → Volume verkleinern...`.

Nun wird es einen Moment dauern, währen geprüft wird, um viel die Partition verkleinert werden kann.
Tragt dann eine Zahl (in MB) ein, zum Beispiel 102400 für 100 GB.

## Mainboard-Uhr auf UTC stellen

## Fast-Boot deaktivieren

## Einen bootfähigen USB Stick für die Linux-Installation erstellen

## Linux installieren

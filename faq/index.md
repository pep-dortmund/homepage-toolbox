---
title: FAQ
permalink: /faq/
layout: category
category: faq
---

Hier listen wir Lösungen für Fragen auf, die besonders häufig gestellt werden.

# Windows

+ Bei der Verwendung von matplotlib kann ein Fehler auftreten,
  der mit den folgenden Zeilen (oder ähnlichen) endet:
```
from PyQt5 import QtCore, QtGui, QtWidget
ImportError: libGL.so.1 connot open shared object file: No such file or directory
```
Dieser Fehler kann durch das Installieren einer Software-Bibliothek behoben werden.
Dazu muss der folgende Befehl in ein Windows Terminal eingegeben werden.
```
sudo apt install qt5-default
```

+ Beim Abspeichern von matplotlib-Figuren
kommt ein Fehler ähnlich zu
**ghostscript-9.00 required**
```
sudo apt update
```
```
sudo apt install ghostscript
```


# Linux

## <a id="w-lan"></a>W-LAN unter Ubuntu/Linux

Um das eduroam-Netz an der TU Dortmund einzurichten, können folgende Optionen verwendet werden:
 - Wi-Fi security: WPA- & WPA2-Enterprise
 - Authentication: Geschütztes EAP (PEAP)
 - Anonymous Identity: telesec@tu-dortmund.de
 - Domain: tu-dortmund.de
 - CA-Zertifikat: `T-TeleSec_GlobalRoot_Class_2.crt`, zu finden in
    1. `/etc/ssl/certs/T-TeleSec_GlobalRoot_Class_2.pem` (z.B. Ubuntu 22.04)
    2. `/usr/share/ca-certificates/mozilla/T-TeleSec_GlobalRoot_Class_2.crt` (z.B. Ubuntu 22.04)
    3. oder im [Serviceportal](https://service.tu-dortmund.de/documents/d/intra/rootcert){:target="_blank"}. Achtung, dann heißt es `rootcert.crt`
 - PEAP-Version: Automatisch
 - Inner authentication: MSCHAPv2
 - Username: smxxxxxx@tu-dortmund.de
 - Passwort: \*\*\*\*\*\*\* (W-LAN Passwort)

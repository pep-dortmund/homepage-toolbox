---
title: FAQ
layout: category
category: faq
---

Hier listen wir Lösungen für Fragen auf, die besonders häufig gestellt werden.

# Windows
Am Ende der Installationsanleitungen gibt es den Punkt
*Problembehandlung*, hier sind Lösungsvorschläge für Probleme bei der Installation aufgelistet.

# Linux

## <a id="w-lan"></a>W-LAN unter Ubuntu

Um das eduroam-Netz an der TU Dortmund einzurichten, können folgende Optionen verwendet werden:
 - Wi-Fi security: WPA- & WPA2-Enterprise
 - Authentication: Geschütztes EAP (PEAP)
 - Anonymous Identity:  
 - Domain: tu-dortmund.de
 - CA-Zertifikat: T-TeleSec_GlobalRoot_Class_2.crt
    - zu finden in `/usr/share/ca-certificates/mozilla/T-TeleSec_GlobalRoot_Class_2.crt`
    - oder http://www.pki.tu-dortmund.de/telesec.crt
 - PEAP-Version: Automatisch
 - Inner authentication: MSCHAPv2
 - Username: smxxxxxx@tu-dortmund.de
 - Passwort: ******* (W-LAN Passwort)

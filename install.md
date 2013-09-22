---
title: Installation
---

- [Windows 7](#windows)
- [OS X](#osx)
- [Linux](#linux)
- [Arch Linux](#arch)

## <a id="windows"></a>Windows 7

### Nützliche Programme
- 7-Zip, Entpacker: [http://www.7-zip.org/](http://www.7-zip.org/)
    - [Version 9.20, 32-bit](http://downloads.sourceforge.net/sevenzip/7z920.exe)
    - [Version 9.20, 64-bit](http://downloads.sourceforge.net/sevenzip/7z920-x64.msi)
- Notepad++, Texteditor: [http://notepad-plus-plus.org/download/](http://notepad-plus-plus.org/download/)
    - [Version 6.4.5](http://download.tuxfamily.org/notepadplus/6.4.5/npp.6.4.5.Installer.exe)

### Git Bash
- Git Bash: [http://git-scm.com/download/win](http://git-scm.com/download/win)
    - [Version 1.8.4](https://msysgit.googlecode.com/files/Git-1.8.4-preview20130916.exe)

Den Installationspfad merken, falls man Make installieren möchte:  
![](img/git1.png)

Da wir in der Konsole arbeiten werden, ist es eine gute Idee, schönere Fonts dafür einstellen zu lassen (letzter Punkt):  
![](img/git2.png)

So bleibt das System schön sauber:  
![](img/git3.png)

Das ist besonders wichtig, falls man mit anderen zusammenarbeitet, die OS X oder Linux verwenden:  
![](img/git4.png)

### Anaconda
- Anaconda, Python und Bibliotheken: [http://www.continuum.io/downloads](http://www.continuum.io/downloads)
    - [Version 1.7.0, 32-bit](http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-1.7.0-Windows-x86.exe)
    - [Version 1.7.0, 64-bit](http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-1.7.0-Windows-x86_64.exe)

Diesen Installationspfad muss man sich merken, falls man auch Python 3 ausprobieren will:  
![](img/anaconda1.png)

So ist die Verwendung am bequemsten:  
![](img/anaconda2.png)

### Test

Die Windows-Konsole und Git Bash können geöffnet werden, indem man mit der rechten Maustaste auf eine leere Stelle des Desktops oder eines Explorer-Fensters klickt (für die Windows-Konsole dabei Shift gedrückt halten), dann erscheint ein ähnliches Menü:  
![](img/menu.png)  
Die Windows-Konsole befindet sich über dem Punkt "Einfügen".

Die Installation kann auf folgende Weise getestet werden:

- Git Bash öffnen
- `git` eingeben, es sollte die git-Hilfe erscheinen
- `ipython` eingeben
- `%matplotlib` eingeben
- `import matplotlib.pyplot as plt` eingeben
- `plt.plot([1, 2, 4])` eingeben, es sollte ein Fenster mit einem Plot erscheinen

### Uncertainties (optional)
- Uncertainties, Python-Bibliothek, automatisiert Fehlerrechnung
- Windows-Konsole öffnen
- `pip install uncertainties` eingeben
- Git Bash öffnen
- `ipython` eingeben
- `import uncertainties` eingeben, es sollte keine Fehlermeldung erscheinen

### Make (optional)
- Make, automatisiert Abläufe: [https://www.gnu.org/software/make/](https://www.gnu.org/software/make/)
    - Make für Git Bash, hier braucht man alle drei Dateien:
    - [libiconv](http://sourceforge.net/projects/mingw/files/MSYS/Base/libiconv/libiconv-1.14-1/libiconv-1.14-1-msys-1.0.17-dll-2.tar.lzma/download)
    - [libintl](http://sourceforge.net/projects/mingw/files/MSYS/Base/gettext/gettext-0.18.1.1-1/libintl-0.18.1.1-1-msys-1.0.17-dll-8.tar.lzma/download)
    - [make](http://sourceforge.net/projects/mingw/files/MSYS/Base/make/make-3.81-3/make-3.81-3-msys-1.0.13-bin.tar.lzma/download)

Einfach alle drei Archive mit 7-Zip in den Installationspfad von Git Bash entpacken (im Beispiel oben `C:\Program Files (x86)\Git`).
Man muss dabei die Archive zweimal öffnen, da das äußere Archiv jeweils ein inneres Archiv enthält.
Jeweils muss der Ordner bin entpackt werden, dabei sollte Windows fragen, ob die Ordner fusioniert werden sollen (Antwort: ja).
Make sollte jetzt unter Git Bash benutzbar sein; ausprobieren kann man es, indem man `make` in Git Bash eingibt.
Dabei sollte folgende Ausgabe erscheinen:

    make: *** No targets specified and no makefile found.  Stop.

## <a id="osx"></a>OS X

## <a id="linux"></a>Linux

## <a id="arch"></a>Arch Linux

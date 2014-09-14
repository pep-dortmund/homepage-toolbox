---
title: Installation
---

Eine aktualisierte Installationsanleitung wird demnächst hier erscheinen.

<!--
Wir empfehlen die Installation einer 64-bit Version, falls man ein 64-bit Betriebssystem benutzt.

- [Windows 7](#windows)
- [OS X](#osx)
- [Linux](#linux)
- [Arch Linux](#arch)
- [Testen](#test)
- [Pflegen, Aktualisieren](#update)

## <a id="windows"></a>Windows 7

### Nützliche Programme
- 7-Zip, Entpacker: [http://www.7-zip.org/](http://www.7-zip.org/)
    - [Version 9.20, 32-bit](http://downloads.sourceforge.net/sevenzip/7z920.exe)
    - [Version 9.20, 64-bit](http://downloads.sourceforge.net/sevenzip/7z920-x64.msi)
- Notepad++, Texteditor: [http://notepad-plus-plus.org/download/](http://notepad-plus-plus.org/download/)
    - [Version 6.6.9](http://download.tuxfamily.org/notepadplus/6.6.9/npp.6.6.9.Installer.exe)

### Git Bash
- Git Bash: [http://git-scm.com/download/win](http://git-scm.com/download/win)
    - [Version 1.9.4](https://github.com/msysgit/msysgit/releases/download/Git-1.9.4-preview20140815/Git-1.9.4-preview20140815.exe)

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
    - [Version 2.0.1, 32-bit](http://repo.continuum.io/anaconda3/Anaconda3-2.0.1-Windows-x86.exe)
    - [Version 2.0.1, 64-bit](http://repo.continuum.io/anaconda3/Anaconda3-2.0.1-Windows-x86_64.exe)

Diesen Installationspfad muss man sich merken, falls man auch Python 3 ausprobieren will:  
![](img/anaconda1.png)

So ist die Verwendung am bequemsten:  
![](img/anaconda2.png)

### Terminal

Die Windows-Konsole und Git Bash können geöffnet werden, indem man mit der rechten Maustaste auf eine leere Stelle des Desktops oder eines Explorer-Fensters klickt (für die Windows-Konsole dabei Shift gedrückt halten), dann erscheint ein ähnliches Menü:  
![](img/menu.png)  
Die Windows-Konsole befindet sich über dem Punkt "Einfügen".
Im folgenden (z.B. im Abschnitt [Testen](#test)) wird Git Bash als Terminal bezeichnet.

### Uncertainties
- Uncertainties, Python-Bibliothek, automatisiert Fehlerrechnung
- Windows-Konsole öffnen
- `pip install uncertainties` eingeben

### Make
- Make, automatisiert Abläufe: [https://www.gnu.org/software/make/](https://www.gnu.org/software/make/)
    - Make für Git Bash, hier braucht man alle drei Dateien:
    - [libiconv](http://sourceforge.net/projects/mingw/files/MSYS/Base/libiconv/libiconv-1.14-1/libiconv-1.14-1-msys-1.0.17-dll-2.tar.lzma/download)
    - [libintl](http://sourceforge.net/projects/mingw/files/MSYS/Base/gettext/gettext-0.18.1.1-1/libintl-0.18.1.1-1-msys-1.0.17-dll-8.tar.lzma/download)
    - [make](http://sourceforge.net/projects/mingw/files/MSYS/Base/make/make-3.81-3/make-3.81-3-msys-1.0.13-bin.tar.lzma/download)

Einfach alle drei Archive mit 7-Zip in den Installationspfad von Git Bash entpacken (im Beispiel oben `C:\Program Files (x86)\Git`).
Man muss dabei die Archive zweimal öffnen, da das äußere Archiv jeweils ein inneres Archiv enthält.
Jeweils muss der Ordner bin entpackt werden, dabei sollte Windows fragen, ob die Ordner fusioniert werden sollen (Antwort: ja).

### TeX

## <a id="osx"></a>OS X

### XCode Tools
Die Installation von XCode erfolgt über den AppStore.
Danach sollten in XCode die Kommandozeilentools nach installiert werden.
Insbesondere sind darin git und make enthalten. Um die Kommandozeilentools zu installieren, öffnet man das Einstellungsfenster (CMD + ,) und wählt den Tab "Downloads" aus.

### Anaconda
Die Firma Continuum Analytics bietet einen Installer an, der Python und alle benötigten Bibliotheken installiert.
Dieses Programm heißt Anaconda und kann hier heruntergeladen werden.

- Anaconda, Python und Bibliotheken: [http://www.continuum.io/downloads](http://www.continuum.io/downloads)
    - [Version 2.0.1 (OS X ≥ 10.7)](http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-2.0.1-MacOSX-x86_64.pkg)

### Uncertainties (otional)
Die Pythonbibliothek zur automatisierten Fehlerrechnung kann mit dem Befehl `pip install uncertainties` installiert werden.

### TeX

## <a id="linux"></a>Linux
Manche Befehle brauchen unter Umständen vorne ein `sudo`.

### Git
- Debian, Ubuntu, Mint:

        (sudo) apt-get install git

- Fedora:

        (sudo) yum install git-core

- OpenSUSE:

        (sudo) zypper in git

### Anaconda
- Anaconda, Python und Bibliotheken: [http://www.continuum.io/downloads](http://www.continuum.io/downloads)
    - [Version 2.0.1, 32-bit](http://repo.continuum.io/anaconda3/Anaconda3-2.0.1-Linux-x86.sh)
    - [Version 2.0.1, 64-bit](http://repo.continuum.io/anaconda3/Anaconda3-2.0.1-Linux-x86_64.sh)
- Im Terminal:

        bash Anaconda3-2.0.1-Linux-x86_64.sh
        <Enter>
        yes
        <Enter>
        yes

Nach der Installation muss man einen neuen Terminal öffnen, damit Ananconda gefunden wird.

### Uncertainties

    pip install uncertainties

### Make
- Debian, Ubuntu, Mint:

        (sudo) apt-get install make

- Fedora:

        (sudo) yum install make

- OpenSUSE:

        (sudo) zypper in make

### TeX

## <a id="arch"></a>Arch Linux
Manche Befehle brauchen unter Umständen vorne ein `sudo`.

### Git

    (sudo) pacman -S git

### Python und Bibliotheken

    (sudo) pacman -S python python-numpy python-scipy python-matplotlib python-sympy ipython python-twisted python-pyqt4 python-sip python-pygments python-pyzmq python-tornado python-jinja

### Uncertainties
Aus [AUR](https://wiki.archlinux.org/index.php/Arch_User_Repository)

- Mit [`yaourt`](https://wiki.archlinux.org/index.php/Yaourt):

        yaourt -S python-uncertainties

- Manuell:

        wget https://aur.archlinux.org/packages/py/python-uncertainties/python-uncertainties.tar.gz
        tar xfvz python-uncertainties.tar.gz
        cd python-uncertainties
        makepkg -si
        cd ..
        rm -rf python-uncertainties

### Make

    pacman -S make

### TeX

## <a id="test"></a>Testen

### Git
Im Terminal:

- `git`
- es sollte die Git-Hilfe erscheinen.

Git einstellen (nicht optional, git funktioniert ohne nicht):

- `git config --global user.name "Max Mustermann"`
- `git config --global user.email "max.mustermann@udo.edu"`

### Python
Im Terminal:

- `ipython`
- `%matplotlib qt`
- `import matplotlib.pyplot as plt`
- `plt.plot([1, 2, 4])`
- es sollte ein Fenster mit einem Plot erscheinen

Falls eine Fehlermeldung bei `%matplotlib qt` kommt (besonders bei OS X oder Linux), kann man

    echo "backend.qt4: PySide" >> ~/.matplotlib/matplotlibrc

im Terminal eingeben und es nochmal probieren.

### Uncertainties
Im Terminal:

- `ipython`
- `import uncertainties`
- es sollte keine Fehlermeldung erscheinen

### Make
Im Terminal:

- `make`
- es sollte folgende Ausgabe erscheinen:

        make: *** No targets specified and no makefile found.  Stop.

### TeX

## <a id="update"></a>Pflegen, Aktualisieren
-->

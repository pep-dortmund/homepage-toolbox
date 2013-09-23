---
title: Installation
---

- [Windows 7](#windows)
- [OS X](#osx)
- [Linux](#linux)
- [Arch Linux](#arch)
- [Testen](#test)

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

### Terminal

Die Windows-Konsole und Git Bash können geöffnet werden, indem man mit der rechten Maustaste auf eine leere Stelle des Desktops oder eines Explorer-Fensters klickt (für die Windows-Konsole dabei Shift gedrückt halten), dann erscheint ein ähnliches Menü:  
![](img/menu.png)  
Die Windows-Konsole befindet sich über dem Punkt "Einfügen".
Im folgenden (z.B. im Abschnitt [Testen](#test)) wird Git Bash als Terminal bezeichnet.

Um die Installation von Anaconda zu vervollständigen, öffnet man die Windows-Konsole und gibt ein:

    copy C:\Anaconda\python.exe C:\Anaconda\python2.exe

### Uncertainties (optional)
- Uncertainties, Python-Bibliothek, automatisiert Fehlerrechnung
- Windows-Konsole öffnen
- `pip install uncertainties` eingeben

### Make (optional)
- Make, automatisiert Abläufe: [https://www.gnu.org/software/make/](https://www.gnu.org/software/make/)
    - Make für Git Bash, hier braucht man alle drei Dateien:
    - [libiconv](http://sourceforge.net/projects/mingw/files/MSYS/Base/libiconv/libiconv-1.14-1/libiconv-1.14-1-msys-1.0.17-dll-2.tar.lzma/download)
    - [libintl](http://sourceforge.net/projects/mingw/files/MSYS/Base/gettext/gettext-0.18.1.1-1/libintl-0.18.1.1-1-msys-1.0.17-dll-8.tar.lzma/download)
    - [make](http://sourceforge.net/projects/mingw/files/MSYS/Base/make/make-3.81-3/make-3.81-3-msys-1.0.13-bin.tar.lzma/download)

Einfach alle drei Archive mit 7-Zip in den Installationspfad von Git Bash entpacken (im Beispiel oben `C:\Program Files (x86)\Git`).
Man muss dabei die Archive zweimal öffnen, da das äußere Archiv jeweils ein inneres Archiv enthält.
Jeweils muss der Ordner bin entpackt werden, dabei sollte Windows fragen, ob die Ordner fusioniert werden sollen (Antwort: ja).

## <a id="osx"></a>OS X

### XCode Tools
Die Installation von XCode erfolgt über den AppStore.
Danach sollten in XCode die Kommandozeilentools nach installiert werden.
Insbesondere sind darin git und make enthalten.

### Anaconda
Die Firma Continuum Analytics bietet einen Installer an, der Python und alle benötigten Bibliotheken installiert.
Dieses Programm heißt Anaconda und kann hier heruntergeladen werden.

* [Anaconda](http://www.continuum.io/downloads)
* [Direkter Download (>=10.7)](http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-1.7.0-MacOSX-x86_64.pkg)

### Uncertainties (otional)
Die Pythonbibliothek zur automatisierten Fehlerrechnung kann mit dem Befehl `pip install uncertainties` installiert werden.

## <a id="linux"></a>Linux

### Git
- Debian, Ubuntu, Mint:

        apt-get install git

- Fedora:

        yum install git-core

- OpenSUSE:

        zypper in git

### Anaconda
- Anaconda, Python und Bibliotheken: [http://www.continuum.io/downloads](http://www.continuum.io/downloads)
    - [Version 1.7.0, 32-bit](http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-1.7.0-Linux-x86.sh)
    - [Version 1.7.0, 64-bit](http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-1.7.0-Linux-x86_64.sh)
- Im Terminal:

        bash Anaconda-1.7.0-Linux-x86_64.sh
        <Enter>
        yes
        <Enter>
        yes

Nach der Installation muss man einen neuen Terminal öffnen, damit Ananconda gefunden wird.

### Uncertainties (optional)

    pip install uncertainties

### Make (optional)
- Debian, Ubuntu, Mint:

        apt-get install make

- Fedora:

        yum install make

- OpenSUSE:

        zypper in make

## <a id="arch"></a>Arch Linux

### Git

    pacman -S git

### Python und Basisbibliotheken

    pacman -S python2 python2-numpy python2-scipy python2-matplotlib ipython2 twisted python2-pexpect python2-pyqt4 python2-sip python2-pygments python2-pyzmq python2-tornado python2-jinja

### Sympy (optional)

    pacman -S python2-sympy

### Uncertainties (optional)
Aus [AUR](https://wiki.archlinux.org/index.php/Arch_User_Repository)

- Mit [`yaourt`](https://wiki.archlinux.org/index.php/Yaourt):

        yaourt -S python2-uncertainties

- Manuell:

        wget https://aur.archlinux.org/packages/py/python2-uncertainties/python2-uncertainties.tar.gz
        tar xfvz python2-uncertainties.tar.gz
        cd python2-uncertainties
        makepkg -si
        cd ..
        rm -rf python2-uncertainties

### Make (optional)

    pacman -S make

## <a id="test"></a>Testen

### Git
Im Terminal:

- `git`
- es sollte die Git-Hilfe erscheinen.

### Python
Im Terminal:

- `ipython`
- `%matplotlib qt`
- `import matplotlib.pyplot as plt`
- `plt.plot([1, 2, 4])`
- es sollte ein Fenster mit einem Plot erscheinen

### Uncertainties (optional)
Im Terminal:

- `ipython`
- `import uncertainties`
- es sollte keine Fehlermeldung erscheinen

### Make (optional)
Im Terminal:

- `make`
- es sollte folgende Ausgabe erscheinen:

        make: *** No targets specified and no makefile found.  Stop.

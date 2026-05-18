---
layout: install
permalink: /install/dualboot_en/
title: Installation of a Dual-Boot System
---

A dual-boot system refers to the installation of two operating systems on the same computer.
This is useful when you need both operating systems.
Upon startup, you select which operating system to launch.
It is also possible to set up hard drive partitions that both operating systems can access.

While Linux offers a variety of advantages for scientific work,
there are some important programs that are not available for Linux.
Access to these programs is the primary reason to choose a dual-boot system 
consisting of Windows and Linux.

These programs include, for example:

* Microsoft Office (Word, Excel, PowerPoint etc.)
* Adobe Creative Suite (Photoshop, Lightroom, InDesign etc.)
* Most computer games

This guide assumes that you already have Windows 10/11 installed.
When installing a Windows/Linux dual-boot system, Windows must be installed first.

Additionally, this guide assumes that your computer uses
[UEFI](https://en.wikipedia.org/wiki/Unified_Extensible_Firmware_Interface){:target="_blank"}.
While this should be standard for all modern computers, it is possible
that Windows was installed in *Legacy BIOS* mode; 
in that case, Windows should be reinstalled in UEFI mode.

If you only want to install Linux,
you can follow the instructions starting at
[Step 6](#einen-bootfähigen-usb-stick-für-die-linux-installation-erstellen).


## Create a Full Backup

Installing a new operating system involves creating and
formatting new partitions on the hard drive; if something goes wrong, data can be lost.
<span style="color:crimson"> **Therefore, the very first thing you should do is create a full backup of your computer before proceeding!** </span>

## Enable Other Login Options

In the Windows Settings, enable additional ways to log in,
not just via PIN.

## Disable BitLocker

Search for `BitLocker` in the Windows Start menu.
Save your recovery key, and then disable BitLocker.

## Choosing a Linux Distribution

The term "Linux" actually refers *only* to the absolute core of the operating system.
Building upon it, there are many different "distributions", each of which comes with 
a distinct set of pre-installed programs.
The primary differences between them lie in the graphical user interface
and the package manager used.

**For beginners, we recommend [Linux Mint](https://www.linuxmint.com/){:target="_blank"} or [Fedora](https://fedoraproject.org/){:target="_blank"}.**
[Endeavour](https://endeavouros.com/){:target="_blank"} is an Arch-based distribution that we recommend
if you want to dive deeper into the workings of your operating system.

## Freeing Up Windows Storage Space

A Linux installation requires approximately 10 GB of storage space; however,
to work with it effectively, we recommend allocating at least 30 GB (or ideally, 100 GB).

To install Linux on the same hard drive as Windows,
the first step is to shrink an existing partition on that drive.

To do this, open Disk Management (`Right-click on the Start Menu → Disk Management`),
select a partition to shrink (e.g., C:\\) and choose `Right-click → Shrink volume...`.

It will take some time while the system calculates
how much the partition can be reduced.
Then, enter a value (in MB); for instance, 102,400 for 100 GB.

## Set Mainboard (Motherboard) Clock to UTC

The time is stored on the computer's mainboard.
Windows assumes that the local time is stored there, while Linux assumes UTC.
If this setting is not adjusted, the time displayed in Windows and Linux will not match,
and the time may be incorrect in both systems.

To configure Windows to also use UTC, you must edit the Registry.

1. Open the program `regedit`. The easiest way is to type `regedit`
  while the Start Menu is open, and then click on `Registry Editor`.

1. On the left-hand side, navigate to:
  `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation`

1. Create a new value by `Right-click → New → DWORD` called
  `RealTimeIsUniversal` and set its value to `1`.

## Disable Fast Boot

Fast Boot mode in Windows 10/11 caches files to speed up
the process of making the system ready for use.
However, this is incompatible with a dual-boot setup
where two operating systems access the same files.

`Right-click on Start → Power Options → Choose what the power buttons do`
and then untick the box for Fast Boot.

## Creating a Bootable USB Drive for Linux Installation

1. Download the image for your chosen Linux distribution. For example,
    [Linux Mint](https://www.linuxmint.com/download.php){:target="_blank}.

1. Install the tool `Rufus` to write the image to a USB drive:
   [rufus.akeo.ie](https://rufus.akeo.ie){:target="_blank"}.

1. Use Rufus to write the downloaded image to the USB drive.

## Installing Linux

Users with an Acer machine should simultaneously follow
[these instructions](https://wiki.ubuntuusers.de/EFI_Problembehebung/#Acer-Rechner){:target="_blank"}.
Specifically, perform a full shutdown, insert the USB stick,
then power on the computer and press the `F12` key when the Acer logo appears.
Under `Main`, set the `F12 Boot Menu` option to `enabled`.
Proceed through the first 10 steps listed there.
After exiting the menu, press `F12` again when the Acer logo appears.
Use the arrow keys to select the inserted USB stick.
Then, start the installation process here from step 4.
At step 10 (here), follow the link again and complete the final 11 steps listed there.


1. Hold down `Shift` while clicking `Restart`.

1. Select `Use a device`

1. Select the inserted USB stick, which will likely appear as `UEFI USB Device`.
  The computer will restart and boot into the Linux installation environment.

1. You should select English as your language, mainly because
  the majority of online documentation is in English.

1. The keyboard layout should match your computer's configuration.
  If this is `German (eliminate dead keys)`,
  The `eliminate dead keys` variant ensures that accent marks appear immediately
  when typed, which is particularly helpful for LaTeX.

1. Enable the `Install Third Party Software` option. Additionally, if you are connected to a
  network, select the option to install updates during the installation process.

1. The installer will now scan your hard drive and should detect both Windows
  and the allocated free space. If this scan is successful, select the option
  `Install alongside Windows 10` (or 11).

1. Select the correct time zone.

1. Wait for the installation to complete. 
  Then, restart the computer and remove the USB stick.

1. Upon restarting, you should see a new menu allowing selection
  between booting into Linux or Windows.

1. Select your installed Linux distribution and set up your system.

1. See also: installation guide for [Linux](/install/linux/).

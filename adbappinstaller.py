#!/usr/bin/python3
import os

#ADB Folder
adb="/apps/adb/adb"

#Your ADB APPs folder
fld=""

#IP Address Variable
ip=""

#Defs for functions
def adbcon(): #1
    os.system('cls||clear')
    ip=input("Enter Device IP Address:")
    stream = os.popen(adb + " connect " + ip + ":5555")
    output = stream.read()
    print(output)
def ikodi(): #2
        os.system('cls||clear')
        print("Installing APP NAME")
        stream = os.popen(adb + " install " + fld + "APP File NAME")
        output = stream.read()
        print(output)
def adbkill(): #3
        os.system('cls||clear')
        print("Stopping ADB Service")
        stream = os.popen(adb + " kill-server")
        output = stream.read()
        print(output)
        
#Menu System
ans=True
while ans:
    print ("""
    1.Connect to ADB
    2.Install APP EXAMPLE
    3.Stop ADB Server
    4.Exit/Quit
    """)
    ans=input("What would you like to do? ") 
    if ans=="1":
      #Goes to ADB Connection Function
      adbcon()
    elif ans=="2":
      #Goes to ADB Example install function
      appexample()
    elif ans=="3":
      #Goes to function to kill ADB Server
      adbkill()
    elif ans=="4":
      print("\n Goodbye")
      exit()
    elif ans !="":
      print("\n Not Valid Choice Try again")

@ECHO OFF
title Portable Python Calculator V1.0.1 - 25.8.2024 - Official Public Release
CLS
ECHO 1=Addition
ECHO 2=Subtraktion
ECHO 3=Multiplikation
ECHO 4=Division
ECHO 5=Hoch
ECHO 6=Wurzel
ECHO.

CHOICE /C 123456 /M "Bitte eine Zahl von 1-6 Eingeben:"

IF ERRORLEVEL 6 GOTO Wurzel
IF ERRORLEVEL 5 GOTO Hoch
IF ERRORLEVEL 4 GOTO Division
IF ERRORLEVEL 3 GOTO Multiplikation
IF ERRORLEVEL 2 GOTO Subtraktion
IF ERRORLEVEL 1 GOTO Addition

:Addition
ECHO Addition
py.exe addition.py
GOTO End

:Subtraktion
ECHO Subtraktion
py.exe subtraktion.py
GOTO End

:Multiplikation
ECHO Multiplikation
py.exe Multiplikation.py
GOTO End

:Division
ECHO Division
py.exe Division.py
GOTO End

:Hoch
ECHO Hoch
py.exe Hoch.py
GOTO End

:Wurzel
ECHO Wurzel
py.exe Wurzel.py
GOTO End

:End
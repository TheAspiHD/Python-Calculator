@ECHO OFF
CLS
echo Portable Python Calculator
echo (c)Raffael Bojer 2010-2024
ECHO 1=Addition
ECHO 2=Subtraktion
ECHO 3=Multiplikation
ECHO 4=Division
ECHO 5=Hoch
ECHO.

CHOICE /C 12345 /M "Bitte eine Zahl von 1-5 Eingeben:"

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

:End
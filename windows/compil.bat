REM Batch à lancer dans ...\msklc\bin\i386\ avec les 6 fichiers .klc
REM Il génère les fichiers dlls avec kbdutool.exe
REM Penser à modificer le numéro de version (set ver=...)
REM Le nom de la dll est en dos 8.3 donc le nom de version est abrégé en rc2x
REM Il faut ensuite faire les fichiers d'installation avec msklc
REM (Attention a bien garder le même nom de dll.)
set ver=ra

REM Création des dossiers
md bepo%ver%A
md bepo%ver%
md bepo%ver%C
cd bepo%ver%A
md amd64
md i386
md ia64
md sources
md wow64
cd..
cd bepo%ver%
md amd64
md i386
md ia64
md sources
md wow64
cd..
cd bepo%ver%C
md amd64
md i386
md ia64
md sources
md wow64
cd..

REM Version azerty
copy bepo-%ver%A.klc bepo%ver%A.klc
move /y bepo%ver%A.klc bepo%ver%A/sources/
kbdutool.exe -u -s bepo-%ver%A-kbd.klc
move /y bepo%ver%.* bepo%ver%A/sources/
kbdutool.exe -u -x bepo-%ver%A-kbd.klc
move /y bepo%ver%.dll bepo%ver%A/i386/
kbdutool.exe -u -i bepo-%ver%A-kbd.klc
move /y bepo%ver%.dll bepo%ver%A/ia64/
kbdutool.exe -u -m bepo-%ver%A-kbd.klc
move /y bepo%ver%.dll bepo%ver%A/amd64/
kbdutool.exe -u -o bepo-%ver%A-kbd.klc
move /y bepo%ver%.dll bepo%ver%A/wow64/

REM Version bépo simple
copy bepo-%ver%b.klc bepo%ver%.klc
move bepo%ver%.klc bepo%ver%/sources
kbdutool.exe -u -s bepo-%ver%B-kbd.klc
move /y bepo%ver%.* bepo%ver%/sources/
kbdutool.exe -u -x bepo-%ver%B-kbd.klc
move /y bepo%ver%.dll bepo%ver%/i386/
kbdutool.exe -u -i bepo-%ver%B-kbd.klc
move /y bepo%ver%.dll bepo%ver%/ia64/
kbdutool.exe -u -m bepo-%ver%B-kbd.klc
move /y bepo%ver%.dll bepo%ver%/amd64/
kbdutool.exe -u -o bepo-%ver%B-kbd.klc
move /y bepo%ver%.dll bepo%ver%/wow64/


REM Version qwerty
copy bepo-%ver%C.klc bepo%ver%C.klc
move bepo%ver%C.klc bepo%ver%C/sources/
kbdutool.exe -u -s bepo-%ver%C-kbd.klc
move /y bepo%ver%.* bepo%ver%C/sources/
kbdutool.exe -u -x bepo-%ver%C-kbd.klc
move /y bepo%ver%.dll bepo%ver%C/i386/
kbdutool.exe -u -i bepo-%ver%C-kbd.klc
move /y bepo%ver%.dll bepo%ver%C/ia64/
kbdutool.exe -u -m bepo-%ver%C-kbd.klc
move /y bepo%ver%.dll bepo%ver%C/amd64/
kbdutool.exe -u -o bepo-%ver%C-kbd.klc
move /y bepo%ver%.dll bepo%ver%C/wow64/
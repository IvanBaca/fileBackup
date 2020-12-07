@echo off

echo --------------------------------------------------------------- > filesFound.txt
echo filesFound ran by %username% on %DATE% at %TIME% >> filesFound.txt
echo --------------------------------------------------------------- >> filesFound.txt

echo User:	%username% >> filesFound.txt
echo Computer Name:	%computername% >> filesFound.txt
echo --------------------------------------------------------------- >> filesFound.txt

echo Images found on: %DATE% at %TIME% in %computername% by %username% > imagesFound.txt
dir /s /b *.png, *.jpeg >> imagesFound.txt
echo ------------------------------------------------------------------- >> imagesFound.txt

echo Executables found on: %DATE% at %TIME% in %computername% by %username% > exeFound.txt
dir /s /b *.exe, *.bat, *.cmd >> exeFound.txt
echo ------------------------------------------------------------------- >> exeFound.txt

echo Pdfs found on: %DATE% at %TIME% in %computername% by %username% > pdfFound.txt
dir /s /b *.pdf >> pdfFound.txt
echo ------------------------------------------------------------------- >> pdfFound.txt

echo Videos found on: %DATE% at %TIME% in %computername% by %username% > videoFound.txt
dir /s /b *.mkv, *.mov, *.avi, *.mp4, *.wmv >> videoFound.txt
echo ------------------------------------------------------------------- >> videoFound.txt

echo Office docs found on: %DATE% at %TIME% in %computername% by %username% > officeDocsFound.txt
dir /s /b *.xls, *.doc, *.ppt, *.csv >> officeDocsFound.txt
echo ------------------------------------------------------------------- >> officeDocsFound.txt

type imagesFound.txt >> filesFound.txt
type exeFound.txt >> filesFound.txt
type pdfFound.txt >> filesFound.txt
type videoFound.txt >> filesFound.txt
type officeDocsFound.txt >> filesFound.txt

xcopy /S /E /F Files Backup\

pause >nul
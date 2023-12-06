

REM Step 1: Set your UMLS API Credentials
@echo "Remember to set your UMLS API Credentials"

mkdir C:\tmp
cd C:\tmp

REM Step 2. Install cTAKES Core
bitsadmin /transfer downloadcore /download /priority FOREGROUND "https://dlcdn.apache.org//ctakes/ctakes-4.0.0.1/apache-ctakes-4.0.0.1-bin.zip" "apache-ctakes-4.0.0.1-bin.zip" 
tar -xvf apache-ctakes-4.0.0.1-bin.zip
xcopy apache-ctakes-4.0.0.1 C:\apache-ctakes-4.0.0.1\ /f /s

REM Step 3. Install cTAKES Resources
bitsadmin /transfer downloadresources /download /priority FOREGROUND "http://sourceforge.net/projects/ctakesresources/files/ctakes-resources-4.0-bin.zip" "ctakes-resources-4.0-bin.zip" 
tar -xvf ctakes-resources-4.0-bin.zip
xcopy resources C:\apache-ctakes-4.0.0.1\resources\ /f /s /y

REM Step 4. Install cTAKES Smoking Status
bitsadmin /transfer downloadsmoking /download /priority FOREGROUND "https://github.com/the-mad-statter/ctakes-smokingstatus-4.0-bin/raw/main/bin/ctakes-smokingstatus-4.0-bin.zip" "ctakes-smokingstatus-4.0-bin.zip" 
mkdir ctakes-smokingstatus-4.0-bin
tar -xvf ctakes-smokingstatus-4.0-bin.zip -C ctakes-smokingstatus-4.0-bin
xcopy ctakes-smokingstatus-4.0-bin C:\apache-ctakes-4.0.0.1\ /f /s /y

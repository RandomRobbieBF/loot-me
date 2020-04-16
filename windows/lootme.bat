@echo off
for /F "tokens=*" %%A in  ( commands.txt) do  (


echo.
echo ^<details^>^<summary^>%%A^</summary^>
echo ```
%%A
echo ```
echo ^</details^>
echo.
echo.


)
;
dir /b /s \web.config | findstr /V "\Windows" | findstr /V "\Program" >> %temp%\webconfigs.txt
for /F "tokens=*" %%B in  ( %temp%\%webconfigs.txt) do  (


echo.
echo ^<details^>^<summary^>Webconfig File Locatedat %%B^</summary^>
echo ```
type %%B
echo ```
echo ^</details^>
echo.
echo.


)
@echo on
;

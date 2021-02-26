cd /d C:\Users\Windowsist\_vscode
for /d %%i in (*) do  if exist "%%i\build" rd /s /q "%%i\build"
cd /d C:\Users\Windowsist\AppData\Roaming\Code
for /d %%i in (Cache CachedData CachedExtensions "Code Cache"  GPUCache logs User\workspaceStorage) do  if exist %%i rd /s /q %%i
for /d %%i in (Cookies Cookies-journal) do  if exist %%i del %%i
del C:\Users\Windowsist\AppData\Local\CMakeTools\log.txt
pause
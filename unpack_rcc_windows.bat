@Echo Off 
rem Отключили вывод сценария на экран
rem все переменные ниже будут локальными
SetLocal
rem рабочая папка (взять в переменную текущую папку батника)
set "Source=%~dp0"
rem echo. используется для вывода пустой строки
echo.
echo start decript in:
echo %Source%
echo.
rem проверяем наличие openssl
openssl >nul 2>&1 || (
    echo ERROR: openssl not found or no command promt openssl
	goto EXIT
)
rem  наличие папки с прошивкой
if not exist "rcc_update" (
	echo ERROR: folder rcc_update not found
	goto EXIT
)
rem удаление папки от предыдущего извлечения
if exist "rcc_update_extracted" rmdir /S /Q "rcc_update_extracted"
mkdir "rcc_update_extracted"
rem перебираем файлы
FOR /R rcc_update %%a IN (*.bin) DO (
echo   %%~nxa procesing...
openssl enc -d -aes-256-cbc -in "%%a" -out "rcc_update_extracted\%%~na" -K %1 -iv %2
)
echo   RCCUpdate.xml procesing...
openssl enc -d -aes-256-cbc -in "rcc_update\RCCUpdate.xml" -out "rcc_update_extracted\RCCUpdate.xml" -K %1 -iv %2
copy "rcc_update\Bosch.cms" "rcc_update_extracted\Bosch.cms"
echo finished
:EXIT
EndLocal
pause
rem exit
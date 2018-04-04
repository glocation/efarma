rem @echo off

rem Важно! Установите константу "Константа.КаталогИБ" в значение КаталогИБ()

rem Важно! Для пользователя, от имени которого запускается 1C, в настойках 
rem        снимите флаг запроса выхода из системы

rem исполняемый файл 1С
set _1cexe="C:\Program Files\1Cv77\BIN\1cv7s.exe"

rem каталог информационной базы 1С
set _basedir=D:\общая\demo_1.2.2

rem пользователь
set _user=Администратор

rem пароль (если нет пароля, то просто _password=)
set _password=

rem **************************************************************************

rem периодически запускаемая обработка
set _periodert=%_basedir%\extforms\periodwork.ert

rem наша обработка автоматического выполнения задач
set _autoert=%_basedir%\extforms\обработка.автозапуск.ert

rem если есть какая-то периодическая обработка, то сохраняем ее
if exist %_periodert% copy %_periodert% %_periodert%.sav

rem подставляем нашу обработку
copy %_autoert% %_periodert%

rem запускаем 1С-предприятие
%_1cexe% enterprise /D%_basedir% /N%_user% /P%_password%

rem удаляем выполненную обработку
del /F /Q %_periodert%

rem если сохранили, то восстанавливаем перидически запускаемую обработку
if exist %_periodert%.sav copy %_periodert%.sav %_periodert%

:end
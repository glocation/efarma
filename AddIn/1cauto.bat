rem @echo off

rem �����! ��⠭���� ����⠭�� "����⠭�.��⠫����" � ���祭�� ��⠫����()

rem �����! ��� ���짮��⥫�, �� ����� ���ண� ����᪠���� 1C, � ���⮩��� 
rem        ᭨��� 䫠� ����� ��室� �� ��⥬�

rem �ᯮ��塞� 䠩� 1�
set _1cexe="C:\Program Files\1Cv77\BIN\1cv7s.exe"

rem ��⠫�� ���ଠ樮���� ���� 1�
set _basedir=D:\����\demo_1.2.2

rem ���짮��⥫�
set _user=�����������

rem ��஫� (�᫨ ��� ��஫�, � ���� _password=)
set _password=

rem **************************************************************************

rem ��ਮ���᪨ ����᪠���� ��ࠡ�⪠
set _periodert=%_basedir%\extforms\periodwork.ert

rem ��� ��ࠡ�⪠ ��⮬���᪮�� �믮������ �����
set _autoert=%_basedir%\extforms\��ࠡ�⪠.��⮧����.ert

rem �᫨ ���� �����-� ��ਮ���᪠� ��ࠡ�⪠, � ��࠭塞 ��
if exist %_periodert% copy %_periodert% %_periodert%.sav

rem ����⠢�塞 ���� ��ࠡ���
copy %_autoert% %_periodert%

rem ����᪠�� 1�-�।���⨥
%_1cexe% enterprise /D%_basedir% /N%_user% /P%_password%

rem 㤠�塞 �믮������� ��ࠡ���
del /F /Q %_periodert%

rem �᫨ ��࠭���, � ����⠭�������� ��ਤ��᪨ ����᪠���� ��ࠡ���
if exist %_periodert%.sav copy %_periodert%.sav %_periodert%

:end
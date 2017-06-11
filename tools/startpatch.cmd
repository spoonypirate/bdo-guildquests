@echo off
SET paz=D:\Black Desert\Paz
SET lang=en
SET patch=%paz%\files_to_patch\stringtable\%lang%\
xcopy ..\stringtable\%lang%\languagedata_%lang%.txt "%patch%"  /Y
D:
cd %paz%
meta_injector.exe

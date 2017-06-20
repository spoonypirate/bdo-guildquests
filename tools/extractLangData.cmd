@echo off
SET bdowd=C:\tools\git\Github\bdo-guildquests
SET ext=%bdowd%\stringtable
SET f1=languagedata
SET f2=guild_quest_list
SET npp="C:\Program Files\Notepad++\"
quickbms.exe -f "*%f1%_en.txt" -o -Y blackdesert.bms ..\PAD05388.PAZ %bdowd%
quickbms.exe -f "*%f1%_de.txt" -o -Y blackdesert.bms ..\PAD03774.PAZ %bdowd%
quickbms.exe -f "*%f1%_fr.txt" -o -Y blackdesert.bms ..\PAD05389.PAZ %bdowd%
explorer %bdowd%
cd %npp%
start Notepad++.exe -n333035 %ext%\en\%f1%_en.txt
start Notepad++.exe -n229449 %ext%\de\%f1%_de.txt
start Notepad++.exe -n229463 %ext%\fr\%f1%_fr.txt
start Notepad++.exe %bdowd%\tools\%f2%_en.txt
start Notepad++.exe %bdowd%\tools\%f2%_de.txt
start Notepad++.exe %bdowd%\tools\%f2%_fr.txt
exit
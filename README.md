# bdo-guildquests
> for v452 NA client
These files edit the guild mission text to take the randomness out of the whole thing. See preview1.png and preview2.png for examples

## Installation:
- Download Meta Injector (from https://www.undertow.club/threads/black-desert-online-modding-tools.9197/) and extract this tool to <game folder>\Paz\*.*
- Copy the *stringtable* folder to *BDO_FOLDER\\Paz\\files_to_patch\\*
- Run `meta_injector.exe` and follow the screen instruction.
- Run the game

Uninstallation:
- Run `meta_injector.exe` and use the  option, "*Restore Backup*"
- (optional) Delete *BDO_FOLDER\\stringtable\\*.

***WARNING***

Make sure that you run `meta_injector.exe` and run the "*Restore Backup*" option ***every time before a patch is available***, otherwise you will get a "corrupted files" message from the launcher.
If that happens, close the launcher, use the "*Restore a backup*" option, and open the launcher again.

If you don't want to wait on me and would rather update it yourself:
- Download *QuickBMS* (http://quickbms.aluigi.org) and copy it to *BDO_FOLDER\\Paz\\*
- Copy `extractLangData.cmd` and `blackdesert.bms` to *BDO_FOLDER\\Paz\\*
- Run `extractLangData.cmd`. It will extract language data to *Extracted\\stringtable\\??\\*
- Open `languagedata_??.txt` and search for (regex) ^27, which should get you to the start of the guild quests (line 333,000 or so)
- Replace all lines starting with 27 with the contents of `guild_quest_list_??.txt`.
- Save the modified `languagedata_??.txt`, copy the *stringtable* folder the file was in to *BDO_FOLDER\Paz\files_to_patch*  and install it using `meta_injector.exe` 
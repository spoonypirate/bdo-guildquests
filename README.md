# bdo-guildquests

> updated for v452 EN/DE/FR

## What is this?

These files edit the guild mission text to take the randomness out of the whole thing. See example1.png and example2.png for examples

## Can I be banned for this?

Client-side patching has been done for Black Desert by many people since Korean beta. Provided you don't put screenshots of this on the official forums or go shouting in game that you've done this, you're fine.

## Installation

- Download Meta Injector (from https://www.undertow.club/threads/black-desert-online-modding-tools.9197/) and extract the archive to *BDO_FOLDER\\Paz\\*
- Copy the *stringtable* folder to *BDO_FOLDER\\Paz\\files_to_patch\\*
- Run `meta_injector.exe` and follow the instructions.
- Run the game

## Uninstallation

> This first step MUST be done prior to new patches releasing
- Run `meta_injector.exe` and use the  option, "*Restore Backup*"
- (optional) Delete *BDO_FOLDER\\stringtable\\*.
> ***WARNING*** -  Make sure that you run `meta_injector.exe` and run the "*Restore Backup*" option ***every time before a patch is available***, otherwise you will get a "corrupted files" message from the launcher.
If that happens, close the launcher, use the "*Restore a backup*" option, and open the launcher again.

## Manual updates

If you don't want to wait on me and would rather update it yourself:
>This assumes you have Notepad++ installed

- Download *QuickBMS* (http://quickbms.aluigi.org) and copy it to *BDO_FOLDER\\Paz\\*
- Open `extractLangData.cmd` and change the following:
  - line 2: `SET bdowd=path\where\you\unzipped\this\repo\`
  > if you only want to mess with a particular language, remove the lines that don't deal with your language, for example for `en` only remove lines `8,9,13,14,16,17`
- Open `tools\startpatch.cmd` and change the following:
  - line 2: `SET paz="path\to\black desert\paz"`
  - line 3: `SET lang=YOURLANG` (en/de/fr)
  - line 6: set to BDO drive if this folder and BDO are different, remove if they are the same.
- Copy `tools\extractLangData.cmd` and `tools\blackdesert.bms` to *BDO_FOLDER\\Paz\\*
- Run `extractLangData.cmd` from your *BDO_FOLDER\Paz* folder. It will extract language data to what you set `BDOWD` to, open said folder, and open `Notepad++` with all relevant files.
- In each `languagedata_LANG.txt` you want to edit, regex search for `^27`, which should get you to the start of the guild quests
  > These start at line 333,000 or so, I got you close with `notepad++` already with the `-n333000` switch in `extractLangData.cmd`
- Replace all lines starting with `27` with the contents of `guild_quest_list_LANG.txt`.
- Save the modified `languagedata_LANG.txt`, and run `tools\startpatch.cmd`, which will copy the updated file to *BDO_FOLDER\\Paz\\files_to_patch\\* and run `meta_injector.exe` for you.
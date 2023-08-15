# Gothic 2 NotR - Localized

Gothic 2 NotR compiled scripts in all languages hosted on my instance of [weblate](https://weblate.cokoliv.eu/projects/gothic-2-night-of-the-raven/#languages) 

## Installation:
0. Union is strongly recommended (mandatory for utf8 languages)
1. Unzip into your Gothic 2 NotR installation directory
2. Run GothicStarter.exe
3. Pick your language
4. Play and report translation mistakes :)

<details>

<summary>Contents</summary>

## Fonts  
The compiler supports escaped strings so you should see some new characters. The new fonts have been extended to cover all of the supported languages and contain a lot of new characters. Please provide feedback about the fonts as well.  
## Save files  
Since the different releases are only different by the content of the string table, the save file versions are fully compatible. To allow for "fast" checking of log entries in game, there is a plugin included (only available if you play with Union) that makes the logs persistent (if the translation changes, you do not have to start a new game to see the change) - which should probably be renamed to dynamic logs, oh well...
## Files  
 - `G2A_base.mod` - contains the common DAT files and the plugin for persistent logs
 - `G2A_fonts_cp125*.mod` - these contain new fonts for each used codepage
 - `G2A_fonts_chinese.mod` - contains the Chinese font + the [zFont](https://github.com/gratt-5r2/zfont) plugin
 - `G2A_[lang].mod` - contains the localized scripts GOTHIC.DAT, MENU.DAT and the output unit file (OU.BIN)
## Localized scripts
If you want the scripts with substituted language, let me know.

</details>

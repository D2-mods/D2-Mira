The Big Metal Unit mod (v4.0)
GitHub: https://github.com/D2-mods/D2-Mira
Download: https://github.com/D2-mods/D2-Mira/releases
Installs on: IWD:EE, IWD1, IWD2, BG:EE, BG2:EE, EET


==================================================
OVERVIEW
==================================================
Adds the Big Metal items from BG2 to other IE games. All items are obtainable in IWDEE, IWD1, and IWD2 (including pantaloons). The Big Metal Rod and Pulse (prototype) are added to BGEE/SoD. For BG2EE, several items are added or revised. There's also an option to start with a bag containing the core Big Metal items. See components section for more info.


v4.0:
- IWDEE/IWD2: The pantaloons are now required for gaining the Big Metal Unit.
- IWDEE/IWD2: Pulse Ammos are now gained through trades/dialogue.
- BGEE: Pulse (prototype) given Silver and Cold Iron properties (can hit all the werewolf enemies).
- Added full support for classic IWD1
- Added support for BG2EE and Black Pits 1&2 (see components section)
- All components are now installable on BGEE, BG2EE, and EET.


==================================================
COMPONENTS
==================================================
1. Main Component
	- Option 1: Standard Installation
	- Option 2: Start with the core "Big Metal" items
2. EEs: Choose revised or vanilla BG2 ammo (default is Revised)


Additional info:

- Option 1:
	- IWD games: All items are obtainable, including pantaloons.
	- BGEE/SoD: Adds the Big Metal Rod and Pulse Ammunition (prototype).
	- BG2EE: Several items are added or revised (see below)
	- Some are gained through trades/dialogue, some are sold by merchants, and some can be found in various places.

- Option 2: 
	- Party starts with a bag, containing the core Big Metal items. 
	- Other items not in the bag will still be obtainable in the game (if normally available with Option 1). 
	- Also compatible with Black Pits 1 & 2.

- BG2EE notes: 
	- Core items are still gained the same way as in the unmodded game.
	- Scorcher and Frag Grenade are changed to the revised versions, by default.
	- Pulse (prototype) and an extra Big Metal Rod are obtainable in SoA.
	- Golden Pantaloons are in SoA, even if not importing from BG1.
	- Pulse III is obtainable in ToB (requires a lesser Pulse Ammo).


==================================================
ITEM LIST
==================================================
- Big Metal Rod
- Pulse Ammunition
- Frag Grenade
- Scorcher Ammunition
- Big Metal Unit
- Pulse Ammunition (prototype)
- Pulse III Ammunition
- Bronze Pantalettes
- Silver Pantaloons
- Golden Pantaloons

See readme-ammo.txt for ammo stats (top of page) or location spoilers (bottom).


Trades info (IWDEE, IWD1, IWD2):
- Big Metal Unit   : requires the 3 pantaloons
- Pulse Ammunition : requires the Pulse (prototype)
- Pulse III        : requires any lesser Pulse Ammo (regular or prototype)
NOTE: You need to have the Big Metal Rod to get the Pulse Ammo dialogues.

Known issues:
- Big Metal Unit (classic IWD1): Does not change appearance. Will appear as a plate mail.
- Big Metal Unit (IWD2): Selection sounds will change to a creature sound, even after removing the armor. Saving and reloading (with the armor off) will return selection sounds back to normal.


==================================================
CREDITS
==================================================
Modder: Dan_P

Tools and Resources used:
- WeiDU (https://github.com/WeiDUorg/weidu)
- NearInfinity (https://github.com/Argent77/NearInfinity)
- Notepad++ (https://notepad-plus-plus.org/)
- Git Bash (https://git-scm.com/downloads)
- Infinity Auto Packager (https://github.com/InfinityTools/InfinityAutoPackager)
- IESDP (https://gibberlings3.github.io/iesdp/main.htm)
- LibIconv for Windows (http://gnuwin32.sourceforge.net/packages/libiconv.htm)


==================================================
VERSION HISTORY
==================================================
v4.0
- Rewrote chunks of the install files.
- Several NPCs will have dialogue, related to gaining items from this mod. In total, 2 NPCs from BGEE/SoD, 2 from BG2EE, 6 from IWDEE, and 8 from IWD2 will have additional lines.
- Added a few Journal entries, where it makes sense.
- Added full support for classic IWD1. Dialogue and gaining items are identical to IWDEE. A couple items are slightly different, due to engine differences (i.e. Big Metal Unit doesn't change animation).
- Added support for BG2EE and Black Pits 1&2.
- All components are now installable on BGEE, BG2EE, and EET.

- Changes for IWDEE and IWD2:
	- The Big Metal Unit now requires trading in the 3 pantaloons (does not cost gold).
	- The Pulse Ammunitions are now gained through dialogue. The better versions also require trading in an earlier Pulse Ammo. (NOTE: Party must have the Big Metal Rod to get the Pulse Ammo dialogues.)
	- Some items are now obtainable from more than one NPC (can only get an item once).
	- Costs a lot less gold to get all items now (still expensive, but not as much as before).

- Changes for BGEE:
	- Pulse (prototype) is now gained through dialogue.
	- Big Metal Rod is only available after you learn it exists.
	- Rod and Pulse (prototype) will be in SoD if not already obtained.

- Added BG2EE support: 
	- Core items are still gained the same way as in the unmodded game.
	- Scorcher and Frag Grenade are changed to the revised versions, by default.
	- Pulse (prototype) and an extra Big Metal Rod are obtainable in SoA.
	- Golden Pantaloons are in SoA, even if not importing from BG1.
	- Pulse III is obtainable in ToB (requires a lesser Pulse Ammo).

- Item changes:
	- EEs: All ammo types given Silver and Cold Iron properties. For BGEE, this means that Pulse (prototype) will be able to hit all the different werewolf enemies. Doesn't affect anything in IWDEE unmodded.
	- Adjusted base price of several items.
	- Big Metal Rod: Changed to +5 enchantment. This is only relevant if using a tweak that makes launcher enchantment apply to attacks.
	- Minor text edits.


v3.3
- fixed Orrick's store (chapter 4) not gaining Pulse Ammunition

v3.2
- changed backup folder to weidu_external (instead of mod folder)
- added HANDLE_CHARSETS function for installing on non-EE games

v3.1
- IWD2: added unidentified text for the bag
- IWDEE: fixed enchantment level of Pulse III

v3.0
- added component: Start with the core "Big Metal" items. With this option, you start with a bag containing the 5 main Big Metal items. Other ammo types, as well as the pantaloons, are still obtainable during the game.
- changed some prices (armor is not as insanely expensive). I haven't implemented it yet, but plan is to make some items require trade-ins of other items to obtain.
- moved some items around; some to different merchants + a couple are in containers now (so free)

Pulse Ammunition
- IWDEE: Identical to BG2 version again. The 3 missile variant is moved to later in the game. Scorcher and Frag ammo still have revised and vanilla versions.
- IWD2: Fires one missile per shot again (like BG2). The 3 missile variant is moved to a later merchant.

- BGEE: Big Metal Rod has a better description image
- IWDEE: changed location of Metal Rod, Metal Unit, Bronze Pantalettes, and Golden Pantaloons
- IWD2: changed location of Metal Rod, Scorcher, and Golden Pantaloons

v2.3
- update WeiDU version to v249
- update some things with the installation
- no changes to items

v2.2
- removed adding to stores as a separate component (it's part of the main component now); too many clicks to install, plus this is prep for a potential future update

v2.0
- rebalances the ammunitions (optional for IWD:EE)
- details: https://raw.githubusercontent.com/D2-mods/D2-Mira/main/d2-mira/v2.0%20-%20Revised%20ammunition.txt

v1.0
- release version

v0.7
- fix crash when buying Golden Pantaloons (apparently, buying an unidentified item locks up IWD2)
- items updated with higher prices
- items given lore values to get the "magical item" border around the icon in IWD2
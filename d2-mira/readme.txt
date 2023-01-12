The Big Metal Unit mod (v4.0)
GitHub: https://github.com/D2-mods/D2-Mira
Download: https://github.com/D2-mods/D2-Mira/releases
Installs on: IWD:EE, IWD1, IWD2, BG:EE, BG2:EE, EET


==================================================
OVERVIEW
==================================================
Adds the Big Metal items from BG2 to other IE games. All items are obtainable in IWDEE, IWD1, and IWD2 (including pantaloons). The Rod and Pulse Ammunition (prototype) are added to BGEE/SoD. There's also an option to start with a bag containing the core Big Metal items. See components section for more info.


v4.0:
- IWDEE/IWD2: The pantaloons are now required for gaining the Big Metal Unit.
- IWDEE/IWD2: Pulse Ammos are now gained through trades/dialogue.
- BGEE: Pulse (prototype) given Silver and Cold Iron properties (can hit all the werewolf enemies).
- Added full support for classic IWD1
- Added partial support for BG2EE (see components section)
- All components are now installable on BGEE, BG2EE, and EET.


==================================================
COMPONENTS
==================================================
1. Main Component
	- Option 1: Standard Installation
	- Option 2: Start with the core "Big Metal" items
2. EEs: Choose revised or vanilla BG2 ammo (default is Revised)

NOTE: This is now installable on BG2EE and classic IWD (as of v4.0). Not compatible with classic BG1 or BG2 because I don't have time to test all of that right now.


----------------------------------------------------------------------------------------------------

Additional info:
- Option 1:
	- All items are obtainable in IWDEE, IWD1, and IWD2 (including pantaloons).
	- The Rod and Pulse Ammunition (prototype) are added to BGEE/SoD.
	- Some are gained through trades/dialogue, some are sold by merchants, and some can be found in various places.
- Option 2: 
	- Party starts with a bag, containing the core Big Metal items. 
	- Other items not in the bag will still be obtainable in the game (if normally available with Option 1). 
	- Also compatible with Black Pits 1 & 2.

(not implemented yet)
- BG2EE notes: 
	- Scorcher and Frag Grenade are changed to the revised versions, by default.
	- Bronze Pantelettes, Rod and Pulse (prototype) will be obtainable (in SoA).
	- Cespanar can craft the Pulse III once you have the regular Pulse Ammunition.


Trades info (IWDEE, IWD2):
- Big Metal Unit: requires the 3 pantaloons
- Pulse Ammunition: requires the Pulse (prototype)
- Pulse III: requires the Pulse Ammunition
NOTE: You need to have the Big Metal Rod to get the Pulse Ammo dialogues.

See readme-ammo.txt for location or other info.


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


Additional info:
- Pulse Ammunition (prototype): Similar to the normal Pulse Ammunition, but lower APR (2 instead of 5) and lower enchantment (+1 instead of +3).
- Big Metal Rod (EE): As in BG2, this is just a crossbow without any bonus to hit/damage and usable by all classes. It does not give classes the ability to equip regular bolts, if they are not already able to.
- Big Metal Rod (IWD2): Has unlocked APR, but no bonus to hit/damage (so APR increases at higher levels). For comparison, standard crossbows in IWD2 do not gain higher APR with character growth, but even non-magical crossbows have big bonuses to hit/damage.
- Big Metal Unit (IWD2): A side effect of the animation change is that selection sounds when clicking the character will change to a creature sound. This change in sound will persist even after removing the armor. I couldn't figure out a workaround, but saving and reloading (with the armor off) will return selection sounds back to normal.


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
- Several NPCs will have dialogue, related to gaining items from this mod. In total, 4 NPCs from IWDEE, 8 from IWD2, and 1 from BGEE will have additional lines.
- Added full support for classic IWD1
- Added support for BG2EE and Black Pits 1&2 (see components section)
- All components are now installable on BGEE, BG2EE, and EET.

- Changes for IWDEE and IWD2:
	- The Big Metal Unit now requires trading in the 3 pantaloons (does not cost gold).
	- The Pulse Ammunitions are now gained through dialogue. The better versions also require trading in an earlier Pulse Ammo. NOTE: Party must have the Big Metal Rod to get the Pulse Ammo dialogues.
	- IWDEE: Some items needed for upgrades may be added to HoW, but only if not previously obtained.
	- IWD2: Some items are now obtainable from more than one NPC (can only get an item once).
	- Costs a lot less gold to get all items now (still expensive, but not as much as before).

- Changes for BGEE:
	- Pulse (prototype) is now gained through dialogue.
	- Big Metal Rod and Pulse (prototype) are now in SoD as well, but only if not previously gained.

- Item changes:
	- EEs: All ammo types given Silver and Cold Iron properties. For BGEE, this means that Pulse (prototype) will be able to hit all the different werewolf enemies. Doesn't affect anything in IWDEE (unmodded).
	- Silver Pantaloons: Reduced base price from 20000 to 10000.
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
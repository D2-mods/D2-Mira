D2-Mira
GitHub: https://github.com/D2-mods/D2-Mira
Download: https://github.com/D2-mods/D2-Mira/releases
Installs on: IWD:EE, IWD2, BG:EE, EET


==================================================
OVERVIEW
==================================================
Adds the Big Metal items from BG2 to other IE games. All items are obtainable in IWD:EE and IWD2 (including pantaloons). The Rod and Pulse Ammunition (prototype) are added to BG:EE. See components section for details.

v4.0:
- IWDEE/IWD2: The pantaloons are now required for gaining the Big Metal Unit.
- IWDEE/IWD2: Pulse Ammos are now gained through trades/dialogue.
- BGEE: Pulse (prototype) given Silver and Cold Iron properties (can hit all the werewolf enemies).


==================================================
COMPONENTS
==================================================
1. Main Component
	- Option 1: Standard Installation
	- Option 2: Start with the core "Big Metal" items
2. IWDEE: Choose revised or vanilla BG2 ammo (default is Revised)


Additional info:
- Option 1: All items are added to the game world. Some are gained through trades/dialogue, some are sold by merchants, and some can be found in various places.
- Option 2: Party starts with a bag, containing the core Big Metal items. Other items not in the bag can still be obtained during the game.

Trades info (v4.0+):
- Big Metal Unit: requires the 3 pantaloons
- Pulse Ammunition: requires the Pulse (prototype)
- Pulse III: requires the Pulse Ammunition
NOTE: You need to have the Big Metal Rod to get the Pulse Ammo dialogues.

Game-specific info:
- IWDEE: If you reach Lonelywood (expansion area) without certain items, they will be obtainable somewhere in town. This includes starting a new game in HoW.
- IWD2: Some ammo types can be given by more than 1 NPC. You can only gain an ammo once per playthrough.


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

Item resource/locations (spoilers): https://raw.githubusercontent.com/D2-mods/D2-Mira/main/d2-mira/v3.0%20-%20Ammo%20info.txt

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
- Changes for IWDEE and IWD2:
	- The Big Metal Unit now requires trading in the 3 pantaloons (does not cost gold).
	- The Pulse Ammunitions are now gained through dialogue. The better versions also require trading in an earlier Pulse Ammo. NOTE: Party must have the Big Metal Rod to get the Pulse Ammo dialogues.
	- IWDEE: Some items will be added to Lonelywood (expansion area) if you reach it without ever getting them. This includes starting a new game in HoW.
	- IWD2: If you reach Kuldahar without the Rod or the Pulse Ammo, then both can be obtained very quickly.
	- The other items are unchanged. They're still found or purchased from various places.
- BGEE/IWDEE:
	- All ammo types given Silver and Cold Iron properties. For BGEE, this means that Pulse Ammunition (prototype) will be able to hit all the different werewolf enemies. Doesn't affect anything in IWDEE (unmodded).

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
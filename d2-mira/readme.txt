D2-MIRA - Bringing the Big Metal Unit to IWD:EE and IWD2
GitHub: https://github.com/D2-mods/D2-MIRA
Forum: 
Game version: BG:EE, IWD:EE, IWD2 (EEs tested on v2.5/v2.6, IWD2 tested with Almateria's fixpack)


WHAT THIS MOD DOES:

Adds the Big Metal Unit from BG2 to other IE games. The full set is obtainable in IWD:EE and IWD2. The Rod and Pulse Ammunition (prototype) are obtainable in BG:EE. All items are purchased, and get added to various stores. Overall, I think the item prices and locations are well-balanced, but obviously, this isn't the mod to use if you're concerned about purity of the game balance.

Bonus: I also added the Golden/Silver Pantaloons and Bronze Pantalettes to both IWD games. They are extremely expensive and have no purpose at all other than taking up inventory space, but they're there if you want them.


INSTALLATION:

Copy zipped files to game directory, and run setup-d2-mira to install or uninstall. Component 1 installs the items and component 2 adds them to stores. I made adding to stores a separate component so people who might want to just import the items at the start can skip this step. Mod packages are cross-platform, and were made using ALIEN's Infinity Auto Packager. I don't use Mac/Linux, but installing should be the same as with other mods.


ITEM LIST:

- Big Metal Rod
- Pulse Ammunition
- Frag Grenade
- Scorcher Ammunition
- Big Metal Unit
- Pulse Ammunition (prototype)
- Bronze Pantalettes
- Silver Pantaloons
- Golden Pantaloons

Item resource/locations (spoilers): https://raw.githubusercontent.com/D2-mods/D2-MIRA/main/d2-mira/Item%20locations%20(spoilers).txt

Additional info:
- Big Metal Rod (EE): As in BG2, this is just a crossbow without any bonus to hit/damage and usable by all classes. It does not give classes the ability to equip regular bolts, if they are not already able to.
- Pulse Ammunition (prototype): Similar to the regular Pulse Ammunition, but lower APR (2 instead of 5) and lower enchantment (+1 instead of +3).
- Big Metal Rod (IWD2): A few things to note about the crossbows in this game:
	1. They are set to 1 attack per round, and only increase if hasted or if the crossbow or the bolt sets APR higher.
	2. Every class can equip any weapon type, so usability isn't an advantage.
	3. Even low level crossbows have big bonuses. A non-magical Heavy Crossbow gives +2 to hit/damage, and is pretty cheap to buy.
	4. So to make the Big Metal Rod not completely useless, as well as giving it some scalability, I remove the APR restriction. At level 1, it will still attack only once per round, but attacks will increase with character growth, same as bows and other weapons. No bonus to hit or damage (for now).
- Big Metal Unit (IWD2): A side effect of the animation change is that selection sounds when clicking the character will change to a creature sound. This change in sound will persist even after removing the armor. I couldn't figure out a workaround, but saving and reloading (with the armor off) will return selection sounds back to normal.


CREDITS:

Coding, Testing: Dan_P

Tools used:
- WeiDU v247 https://github.com/WeiDUorg/weidu
- NearInfinity v2.2-20210501 https://github.com/Argent77/NearInfinity
- Notepad++ https://notepad-plus-plus.org/
- Git Bash https://git-scm.com/downloads
- Infinity Auto Packager https://github.com/InfinityTools/InfinityAutoPackager
- IESDP https://gibberlings3.github.io/iesdp/index.htm

I don't own any files here and anyone is free to re-use any part of this mod for their own projects.


VERSION HISTORY:

v1.0
- release version

v0.7
- fix crash when buying Golden Pantaloons (apparently, buying an unidentified item locks up IWD2)
- items updated with higher prices
- items given lore values to get the "magical item" border around the icon in IWD2

v0.6
- reorganization of files/folders
- reordered/renumbered tra file
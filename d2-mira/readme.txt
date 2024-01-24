The Big Metal Unit mod (v4.0+)
GitHub: https://github.com/D2-mods/D2-Mira
Installs on: IWD:EE, IWD1, IWD2, BG:EE, BG2:EE, EET


Overview:
This is a mod for Infinity Engine games. It was originally written for Icewind Dale: Enhanced Edition and Icewind Dale 2 in order to add the Big Metal Unit and related items into the games. The mod has since been expanded to include dialogue and item trading with various NPCs, several tweak options, as well as support for more games (Baldur's Gate: Enhanced Edition, Baldur's Gate 2: Enhanced Edition, and classic IWD).

The exact stuff this mod adds will depend on the game. All items are obtainable in the IWD games (including pantaloons). The Big Metal Rod and a Pulse (prototype) are added to BGEE/SoD (obtainable in both). For BG2EE/ToB, several items are added or revised, and there may be a small quest involved. There's also an option to start with a bag containing the core Big Metal items. See components section for more info.

--

Components:

1. Main Component:
	- Option 1: Standard Installation
	- Option 2: Start with the core "Big Metal" items
2. Adjust APR and enchantment level (5 options, including vanilla BG2 stats)
3. Choose damage type for Frag Grenade (fire or slashing)
4. Make ammo more party friendly (see note below)
5. Pulse ammo does double damage on a critical hit (EEs)

--

Component 4 info (party friendly ammo):
- Makes it so only the damage from the launcher will harm PCs.
- Ammo damage (ex. fire from Scorcher) does no damage to PCs.
- If the launcher has no damage bonus (i.e. Big Metal Rod), the ammo is party friendly.
- EEs: Applies to Scorcher and Frag Grenade.
- IWD1/IWD2: Applies to Frag Grenade only (can't make it work with Scorcher projectile).
- Neutral NPCs may still become hostile, even if they take no damage.

--

IWD (non-EE) note: If you get an installer warning related to missing stuff in DLG files, that's fine. It's just skipping some dialogue states added by the G3 fixpack, 'item upgrade' or 'unfinished business' mods. If those mods are installed before this mod, then the warnings go away.

--

Additional info:

- Option 1:
	- IWD games: All items are obtainable, including pantaloons.
	- BGEE/SoD: Adds the Big Metal Rod and Pulse Ammunition (prototype).
	- BG2EE: Several items are added or revised (see below).
	- Some are gained through trades/dialogue, some are sold by merchants, and some can be found in various places.

- Option 2: 
	- Party starts with a bag, containing the core Big Metal items. 
	- Other items not in the bag will still be obtainable in the game (if normally available with Option 1). 
	- Also compatible with Black Pits 1 & 2.

- BG2EE notes: 
	- Core items are still gained the same way as in the unmodded game.
	- Scorcher and Frag Grenade are changed to the revised versions, by default.
	- Pulse (prototype) and an extra Big Metal Rod are obtainable in SoA.
	- Golden Pantaloons are in SoA, even if not importing from BGEE.
	- Pulse III is obtainable in ToB (requires a lesser Pulse Ammo).

- A few hints:
	- IWDEE/IWD1: The Big Metal Rod is in the starting town. Make sure not to miss it (though there's different dialogue with an NPC if you do miss it).
	- ToB: Gold and Silver Pantaloons are obtainable if not found in SoA.
	- HoW: Any missing pantaloons, the Big Metal Rod, and a Pulse Ammo are obtainable if not found in the main IWD campaign.
	- IWD2: Any missing pantaloons, the Big Metal Rod, and a Pulse Ammo are still obtainable after the second time flying with Oswald, if you didn't get them earlier.

--

Trades info (IWDEE, IWD1, IWD2):
- Big Metal Unit   : requires the 3 pantaloons
- Pulse Ammunition : requires the Pulse (prototype)
- Pulse III        : requires any lesser Pulse Ammo (regular or prototype)
NOTE: You need to have the Big Metal Rod in possession to get the Pulse Ammo dialogues.

--

Known issues:
- Big Metal Unit (classic IWD1): Does not change appearance. Will appear as a plate mail.
- Big Metal Unit (IWD2): Selection sounds will change to a creature sound, even after removing the armor. Save and reload (with the armor off) to return selection sounds back to normal.

--

Modder: Dan_P

Tools and Resources used:
- WeiDU (https://github.com/WeiDUorg/weidu)
- NearInfinity (https://github.com/Argent77/NearInfinity)
- Notepad++ (https://notepad-plus-plus.org/)
- Git Bash (https://git-scm.com/downloads)
- Infinity Auto Packager (https://github.com/InfinityTools/InfinityAutoPackager)
- IESDP (https://gibberlings3.github.io/iesdp/main.htm)
- LibIconv for Windows (http://gnuwin32.sourceforge.net/packages/libiconv.htm)
- 7-Zip (https://www.7-zip.org/)

--

Updates:
v4.3
- Updated component: Adjust APR and enchantment level (5 options, including vanilla BG2 stats).
- Added component: Choose damage type for Frag Grenade (fire or slashing).
- Added component: Make ammo more party friendly (see readme for info).
- Added component: Pulse ammo does double damage on a critical hit (EEs).
- IWD1/IWDEE: Fixed oversight with one NPC's dialogue. Option to trade for a Pulse ammo could disappear if you progressed too far without obtaining the ammo.
- Internal installer improvements.
- Added more info to readme.

v4.2
- IWD2: fixed quick icons for ammo (was using wrong icons).

v4.1
- Changes for BG2: 
	- Golden Pantaloons added to Watcher's Keep if you didn't get it from the starting dungeon.
	- Silver Pantaloons added to ToB if not obtained in SoA.
- Changes for BG1: 
	- Added dialogue with an additional NPC. Can ask about item locations.
	- Journal entries will now give the pop up (if option is enabled).

v4.0
- Rewrote chunks of the install files.
- Several NPCs will have dialogue, related to gaining items from this mod. In total, 2 NPCs from BGEE/SoD, 4 from BG2EE, 6 from IWDEE, and 8 from IWD2 will have additional lines.
- Added a few Journal entries, where it makes sense.
- Added full support for classic IWD1. Dialogue and item locations are identical to IWDEE. A couple items are slightly different, due to engine differences (i.e. Big Metal Unit doesn't change appearance).
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
	- EEs: All ammo types given Silver and Cold Iron properties. For BGEE, this means that Pulse (prototype) will be able to hit all the different werewolf enemies. Doesn't affect anything in other games (unmodded).
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
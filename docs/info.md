# Useful Info

Notes and info for future reference.

## Item in Player's PC at start of a new game

In Gen 1, at the start of a new game, there was a `POTION` already in the Player's PC item storage. This was not the case in Gen 2, but the functionality was added to this base. If you want to change the item, add others, or remove that function all together, it is simple enough to do.

In `engine/menus/intro_menu.asm`, look for the `OakSpeech:` label. A little code block to add the item was added at the start of this routine, identical to the one in Gen 1.

If you want to remove the item all together, just delete this block of code:
```
	; Silently add 1 Potion to the player's PC like RBY
	ld a, POTION
	ld [wCurItem], a
	ld a, 1
	ld [wItemQuantityChange], a
	ld hl, wNumPCItems
	call ReceiveItem
```
If you want to change the item to something else, just change the `POTION` constant to a different item's constant. Similarly, you can change the `1` to a different amount, if you want to add more than one of that item. If you want to add more than one type of item at the start of the game, you can just copy/paste that code block again directly below it, and change the Item ID and Amount as you see fit.


## Ghost Battles

An item for the `SILPH_SCOPE` from Gen 1 has been added, and is functional, but no event has been added to give one to the player. Near the bottom of `ChooseWildEncounter:` in `engine/overworld/wildmons.asm` there is a commented-out map check. The commented-out check would make all Wild Pokemon on `ROUTE_29` be treated as ghosts, IF the player doesn't have a `SILPH_SCOPE`. If the player has as `SILPH_SCOPE`, they will be normal encounters instead.

These checks could be expanded to account for a range of maps, adjusted to check for a specific Landmark, etc.

If the player is forced into a battle using `BATTLETYPE_GHOST` via an event, while they have a `SILPH_SCOPE` in their pack, it will first say that the Silph Scope identified the ghost, update it's sprite and name along with a short animation (a beta send-out animation, with the pokéball poof commented out), and switch to a normal Wild Pokemon encounter.


## Fossil Reviving

As an example, there is a Fossil Lab script added to the file `maps/RuinsOfAlphResearchCenter.asm`. This script (along with its text) could be easily cut and pasted to a different map to move the fossil lab there.

The fossils are currently only obtainable via Rock Smash (see `data/items/rock_smash_rewards.asm`) but they can be made available in any way you wish via new events.


## Town Map Item

While it is not made available by any new or changed event, the item called `TOWN_MAP` has been made fully functional as a key item, just like it was in Gen 1. It can be given via any new or changed event that you see fit.


## Forests with Tall Grass

The environment type `FOREST` has been added, for maps that work like Viridian Forest in Gen 1, instead of like Ilex Forest in Gen 2 (which was treated as a cave). It is not currently assigned to any maps.


## Puddles that splash when you walk

The collision type `COLL_PUDDLE` has been added, but is not assigned to any map blocks. If you want to use it in new tilesets, just give them the `PUDDLE` collision type in Polished Map when setting up the blocks.


## Spinner Tiles

The functionality for spinner tiles from the Gen 1 Team Rocket base have been added. They have not been added to any existing tilesets, but can be used. Their collision types are:
```
	COLL_STOP_SPIN
	COLL_SPIN_UP
	COLL_SPIN_DOWN
	COLL_SPIN_LEFT
	COLL_SPIN_RIGHT
```
Just make the appropriate blocks in whatever tileset you want, and set their collision using Polished Map. Remember that you do not add the `COLL_` prefix in Polished Map.


## Tileset Expansion

Tilesets have been expanded to allow up to 0x7F tiles now (Tile 0x7F itself still needs to be a blank tile for the space character). They have also been corrected so that block IDs do not wrap around with higher block IDs like they did in vanilla.


## Splash Pokedex Info on Screen

Just like in Gen 1, you are able to show a Pokemon's dex info on the screen now using a new Special. This has been added to Elm's Lab instead of the standard pokepic when choosing a starter. To do it via an event script, just use:
```
	reanchormap
	setval CYNDAQUIL
	special ShowPokedexEntry
```
The version in Elm's Lab has an added routine called via `callasm` to temporarily mark the starters as owned before giving them. In normal usage, it will only display the basic info and mark the Pokemon as "seen" when you use this from an event.


## Make a Pokemon evolve by holding an item

If you want to remove the trading requirement for certain Pokemon such as Steelix, but still want to keep it more similar to the vanilla method, there is a new evolution type added. An example would be editing `data/pokemon/evos_attacks.asm` and changing Onix's data to use:
```
OnixEvosAttacks:
	db EVOLVE_HELD, METAL_COAT, STEELIX
	db 0 ; no more evolutions
```
As you can see, it does not require a specific level (since `EVOLVE_TRADE` did not, either), and the Pokemon will try to evolve if they level up while holding the specified item.

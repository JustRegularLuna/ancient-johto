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

An item for the `SILPH_SCOPE` from Gen 1 has been added, and is functional, but no event has been added to give one to the player.

No maps are currently assigned to use unidentified ghost functionality. However, the list in `data/maps/ghost_maps.asm` determines which maps should function like Pokemon Tower did in RBY. By default, it has a single commented-out example entry, which would make Route 29 function that way, loading either unidentified ghost encounters, or normal wild encounters, depending on whether or not the player has a `SILPH_SCOPE` in their pack.

If the player is forced into a battle using `BATTLETYPE_GHOST` via an event while they have a `SILPH_SCOPE` in their pack, It will function similarly to the Ghost Marowak in RBY. It will first show a ghost, say that the Silph Scope identified the ghost, update it's sprite and name along with a short animation (a beta send-out animation, with the pokéball poof commented out), and switch to a normal Wild Pokemon encounter. This means that, once identified, it will become a normal Wild Pokemon battle, and the ghost could be caught normally.

If you want to change the battle type that it switches to, you would need to look in `engine/battle/core.asm` and look for the `.ghost_reveal` label. A handful of lines below that, you will see:
```
	ld a, BATTLETYPE_NORMAL
	ld [wBattleType], a
```
If you want to change that to a different type of battle for ghosts that are indentified in the cinematic way like this, you could change that `BATTLETYPE_` ID to a different one.


## Safari Zone Game

The Safari Zone game mode from Gen 1 is fully functional. By default, the `SAFARI_ZONE_ENTRANCE` map is where the example script for starting/stopping the Safari game is located, AND where the scripts will take you back to, should you run out of steps or `SAFARI_BALL`s while in the Safari Zone.

You can easily edit the warps associated with entering and leaving the `SAFARI_ZONE_ENTRANCE` map (and its Landmark ID) to have the Safari Zone be anywhere you like. By default, you access it via Fuchsia City as expected, and the warps into the zone take you to the `SAFARI_ZONE_BETA` map. If you want to make new maps for a larger Safari Zone (I assume you will), you can just edit the warps in the gate to take you to your new maps, and it should work as expected.

If for some reason you want to move the Safari Zone entrance scripts to a completely different map, and not just use the existing `SAFARI_ZONE_ENTRANCE` map, you will need to:
- Move the example scripts from `SAFARI_ZONE_ENTRANCE` over to your new map for the entrance gate.
- Make sure the new map is set up to use a scene_var in `data/maps/scenes.asm` (You will need to edit `ram/wram.asm` as well to add a label for a new scene var.)
- Look for `SafariZoneOverWarpScript::` in the example scripts you copied over from the original `SAFARI_ZONE_ENTRANCE` map, and edit that script's `warpfacing` command accordingly.
  - You would need to change the Map ID, and potentially the coordinates and movement data, to match the map you are moving it to.
- If you want to change how many `SAFARI_BALL`s and/or how many steps they are given at the start of a Safari game, edit `GiveSafariBalls:` at the top of `engine/events/safari_zone/safari.asm`. By default, they are set to 30 balls and 500 steps, like in RBY.

While the little example Safari Zone map (a slightly edited version of the vanilla beta safari zone from GSC) does not actually have headbutt encounters added in, those are also accounted for by the Safari game mode, if you chose to design your own Safari Zone with headbutt trees included. The headbutt encounters would use the Safari mode as expected.


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


## Show a Museum Pic

Gen 1 just used its version of `pokepic` to display the museum fossils, since it had a lot of Pokemon IDs to spare. However, that isn't really the case now that there are a lot more than 151 Pokemon you might want to use. To get around this, I added a new `special` you can use in your event scripts, for displaying any 56x56 sprite you want inside a pokepic box, with their own IDs that do not waste Pokemon or Trainer ID slots.

The list of constants for these new pics are defined at the bottom of `constants/script_constants.asm`. By default, I have added the two Museum Fossils from Pokemon Red. The constants in that list correspond to the table in `data/events/museum_pic_pointers.asm`. The images themselves are INCBIN'd near the end of `main.asm` in the SECTION "Museum Pics", and any new ones you add should be in the same section as the two that are there already. The code assumes all of the Museum Pics are in the same Bank and Section as one another, since that should be plenty of space for a lot of museum pics. The code for loading museum pics would need a small adjustment, and the table converting from `dw` to `dba` if for some reason you wanted to add a very large amount of museum pics.

In order to use one of these in an event, it is very similar to using the existing `pokepic` command. All you have to do in order to show one is:

```
	reanchormap
	setval FOSSIL_AERODACTYL
	special MuseumPic
	waitbutton
	closepokepic
```

It should be usable in exactly the same instances as you would use the `pokepic` command, except this new `special` doesn't require you to waste Pokemon IDs for your museum displays.


## Make a Pokemon evolve by holding an item

If you want to remove the trading requirement for certain Pokemon such as Steelix, but still want to keep it more similar to the vanilla method, there is a new evolution type added. An example would be editing `data/pokemon/evos_attacks.asm` and changing Onix's data to use:
```
OnixEvosAttacks:
	db EVOLVE_HELD, METAL_COAT, STEELIX
	db 0 ; no more evolutions
```
As you can see, it does not require a specific level (since `EVOLVE_TRADE` did not, either), and the Pokemon will try to evolve if they level up while holding the specified item.

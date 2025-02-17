# Pokémon Gold and Silver, Retro Base
This is based on the pret disassembly of Pokémon Gold and Pokémon Silver.

This repository is intended as a base for other hacks, not as a "real" hack in its own right. It is not focused on adding or significantly changing the base game's content, but instead focuses on adding and changing features. My motivation for making this was to make it easier to work on my more retro/nostalgic project ideas without having to wade through the spaghetti that Gen 1 is made of. For example, Gen 1 does not even have an event scripting system, and requires custom events to all the be written in ASM code, and has a lot of hidden "gotchas" to work around, while Gen 2 is overall a nicer base to use, but was lacking some of the iconic aspects of Gen 1 that those retro projects would want. I started making this base to combine the best of both worlds, and I'm keeping it as its own separate repo to make it easier for others to use as well, if they are so inclined.

More detailed information about using some of these features is inside the `docs/` folder, but a brief summary of what this currently provides is:
- The entire game uses SGB monochrome palettes in both GBC and SGB mode, like Gen 1.
- Pokémon use shared `PAL_REDMON`, `PAL_BLUEMON`, etc. palettes, and trainers all use `PAL_MEWMON`, like Gen 1.
- Flowers and Water are set to use the Gen 1 animations by default.
- Textboxes use the Gen 1 border as the default option.
- "Spinner Tile" collision types from the Gen 1 Team Rocket bases are supported, though no tilesets have been given them by default.
- While not a Gen 1 feature, there is a collision type for splashing puddles when you walk in them, `COLL_PUDDLE`.
- The `SILPH_SCOPE` item was added, as well as `BATTLETYPE_GHOST`. While no maps are setup to have ghost battles by default, the docs explain how to enable them for an area, or in an event.
- The `TOWN_MAP` item was made properly functional. You can give it to the player as normal, and it will work as expected, if you want to use it instead of the Pokégear card.
- The `OLD_AMBER`, `DOME_FOSSIL`, and `HELIX_FOSSIL` from Gen 1 have been added, and an example script for the Fossil Revive lab NPC was added to the Ruins of Alph lab. As a placeholder, the fossils are currently found via Rock Smash, but that can be changed to whatever you prefer.
- The Gen 2 `EXP_SHARE` has been reworked into a more Gen 1 style `EXP_ALL` Key Item, which lets you toggle it on or off.
- An environment type called `FOREST` was setup, allowing for areas like Viridian Forest with tall grass, instead of treating forests like caves. (Not assigned to any map by default)
- The default Gen 2 issue with "trying to surf onto water across a map connection" was fixed, allowing things like the Gen 1 Cinnabar/Route 20 connection to function as they did in Gen 1.
- The party menu sprites from both Gen 1 and Gen 2 are available for use.
- Naming the Rival has been moved to the Oak Intro.
- A single `POTION` is silently added to the Player's PC storage when beginning a new game, like Gen 1.
- Pokémon Crystal style gender selection was added to the Oak Intro. By default, they use the sprites from pokecrystal.
- A new `special` was added for showing Pokédex info via an event, like in Gen 1. By default, Elm's Lab was switched to use these instead of the original pokepic boxes.
- A new evolution method called `EVOLVE_HELD` was added, if someone wants to use it instead of `EVOLVE_TRADE` for Pokémon such as Steelix.
- A table of `EvolutionMoves` was added in `data/pokemon/evolution_moves.asm`, though it has not been utilized in this base by default.
- A few oversights were corrected, allowing the Apricorn balls to work as intended, or the beta item effect `HELD_CATCH_CHANCE` to function as intended, and `DRAGON_FANG` to have its intended effect.
- Removed the FixPicBank design flaw mentioned in the docs, and a few other minor issues.
- Removed the password requirement for resetting the clock, and simplified the key combo to just `B + Down`.
- The "Loss" part of Win/Loss text on trainers is able to actually be used for more than just the initial Rival battle.
- Running Shoes while holding B was added.

I will try to keep this list, as well as the info in the `docs/` folder updated as things are added. There is not much left that is intended, but see `TODO.md` for more info.


## See also

- [**Symbols**][symbols]
- [**Tools**][tools]

You can find us on [Discord (pret, #pokecrystal)](https://discord.gg/d5dubZ3).

For other pret projects, see [pret.github.io](https://pret.github.io/).

[symbols]: https://github.com/pret/pokegold/tree/symbols
[tools]: https://github.com/pret/gb-asm-tools


## Credits

Not everything in this base was made by me (JustRegularLuna) originally. Additional credit goes to:
- Contributors to the wiki tutorials for pokecrystal, where some of these improvements were adapted from.
- Ghost Battle mode ported from Gen 1 using code by JustRegularLuna, Rangi42, Vulcandth, and leftover code by Gamefreak (Polished Crystal).
- Safari Battle mode ported from Gen 1 using code by JustRegularLuna, SourApple, and leftover code by Gamefreak (Sour Crystal).

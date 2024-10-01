### THIS IS STILL UNDER DEVELOPMENT, AND IS NOT CURRENTLY A RELEASE CANDIDATE


# Pokémon RedGold & BlueSilver


### First things first: This IS NOT a lost beta, a recreation of any one specific beta, or a faithful demake of Gold & Silver onto Red & Blue's engine.


## What Is This?

This ROM Hack is a nostalgic, beta-inspired reimagining of Pokémon Gold & Silver Versions, built from the disassembly of [**Pokémon Red/Blue**][pokered] with a LOT of changes. It takes inspiration from multiple prototype versions, along with the vanilla games, in order to be its own thing. It reboots the timeline after the events of Gen 1, replacing vanilla Gen 2 and ignoring Gen 3+.


## What To Expect (And What Not To):

Things you **SHOULD** expect to see in **Pokémon RedGold & BlueSilver** include:
* The Kansai Region, heavily based on beta maps found leftover in the final versions of GSC, remapped in the style of the SW97 demo, with routes and landmarks that are from or inspired by multiple leaked prototype builds, though some areas are invented by me to help flesh out the region.
* A storyline inspired by a combination of SW97, vanilla GSC, and things indicated by beta NPCs and scripts (with creative license to fill in the gaps.)
* A Pokédex list combining Pokémon from SW97, SW99, and final GSC.
* Custom skill sets for Pokémon, not copied from current Gen or vanilla Gen 2.
* A combination of vanilla Gen 1 and 2 attacks, beta attacks, and custom attacks to suit the Pokémon that are available.
* Game mechanics that combine aspects of Gen 1, Gen 2, beta content, and custom changes.

Things you **SHOULD NOT** expect in this game:
* Vanilla Gen 2 with a different coat of paint.
* The Region from the SW97 Demo.
* Pokémon, characters, locations, etc. from Gen 3+.
* Modern game mechanics such as Natures, Abilities, IVs and EVs, the Physical/Special Split, Mega Evolution, etc.
* Obnoxious self-insert boss trainers, "Kaizo" difficulty, Nuzlocke mode, or anything "overly fan-gamey" like that.

I know this hack may not appeal to everyone, and that is ok, but I hope the people that find this interesting will enjoy it once it is ready. Because not everything will match the vanilla games, there will of course be documentation available for people that want it.


## Documentation:

* A full list of features can be found in [**FEATURES.md**](FEATURES.md).
* A full list of credits can be found in [**CREDITS.md**](CREDITS.md).
* To see a list of all Pokémon included, look [**here**](constants/pokemon_constants.asm).
* To see Pokémon skill sets and evolutions, look [**here**](data/pokemon/evos_attacks.asm).
* To see Pokémon base stats and which TMs they learn, look [**here**](data/pokemon/base_stats/).
* To see which Pokémon are found in the wild in each area, look [**here**](data/wild/wildmons.asm).
* To see a list of Pokémon you can find via Headbutting trees, look [**here**](data/wild/headbutt_trees.asm).
* To see all the In-Game Trades and where they are found, look [**here**](data/events/trades.asm).

Additional reference materials will be made once the project is closer to a release, to document some of the new content in a more user-friendly way instead of just digging through the source code.


## F.A.Q.

### Q: Are there working Gameshark Codes for this?
A: Vanilla cheat codes do not work anymore, because memory has shifted way too much. A list of the most commonly requested Gameshark Codes (such as item/pokemon modifiers and infinite money) will be placed here once there is an actual release, and will indicate which version they are for when the time comes.

### Q: What are the differences between the two versions?
A: Primarily superficial changes, such as the title screen and other graphics. While some Pokémon will be more common in one version than the other, ALL Pokémon will be obtainable in both versions without having to trade. A full list of version differences will be put together once more content is in place.

### Q: Why is such-and-such different from Super Gold '97?
A: This hack is not directly related to Super Gold '97, G/S '97 Reforged, Pokémon October, or any other beta hack. The source material (the beta leaks) have a lot of missing and placeholder data, and have no official English names for Pokémon and the like. While these hacks contain some of the same Pokémon and other things, and draw inspiration from some of the same material, we all had a lot of gaps to fill in, and chose to fill them in differently, in the ways we each liked best. Just appreciate them all for what they are - different fan interpretations of unfinished content that was originally lost.

### Q: Why is such-and-such named this way?
A: To help emphasize that this is a reimagining, and not just vanilla Johto with a new coat of paint, city names have been replaced with new (but fitting) names. In the case of Pokémon, if a beta design felt "different enough" to me, I chose to give it a different name from the final version to help it stand out. Such as "Purrleaf" for Beta Hoppip, since the beta designs still felt more cat-like with their faces and tails, for example.

### Q: Why does such-and-such not work the same as vanilla games?
A: Since this is a reimagining, I found it more fun and interesting to come up with a unique blend of gameplay mechanics, combining Gen 1, Gen 2, Beta Content, and custom changes for personal preference or balancing reasons.

### Q: What tools did you use to make this?
A: The only tools used were the RGBDS compiler, Notepad++, Polished Map, Tilemap Studio, and a paint program to edit .png files.

### Q: Why did you make this hack?
A: Gen 2 is my favorite, Gen 1 has the most nostalgia for me, and I have always been fascinated with the beta Gen 2 content. I wanted to make something that brought that all together.

### Q: Why did you use Gen 1 as the base for this?
A: Short answer? Because I could.

A: Longer answer? I learned a lot about hacking Gen 1 while making Red++ (before moving it to pokecrystal) and I wanted to make use of that knowledge in something new, doing something that I found more interesting. I also felt that pokered would do a better job of capturing the nostalgic feeling it was going for, and would work well with the SW97 aesthetic. I also figured it would be a fun challenge trying to get this working the way I wanted it to on pokered.

### Q: Will you add, remove, or change such-and-such?
A: Maybe, maybe not. Suggestions will be taken into consideration, but it is impossible to please everyone, or to include everything that is ever suggested. Do not be upset if you suggest a change, and the answer ends up being "no".


## More Info:

To set up the repository, see [**INSTALL.md**](INSTALL.md).

For pret's disassembly projects, see [pret.github.io](https://pret.github.io/).

For more information on hacking Red & Blue, check out the pokered [**Wiki**][wiki] (includes [tutorials][tutorials])

[pokered]: https://github.com/pret/pokered
[wiki]: https://github.com/pret/pokered/wiki
[tutorials]: https://github.com/pret/pokered/wiki/Tutorials

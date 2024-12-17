# FEATURES
This should be a mostly-complete list of features included in this ROM Hack. Keep in mind, this is built from Pokémon Red, even though it is a Gen 2 reimagining.


## GAMEPLAY FEATURES
These are notable features which have been added

* Pokémon Crystal's sound engine
* Player selection (beta Kris, beta Hiro)
* Running Shoes (2x faster than walking)
* Faster Surfing(2x faster than walking)
* Faster Bicycle(4x faster than walking)
* Dark & Steel types added, type chart updated
* Added an Attack Info pop-up when learning a new attack
* New evolution methods added when needed
* Berry Trees (working off of a step counter)
* New trainer classes added (all classes from Gen 1, 2, and SW97 are represented)
* In-Game Trades have individual OT names
* Trainers have individual names
* Pokémon have genders
* Pokémon break out with 0 shakes, instead of the Gen 1 "You missed the Pokémon!" message
* Animated EXP Bar, Caught indicator icon, Pokémon gender display in battle UI
* Other UI adjustments to mimic Gen 2 or SW97, such as Trainer Card
* HM Moves usable without manually selecting them from the party menu
* Ability to use Headbutt outside of Battle
* Offline Wonder Trade (Taken from Pokémon Red++)
* Player turns to face trainers when encountered by them
* Fixed effectiveness diplay on dual-type Pokémon
* More


## BUGFIXES
These are notable bugs/oversights from original Red & Blue that have been fixed.

* Restored the "Presents" text in Gamefreak intro scene
* No "Gen 1 Missing" with 100% accuracy attacks
* Fixed the Evo Stone Bypass Glitch
* Fixed Focus Energy bug, kept speed-based crits
* Fixed Trade-Evo checks on NPC trades
* Fixed all transformed Pokémon becoming Ditto when caught
* Crits only ignore appropriate stat changes, not all of them
* Pokémon do not skip learning a move if they grew multiple levels at once
* Pokémon are able to learn multiple moves at the same level if relevant
* A lot of minor bugs, such as desync or minor issues, mentioned in the wiki/tutorials section (too many to list)
* More



## CODE-RELATED FEATURES AND FIXES
These are probably only interesting to people wanting to use them in their own hacks

* Fixed various oversights, such as assumptions in the name lookup code
* Removed various leftover checks from the Japanese releases that are now unnecessary
* Level 1 moves stored with all other moves, not in Base Stats
* Pokémon IDs sorted by Pokédex Number internally
* Pokémon and Trainer Classes do not share an ID range anymore
* Trainers can have individually assigned DVs for certain Pokémon
* Trainer sprites can be stored in any Rombank
* Reorganized map object/script/text data to keep one maps's data together like Gen 2
* Ability to have Jump Ledges in multiple tilesets
* Warp Carpet tiles are not a single list shared by all tilesets anymore
* Worked around Gen 1's single-byte map IDs, adding second lists to everything to account for a proper second region
* Expanded tilesets allowed

## BEHIND-THE-SCENES FEATURES PORTED FROM GEN 2
Some notable things ported from Gen 2 include:

* Trainer class DV table and encounter music table
* Trainer party format, and Class/Name constants
* Town map data formats
* Tileset animation code
* Roof tile loading system for outdoor tilesets
* Variable overworld sprite IDs, like Gen 2 has
* More

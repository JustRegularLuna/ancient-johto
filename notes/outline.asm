=============
GENERAL STUFF
=============
- There is no pokegear or phone calls
- Pokemon Centers use a cross between Gen 1 and 2 layout
  - 2 floors on one map
  - Gen 1 style link area with the one receptionist
  - Still has a bench guy
- Pokemarts use the Gen 2 design
- Most map layouts will be basically the same as Gold
  - Some map layouts may be adjusted if I have to for technical reasons
  - Rocket Hideout may be adjusted to have spinner tile puzzles


=====
INTRO
=====
- Are you a boy or a girl?
- New text similar to GS but different
- Keep naming your rival in the intro


=============
NEW BARK TOWN
=============
- Player's House looks like G/S, but just has RB events with new text
  - Maybe keep it so Mom heals you like RBY?
- Generic NPC houses for the other houses
- Silver is in Oak's lab waiting for a pokemon, not in the city
- Elm drags you to his lab the way Oak did in RBY, but with new movement data of course
- Elm's Lab works like Oak's lab
  - You and Silver get your starter at the same time
  - Battle Silver in the lab
  - Deliver Mystery Egg, get Pokedex, and 5 Pokeballs (like RPP3)
  - Maybe add a healing machine like GSC?


========
ROUTE 29
========
- Berry tree and generic npcs
- Dude showing how to catch Pokemon based on the old man battle


================
CHERRYGROVE CITY
================
- Guide Gent in his house, giving the Town Map
  - Reuse scripts from Daisy's house with new text
- Mart checks if you have a pokedex or not to know which mart inventory to load
  - Look at Viridian Mart as an example of loading different event text lists
- Don't forget the Mystic Water guy, although he may need to give something else
  - Can probably base his code on the TM guy in Viridian
  - Maybe a Water Stone?


=============
ROUTE 30 & 31
=============
- NPC blocking the lefthand path at first
  - Change it so Elm's Lab script hides him, the same way it hid the old man
- Mr. Pokemon's house script based on the Viridian Mart
  - Elm's Parcel instead of Oaks Parcel
- Trainer Battles start here
  - Keep one as a Youngster and his Top Percentage Rattata
  - Just make up some of the others
- Berry Trees and a house talking about Berries
  - Based on the Badge info house from Cerulean, and the way I edited it in RPP3


=========
DARK CAVE
=========
- Look at the way Rock Tunnel works, so that it needs flash


===========
VIOLET CITY
===========
- Reuse the Viridian City pokemon school scripts for Earl's school
- Falkner's Gym is basically the same
  - TODO: Decide which TM he will give
- Trade house
  - Bellsprout for Onix
- Generic NPC house
- Itemballs that you need to surf to get to
- Maybe the Jigglypuff event from Pewter's pokecenter?
- Elm's Aide in the pokecenter (no eggs this time around, so no Togepi side plot)
  - If you've caught 10 kinds of Pokemon, gives something


============
SPROUT TOWER
============
- Make sure to port the animation for the pillar tiles
- Random itemballs
- Lots of generic trainers
  - Sages, maybe a Medium or Channeller here and there too
- Gastly do not require Silph Scope, they are just normal encounters
- Rival Battle at the top, maybe based on the code for the one beside Viridian
- Battle the Elder and get Flash
  - You need Zephyr Badge to use it


=============
RUINS OF ALPH
=============
- Ruins are extended a bit from GS with more to explore
- "Ghosts" appeared in the ruins
  - Need the Silph Scope 2 in order to identify them
  - Actually the Unown distorting the perception of people to scare them away
- Fossils are found outside somewhere here
- TODO: Come up with a reward for getting to the bottom of the ruins after you have the scope


========
ROUTE 32
========
- TM guy
  - TODO: Decide which TM
- Generic trainers
- Old Rod guy in Pokecenter


==========
UNION CAVE
==========
- Generic trainers
- Itemballs
- Connect back to Ruins of Alph
- Lapras in the basement


========
ROUTE 33
========
- Berry Tree
- Hiker


===========
AZALEA TOWN
===========
- Slowpokes always around
- Team Rocket blocking the gym and Slowpoke Well
  - Should just be a standard NPC, and hidden by another script
- Rival Battle at Ilex entrance like the Gary battle in Cerulean
- Kurt's house
  - Have him send you to the Well first
    - Hide the rocket at the Well when you talk to him
  - Hopefully add special pokeballs
  - If they work, add Kurt's script based on a modified copy of the fossil lab code to craft them
  - Leave his house and come back for the ball to be ready
  - If they don't work, have him craft Berry Juice and Rare Candy from Berries or something?
- Bugsy's gym is basically the same
  - TODO: Determine his TM


=============
SLOWPOKE WELL
=============
- Rockets like Mt Moon
  - Maybe Jessie and James too?
- Hide the Rocket at the gym afterwards


===========
ILEX FOREST
===========
- Need cut to progress
- Celebi Shrine
  - Get the GS Ball later I guess
- Generic trainers, even though there were none in GSC
- Charcoal guy is there with Farfetch'd
  - Gives the Cut HM
  - You need Hive Badge to use it
- Maybe add wild Pikachu to the forest


========
ROUTE 34
========
- Generic trainers
  - Officer battles any time of day, not just at night
- Day Care
  - Proper breeding, or RPP3 breeding
  - Show your pokemon outside the daycare either way
    - This will take up both "Still Sprite" slots, so no itemballs or berry trees can be here or in goldenrod!
- Remember the back area you surf to with cooltrainer girls down there


==============
GOLDENROD CITY
==============
- Add a museum
  - Fossil lab inside
  - Fossil sprites on the displays here
- Magnet Train does not work, you cannot go to Kanto
- Whitney gives the badge right away, instead of you having to try and leave first
- Bill is already in his house and gives the Eevee without having to go to Ecruteak
  - Reuse the script from RB to show the Eeveelutions on a PC in his house too
- Dept Store sells the stones and pokedolls like the celadon one did
  - Also has a trade for machop
- Bike Shop
  - Does not need bike voucher?
- Game Corner
- Name Rater
- Flower Shop
  - Get pokeflute after whitney
- Trainers and shops in the underground
  - Coin Case in the underground


=============
ROUTE 35 & 36
=============
- Generic trainers
- berry trees
- Snorlax instead of Sudowoodo
  - base it on one of the existing snorlax events
  - sudowoodo will be a trade later
- grass with wild pokemon on the violet city side, like in crystal


=============
NATIONAL PARK
=============
- No bug catching contest, probably
- Generic trainers and wild pokemon
  - Bug Catchers, Youngsters, Lasses, Schoolkids, Teachers, Pokefans
- itemballs
- Someone with a meowth who gives an item
  - Can reference just about any item giver NPC
  - TODO: decide which item, idk if held items will be a thing
- Maybe one of the gatehouses has 2 floors, and binoculars, and Elm's Aide
  - Elm's Aide can give the Silph Scope 2


========
ROUTE 37
========
- Generic trainers
- Berry trees


=============
ECRUTEAK CITY
=============
- Dance Hall
  - Kimono Girls
  - Get Surf for beating all of them
  - Need Fog Badge to use it
- Someone in the pokecenter reuses the Magikarp salesman script with a different pokemon
- Morty's gym can have the same gimmick as GSC
  - its just a bunch of warps, and duplicate all black tiles with different collision after all
- Simplify the sage that blocks you from going to bellchime trail
  - Instead of him moving side to side to block you, just have him do the normal thing and yell at you and step you down
- Battle trainers between Ecruteak and the trail like crystal
- Rival battle in Burned Tower
  - Look at the other rival battles as a reference
- Hopefully add roaming pokemon
  - If that doesn't work, come up with something else for burned tower, and have the dogs be standing encounters
- Guard in the gate headed to Mahogany will not let you past at first
  - Claims there has been a rockslide or something that needs to be cleared
  - Should be a simple enough script, like we did in Littleroot originally in Hoenn GB


==========
BELL TOWER
==========
- Ho-oh at the top as a static encounter
  - Need the wing for a sage to disappear and let you go up
- Can reuse the same puzzle as GS, since I can make other tilesets have jump ledges now

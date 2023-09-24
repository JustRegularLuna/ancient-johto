=============
GENERAL STUFF
=============
- There is no pokegear, and no phone calls
- Kanto Pokecenters will use the Gen 1 layout but with Gen 2 tiles
- Johto Pokecenters will use the Gen 2 layout, except with a bench guy and only one link nurse upstairs
- Kanto Marts will use the Gen 1 layout with Gen 2 tiles
- Johto Marts will use the Gen 2 layout
- Most Kanto maps will be the same layout as Gen 1
  - Some maps will be adjusted due to the passage of time
  - No maps will be shrunken down like vanilla GSC did
  - Safari Zone will still exist, etc
- Most Johto map layouts will be basically the same as Gold
  - Some map layouts may be adjusted if I have to for technical reasons
  - Rocket Hideout may be adjusted to have spinner tile puzzles
  - Some areas may be expanded to flesh them out better
- Some things will be adjusted to force a certain order in the mid game, to help plan the level curve
- Need to look into adding custom pokeballs, and decide if Apricorns will exist, or only Berries
- All GSC and RBY trainer classes should be present
- Use GSC overworld sprites, with any unique Gen 1 sprites that are needed included as well


=====
INTRO
=====
- Are you a boy or a girl? (Hiro or Kris)
- New text similar to GS but different
- Keep naming your rival in the intro
- Like RPP3, make it so you can press OK without typing a name, and it defaults to GOLD or SILVER
  - Also add an "Is it <PLAYER>?" confirmation after putting in name, like RPP3


=============
NEW BARK TOWN
=============
- Player's House looks like G/S, but just has RB events with new text
  - Keep it so Mom heals you like RBY
- Generic NPC houses for the other houses
- Dress lady catches you at the exit and drags you back to her spot
- Elm's lab works similar to Gen 2
  - No heal machine, just talk to your mom
  - Choose a starter, see pokedex data like Gen 1
  - Rival will steal a starter while you are picking up the thing from Mr. Pokemon
  - No cop event
  - Receive pokeballs from Aide after delivering parcel
  - Receive SS Ticket after E4


========
ROUTE 29
========
- Berry tree and generic npcs
- Dude showing how to catch Pokemon based on the old man battle
  - He is always there, but the script needs to check if you have the pokedex yet


================
CHERRYGROVE CITY
================
- Guide Gent in his house, giving the Town Map
- Mart checks if you have delivered parcel or not to know which mart inventory to load
  - Look at Viridian Mart as an example of loading different event text lists
- Mystic Water NPC gives a Kings Rock instead


=============
ROUTE 30 & 31
=============
- NPC blocking the lefthand path at first
  - Change it so Elm's Lab script hides him, the same way it hid the old man
- Mr. Pokemon's house script based on the Viridian Mart
  - Elm's Parcel instead of Oaks Parcel
  - Oak gives pokedex here
- Trainer Battles start here
  - Keep one as a Youngster and his Top Percentage Rattata
  - Other can be bugcatchers, lasses, etc. early game stuff
- Berry Trees and a house talking about Berries
  - Based on the Badge info house from Cerulean, and the way I edited it in RPP3
  - Put text on his TV so he is watching Fast Times at Ridgemont High lol


=========
DARK CAVE
=========
- Can keep the same layout, I can add jump ledges to other tilesets now
- Look at the way Rock Tunnel works, so that it needs flash
  - Dark Cave has 2 maps, both need to require flash


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
- Reference one of the Pewter City guys to walk you to the School if you say you don't know stuff
- NPC stops you from leaving early


============
SPROUT TOWER
============
- Make sure to port the animation for the pillar tiles
- Random itemballs
- Lots of generic trainers
  - Sages, maybe a Medium or Channeller here and there too
- Gastly do not require Silph Scope, they are just normal encounters
- Rival Battle at the top, maybe based on the code for the one beside Viridian, or the one at cerulean
- Battle the Elder and get Flash
  - You need Zephyr Badge to use it


=============
RUINS OF ALPH
=============
- Ruins are extended a bit from GS with more to explore
- Generic trainers inside
  - Scientists, Etc.
- "Ghosts" appeared in the ruins
  - Need the Silph Scope 2 in order to identify them
    - TODO: Decide where to get it
  - Reuse some scripts from Pokeon Tower, obviously
  - Actually the Unown distorting the perception of people to scare them away
  - Find the GS Ball at the end of the Ruins sideplot
- Fossils are found outside somewhere here
  - Make them work like itemballs instead of choosing just one


========
ROUTE 32
========
- TM guy
  - TODO: Decide which TM
- Generic trainers
  - Fishermen, campers, etc
- Old Rod guy in Pokecenter
  - Base his script on any generic gift item NPC


==========
UNION CAVE
==========
- Generic trainers
  - Hikers, pokemaniacs, firebreathers, etc
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
  - Maybe look at the rocket in cerulean for a script reference for the end of the rocket event
- Itemballs in the lower level
- NPC who gives an item on lower level too


===========
ILEX FOREST
===========
- Need cut to progress
- Can keep the same layout, I can add jump ledges to more tilesets now
- Celebi Shrine
  - Get the GS Ball later once you can explore the Ruins of Alph
- Generic trainers, even though there were none in GSC
  - Bugcatchers, Youngsters, Lasses, Campers, Picnickers, etc?
- Charcoal guy is there with Farfetch'd
  - Gives the Cut HM
  - You need Hive Badge to use it
- Maybe add wild Pikachu to the forest, because Viridian had them.


========
ROUTE 34
========
- Generic trainers
  - Officer battles any time of day, not just at night
  - Pokefans, Tamers, Etc
- Day Care
  - Proper breeding, or RPP3 breeding
  - Show your pokemon outside the daycare either way
    - This will take up both "Still Sprite" slots, so no itemballs or berry trees can be here or in goldenrod!
- Remember the back area you surf to with cooltrainer girls down there


==============
GOLDENROD CITY
==============
- Whitney gives the badge right away, instead of you having to try and leave first
- Bill is already in his house and gives the Eevee without having to go to Ecruteak
  - I guess reference the Lapras giver in Silph Co's script
  - Reuse the script from Bills House in RB to show the Eeveelutions on a PC in his house too
- Dept Store sells the stones and pokedolls like the celadon one did
  - Also has a trade for machop
- Bike Shop
  - Does not need bike voucher?
- Game Corner
- Name Rater
- Flower Shop
  - Get pokeflute after whitney
- Trainers and shops in the underground
  - Pokemaniacs and stuff
- Coin Case in the underground
- Maybe replace the rocket area in the underground and its confusing door switch puzzle and stuff with a different area
  - Would replace the basement to the dept store, too
  - Probably use one of the other buildings that didnt have a door originally for something new


===========
RADIO TOWER
===========
- No quiz for a radiocard, since there is no pokegear
- Reference Silph Co scripts for the rocket takeover
  - A lot of generic rocket trainers
  - Card Key is less complicated since it only has to open one door
  - Can't do Blackthorn until you get rid of the rockets here
- Rival battle during Rocket event


=============
ROUTE 35 & 36
=============
- Generic trainers
  - juggler, firebreather, picnicker and campers, psychic, etc
- berry trees
- Snorlax instead of Sudowoodo
  - base it on one of the existing snorlax events
  - sudowoodo will be a trade later
- grass with wild pokemon on the violet city side, like in crystal


=============
NATIONAL PARK
=============
- No bug catching contest, probably
  - Might be worth looking into, but not a requirement imo
- Generic trainers and wild pokemon
  - Bug Catchers, Youngsters, Lasses, Schoolkids, Teachers, Pokefans
- itemballs
- That woman who gives you an item and has a Meowth or Persian or something sat beside her on the bench
  - Can reference just about any item giver NPC
  - TODO: decide which item, idk if held items will be a thing
- Maybe one of the gatehouses has 2 floors, and binoculars, and Elm's Aide
  - TODO: decide his gift


========
ROUTE 37
========
- Generic trainers
  - Maybe a channeler near the top
  - I dont remember what kind of trainers were here in GSC. Twins and some other stuff I think.
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
  - Can reference the lying old man in viridian
- Battle the Wise Trio between Ecruteak and the trail like Crystal
- Rival battle in Burned Tower
  - Look at the other rival battles as a reference
  - Require exploring this area for Ecruteak gym I think
    - Maybe the gym door is locked, and you need to find the key like cinnabar?
	- Maybe someone is just blocking the door?
  - Hopefully add roaming pokemon
    - If that doesn't work, come up with something else for burned tower, and have the dogs be standing encounters
    - Could just have someone mention the pokemon that were here, and have a rare item at the bottom or something
	- Suicune, Entei, and Raikou could be normal Standing Pokemon in areas you just can't get to before this
- Guard in the gate headed to Mahogany will not let you past at first
  - Claims there has been a rockslide or something that needs to be cleared
  - Should be a simple enough script, like we did in Littleroot originally in Hoenn GB
  - Will let you through after you have done the events in Cianwood and Olivine
- Possibly add an Agatha cameo somewhere in Ecruteak


==========
BELL TOWER
==========
- Ho-oh at the top as a static encounter
  - Need the wing for a sage to disappear and let you go up
- Tower inside can reuse the same puzzle as GS, since I can make other tilesets have jump ledges now


========
ROUTE 38
========
- Generic trainers
  - Sailors, Beauties, Lasses, Birdkeepers, etc
- Berry tree


========
ROUTE 39
========
- Miltank farm
  - Maybe just sells Moo Moo milk and has the TM as a gift, without the miltank needing berries thing
- Berry trees
  - The Miltank and the Berry Tree sprites will take up both "Still Sprite" slots for this spriteset
- Generic trainers
  - Sailors, Pokefans


============
OLIVINE CITY
============
- Gym is closed at first
  - Probably say the door is locked, like Viridian Gym, while Jasmine is away
    - As screwy as hide/show is, I can see it being a headache trying to hide and unhide jasmine a lot
- Try to still do the Lighthouse quest
  - Maybe have Team Rocket at the lighthouse?
    - Trying to keep the ship in port so that they can steal something it is carrying?
  - Jasmine at the top with Amphy (and rockets? like with Mr Fuji at Pokemon Tower?)
  - Need to give her Secretpotion for Amphy


========
ROUTE 40
========
- Generic trainers
  - Swimmers
- Maybe add Battle Tower at the north, but that might be too much to pull off, idk yet


========
ROUTE 41
========
- Generic trainers
  - Swimmers
- Try to keep the whirlpools, I will try to add them as a field move, by referencing how CUT works


=============
WHIRL ISLANDS
=============
- Try to keep the same layout, hopefully I can make Waterfalls work
- Lugia at the bottom


=============
CIANWOOD CITY
=============
- Reference Viridian Pokemart scripts again for the Secretpotion / Shop at different times
- NPC who gives Fly HM
- Maybe another one of Elm's aides here
- Gym can keep the same basic strength puzzle, but leave out Chuck throwing stuff around
- Maybe have a move tutor who can teach Pikachu to surf?


========
ROUTE 42
========
- Accessible once you have done Cianwood and Olivine
- Generic trainers
  - Fishermen, Hikers, Pokemaniacs
- Berry trees, itemballs


==========
MT. MORTAR
==========
- Should be able to keep the same layout, if I get Waterfall working
- Keep the karate master and the gift Tyrogue
- Generic trainers
  - Hikers, Supernerds, etc
- Still an optional cave


=============
MAHOGANY TOWN
=============
- Some guy blocking the gym again
  - Goes away after the Red Gyarados event
- Gym can keep the same puzzle, hopefully I'll get ice sliding to work
- Some guy blocking the exit leading to Ice Path
  - Goes away after rockets are gone
- Maybe have the rocket hideout have a secret switch like the gamecorner instead of lance doing it
  - Redesign the rocket hideout a bit to use spinner tiles maybe
  - Look at the power plant for making the voltorbs in case there is anything weird about them
  - Have them mention the radio tower when you clear out the hideout, since no phone calls


========
ROUTE 43
========
- Generic Trainers
  - Pokemaniacs and stuff
- Gatehouse with Rockets in like before


============
LAKE OF RAGE
============
- Red Gyarados
- House with a TM gift in the top corner
- Do not try to port the magikarp guru, put something else there
  - TODO: Figure out something to put there
- Not sure what I can reference for the stuff with Lance, might have to wing it


========
ROUTE 44
========
- Generic trainers
  - Fishermen and cooltrainers and stuff
- Berry trees


========
ICE PATH
========
- Try to port ice sliding to keep the same layout
- Look at Seafoam Islands to figure out how to push boulders through holes and have them fall through
- Generic Trainers
  - Skiers, Boarders, Hikers, etc
- Itemballs


===============
BLACKTHORN CITY
===============
- Move Deleter and Move Reminder
- Try to reference Seafoam Islands scripts for pushing boulders through holes in the gym
  - Can't go into Dragons Den before the badge
- I think there was a trade here


============
DRAGON'S DEN
============
- Shrine with dragon elders and a gift Dratini for doing a quiz


=============
ROUTE 45 & 46
=============
- Generic Trainers
- Itemballs
- Berry Trees


========
ROUTE 27
========
- Generic trainers
- Itemballs
- Berry trees


===========
TOHJO FALLS
===========
- Try to keep the same layout


========
ROUTE 26
========
- Generic Trainers
- Itemballs
- Berry trees
- Gate has Gen 2 style badge check, and 3-way gate (for Mt. Silver)


============
VICTORY ROAD
============
- Same layout as Gen 1 maybe
- Rival battle


==============
INDIGO PLATEAU
==============
- Will
- Koga
- Bruno
- Karen
- Lance


========
ROUTE 28
========
- Pokecenter, not much else
- Connects to badge check gate


==========
MT. SILVER
==========
- Still battle Red at the top





TODO:
- Locations for Mewtwo, Mew, Articuno, Zapdos, Moltres
- Make sure there are actually enough maps for all of this already
- Look for things I forgot to include
- Include appearances by other Gen 1 characters such as Blue, Lorelei, etc

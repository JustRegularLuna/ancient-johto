MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 132, 100, SilentHillsName
	landmark 116, 100, Route1Name
	landmark 100, 100, SakuraTownName
	landmark 100,  84, Route2Name
	landmark 100,  68, EvergreenWoodsName
	landmark  92,  60, Route3Name
	landmark 108,  52, DimCaveName
	landmark  76,  60, BellflowerCityName
	landmark  76,  62, BellTowerName
	landmark  76,  84, Route4Name
	landmark  68,  68, AncientRuinsName
	landmark  76, 100, LinkingCaveName
	landmark  76, 116, RainmakerWellName
	landmark  76, 124, CypressTownName
	landmark  68, 124, Route5Name
	landmark  60, 124, CypressMarshName
	landmark  44, 124, BegoniaTownName
	landmark  44, 108, Route6Name
	landmark  44,  92, MarigoldCityName
	landmark  42,  90, RadioTowerName
	landmark  44,  76, Route7Name
	landmark  44,  60, PowerPlantName
	landmark  60,  60, Route8Name
	landmark  60,  52, Route9Name
	landmark  60,  44, MapleCityName
	landmark  58,  44, BrassTowerName
	landmark  62,  42, TinTowerName
	landmark  44,  44, Route10Name
	landmark  28,  48, Route11Name
	landmark  28,  60, AzureMistCityName
	landmark  26,  58, AquariumName
	landmark  26,  62, LighthouseName
	landmark  28,  76, Route12Name
	landmark  36,  92, Route13Name
	landmark  28,  92, WhirlpoolCaveName
	landmark  24, 100, Route14Name
	landmark  12, 100, NationalParkName
	landmark  76,  44, Route15Name
	landmark  84,  44, CedarFallsName
	landmark 100,  44, CedarTownName
	landmark 100,  36, Route16Name
	landmark 100,  28, RedwoodTownName
	landmark 112,  44, Route17Name
	landmark 124,  44, EbongroveCityName
	landmark 126,  42, DragonShrineName
	landmark 124,  68, Route18Name
	landmark 116,  84, Route19Name
	landmark 148, 100, Route20Name
	landmark 148,  84, Route21Name
	landmark 148,  76, HauntedHouseName
	landmark 148,  68, WindingPathName
	landmark 148,  60, VictoryRoadName
	landmark 148,  52, SilverCityName
	assert_table_length KANTO_LANDMARK
	landmark  52, 100, PalletTownName
	landmark  52,  88, Route1Name
	landmark  52,  76, ViridianCityName
	landmark  52,  68, Route2Name
	landmark  52,  60, ViridianForestName
	landmark  52,  44, PewterCityName
	landmark  68,  44, Route3Name
	landmark  76,  44, MtMoonName
	landmark  92,  44, Route4Name
	landmark 108,  44, CeruleanCityName
	landmark 108,  36, Route24Name
	landmark 116,  28, Route25Name
	landmark 108,  52, Route5Name
	landmark 108,  62, UndergroundPathName
	landmark 108,  68, Route6Name
	landmark 108,  76, VermilionCityName
	landmark 116,  68, DiglettsCaveName
	landmark  96,  60, Route7Name
	landmark 124,  60, Route8Name
	landmark 124,  44, Route9Name
	landmark 140,  44, RockTunnelName
	landmark 140,  52, Route10Name
	landmark 148,  52, PowerPlantName
	landmark 140,  60, LavenderTownName
	landmark 142,  58, PokemonTowerName
	landmark  84,  60, CeladonCityName
	landmark 108,  60, SaffronCityName
	landmark 108,  58, SilphCoName
	landmark 124,  76, Route11Name
	landmark 140,  76, Route12Name
	landmark 132,  92, Route13Name
	landmark 124, 100, Route14Name
	landmark 108, 108, Route15Name
	landmark  76,  60, Route16Name
	landmark  76,  84, Route17Name
	landmark  84, 108, Route18Name
	landmark  92, 108, FuchsiaCityName
	landmark  92, 100, SafariZoneName
	landmark  92, 124, Route19Name
	landmark  76, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  50, 130, PokemonMansionName
	landmark  52, 120, Route21Name
	landmark  36,  76, Route22Name
	landmark  28,  60, Route23Name
	landmark  28,  52, VictoryRoadName
	landmark  28,  36, IndigoPlateauName
	landmark 100,  36, CeruleanCaveName
	landmark 140, 116, FastShipName
	assert_table_length NUM_LANDMARKS

; Special Names
SpecialMapName:      db "SPECIAL@"
FastShipName:        db "FAST SHIP@"
; Kansai City Names
SilentHillsName:     db "SILENT<BSP>HILLS@"
SakuraTownName:      db "SAKURA TOWN@"
BellflowerCityName:  db "BELLFLOWER<BSP>CITY@"
CypressTownName:     db "CYPRESS<BSP>TOWN@"
BegoniaTownName:     db "BEGONIA<BSP>TOWN@"
MarigoldCityName:    db "MARIGOLD<BSP>CITY@"
MapleCityName:       db "MAPLE CITY@"
AzureMistCityName:   db "AZURE MIST<BSP>CITY@"
CedarTownName:       db "CEDAR TOWN@"
RedwoodTownName:     db "REDWOOD<BSP>TOWN@"
EbongroveCityName:   db "EBONGROVE<BSP>CITY@"
SilverCityName:      db "SILVER CITY@"
; Kanto City Names
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN<BSP>CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN<BSP>CITY@"
LavenderTownName:    db "LAVENDER<BSP>TOWN@"
VermilionCityName:   db "VERMILION<BSP>CITY@"
CeladonCityName:     db "CELADON<BSP>CITY@"
SaffronCityName:     db "SAFFRON<BSP>CITY@"
FuchsiaCityName:     db "FUCHSIA<BSP>CITY@"
CinnabarIslandName:  db "CINNABAR<BSP>ISLAND@"
IndigoPlateauName:   db "INDIGO<BSP>PLATEAU@"
; POI Names
EvergreenWoodsName:  db "EVERGREEN<BSP>WOODS@"
DimCaveName:         db "DIM CAVE@"
BellTowerName:       db "BELL TOWER@"
AncientRuinsName:    db "ANCIENT<BSP>RUINS@"
LinkingCaveName:     db "LINKING<BSP>CAVE@"
CypressMarshName:    db "CYPRESS<BSP>MARSH@"
RainmakerWellName:   db "RAINMAKER<BSP>WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
BrassTowerName:      db "BRASS TOWER@"
TinTowerName:        db "TIN TOWER@"
AquariumName:        db "AQUARIUM@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlpoolCaveName:   db "WHIRLPOOL<BSP>CAVE@"
NationalParkName:    db "NATIONAL<BSP>PARK@"
CedarFallsName:      db "CEDAR FALLS@"
DragonShrineName:    db "DRAGON<BSP>SHRINE@"
HauntedHouseName:    db "HAUNTED<BSP>HOUSE@"
WindingPathName:     db "WINDING<BSP>PATH@"
VictoryRoadName:     db "VICTORY<BSP>ROAD@"
ViridianForestName:  db "VIRIDIAN<BSP>FOREST@"
DiglettsCaveName:    db "DIGLETT's<BSP>CAVE@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
PokemonTowerName:    db "#MON<BSP>TOWER@"
UndergroundPathName: db "UNDERGROUND<BSP>PATH@"
SilphCoName:         db "SILPH CO.@"
SafariZoneName:      db "SAFARI ZONE@"
SeafoamIslandsName:  db "SEAFOAM<BSP>ISLANDS@"
PokemonMansionName:  db "#MON<BSP>MANSION@"
CeruleanCaveName:    db "CERULEAN<BSP>CAVE@"
; Shared Route Names
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"

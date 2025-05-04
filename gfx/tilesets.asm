MACRO tilecoll
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

TilesetKantoMeta::
INCBIN "data/tilesets/kanto_metatiles.bin"

TilesetKantoColl::
INCLUDE "data/tilesets/kanto_collision.asm"

Tileset0GFX::
TilesetSilentGFX::
INCBIN "gfx/tilesets/silent.2bpp.lz"

Tileset0Meta::
TilesetSilentMeta::
INCBIN "data/tilesets/silent_metatiles.bin"

Tileset0Coll::
TilesetSilentColl::
INCLUDE "data/tilesets/silent_collision.asm"

TilesetBellflowerGFX::
INCBIN "gfx/tilesets/bellflower.2bpp.lz"

TilesetBellflowerMeta::
INCBIN "data/tilesets/bellflower_metatiles.bin"

TilesetBellflowerColl::
INCLUDE "data/tilesets/bellflower_collision.asm"

TilesetTraditionalHouseGFX::
INCBIN "gfx/tilesets/traditional_house.2bpp.lz"

TilesetTraditionalHouseMeta::
INCBIN "data/tilesets/traditional_house_metatiles.bin"

TilesetTraditionalHouseColl::
INCLUDE "data/tilesets/traditional_house_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"

TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"

TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

TilesetPokecenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"

TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

TilesetPortGFX::
INCBIN "gfx/tilesets/port.2bpp.lz"

TilesetPortMeta::
INCBIN "data/tilesets/port_metatiles.bin"

TilesetPortColl::
INCLUDE "data/tilesets/port_collision.asm"

TilesetPlayersHouseGFX::
INCBIN "gfx/tilesets/players_house.2bpp.lz"

TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin"

TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

TilesetMansionGFX::
INCBIN "gfx/tilesets/mansion.2bpp.lz"

TilesetMansionMeta::
INCBIN "data/tilesets/mansion_metatiles.bin"

TilesetMansionColl::
INCLUDE "data/tilesets/mansion_collision.asm"

TilesetKansaiCaveGFX::
INCBIN "gfx/tilesets/kansai_cave.2bpp.lz"

TilesetKansaiCaveMeta::
TilesetKansaiDarkCaveMeta::
INCBIN "data/tilesets/kansai_cave_metatiles.bin"

TilesetKansaiCaveColl::
TilesetKansaiDarkCaveColl::
INCLUDE "data/tilesets/kansai_cave_collision.asm"


SECTION "Tileset Data 3", ROMX

TilesetTowerGFX::
INCBIN "gfx/tilesets/tower.2bpp.lz"

TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin"

TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"

TilesetSchoolGFX::
INCBIN "gfx/tilesets/school.2bpp.lz"

TilesetSchoolMeta::
INCBIN "data/tilesets/school_metatiles.bin"

TilesetSchoolColl::
INCLUDE "data/tilesets/school_collision.asm"

TilesetLabGFX::
INCBIN "gfx/tilesets/lab.2bpp.lz"

TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin"

TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"

TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"

TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"

TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

TilesetGameCornerGFX::
INCBIN "gfx/tilesets/game_corner.2bpp.lz"

TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin"

TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"

TilesetTrainStationGFX::
INCBIN "gfx/tilesets/train_station.2bpp.lz"

TilesetTrainStationMeta::
INCBIN "data/tilesets/train_station_metatiles.bin"

TilesetTrainStationColl::
INCLUDE "data/tilesets/train_station_collision.asm"

TilesetKansaiForestMeta::
INCBIN "data/tilesets/kansai_forest_metatiles.bin"


SECTION "Tileset Data 4", ROMX

TilesetEliteFourRoomGFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetKansaiParkGFX::
INCBIN "gfx/tilesets/kansai_park.2bpp.lz"

TilesetKansaiParkMeta::
INCBIN "data/tilesets/kansai_park_metatiles.bin"

TilesetKansaiParkColl::
INCLUDE "data/tilesets/kansai_park_collision.asm"

TilesetRuinsGFX::
INCBIN "gfx/tilesets/ruins.2bpp.lz"

TilesetRuinsMeta::
INCBIN "data/tilesets/ruins_metatiles.bin"

TilesetRuinsColl::
INCLUDE "data/tilesets/ruins_collision.asm"

TilesetRadioTowerGFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.lz"

TilesetRadioTowerMeta::
INCBIN "data/tilesets/radio_tower_metatiles.bin"

TilesetRadioTowerColl::
INCLUDE "data/tilesets/radio_tower_collision.asm"

TilesetWarehouseGFX::
INCBIN "gfx/tilesets/warehouse.2bpp.lz"

TilesetWarehouseMeta::
INCBIN "data/tilesets/warehouse_metatiles.bin"

TilesetWarehouseColl::
INCLUDE "data/tilesets/warehouse_collision.asm"

TilesetIceCaveGFX::
INCBIN "gfx/tilesets/ice_cave.2bpp.lz"

TilesetIceCaveMeta::
INCBIN "data/tilesets/ice_cave_metatiles.bin"

TilesetIceCaveColl::
INCLUDE "data/tilesets/ice_cave_collision.asm"

TilesetKansaiDarkCaveGFX::
INCBIN "gfx/tilesets/kansai_dark_cave.2bpp.lz"

TilesetKansaiForestGFX::
INCBIN "gfx/tilesets/kansai_forest.2bpp.lz"


SECTION "Tileset Data 5", ROMX

TilesetChampionsRoomGFX::
INCBIN "gfx/tilesets/champions_room.2bpp.lz"

TilesetChampionsRoomMeta::
INCBIN "data/tilesets/champions_room_metatiles.bin"

TilesetChampionsRoomColl::
INCLUDE "data/tilesets/champions_room_collision.asm"

TilesetHouseGFX::
INCBIN "gfx/tilesets/house.2bpp.lz"

TilesetHouseMeta::
INCBIN "data/tilesets/house_metatiles.bin"

TilesetHouseColl::
INCLUDE "data/tilesets/house_collision.asm"

TilesetShipGFX::
INCBIN "gfx/tilesets/ship.2bpp.lz"

TilesetShipMeta::
INCBIN "data/tilesets/ship_metatiles.bin"

TilesetShipColl::
INCLUDE "data/tilesets/ship_collision.asm"

TilesetPlayersRoomGFX::
INCBIN "gfx/tilesets/players_room.2bpp.lz"

TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin"

TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"

TilesetKansaiForestColl::
INCLUDE "data/tilesets/kansai_forest_collision.asm"


SECTION "Tileset Data 6", ROMX

TilesetKantoGFX::
INCBIN "gfx/tilesets/kanto.2bpp.lz"

TilesetClubGFX::
INCBIN "gfx/tilesets/club.2bpp.lz"

TilesetClubMeta::
INCBIN "data/tilesets/club_metatiles.bin"

TilesetClubColl::
INCLUDE "data/tilesets/club_collision.asm"

TilesetKansaiMuseumGFX::
INCBIN "gfx/tilesets/kansai_museum.2bpp.lz"

TilesetKansaiMuseumMeta::
INCBIN "data/tilesets/kansai_museum_metatiles.bin"

TilesetKansaiMuseumColl::
INCLUDE "data/tilesets/kansai_museum_collision.asm"

TilesetKantoMuseumGFX::
INCBIN "gfx/tilesets/kanto_museum.2bpp.lz"

TilesetKantoMuseumMeta::
INCBIN "data/tilesets/kanto_museum_metatiles.bin"

TilesetKantoMuseumColl::
INCLUDE "data/tilesets/kanto_museum_collision.asm"

TilesetKantoCaveGFX::
INCBIN "gfx/tilesets/kanto_cave.2bpp.lz"

TilesetKantoCaveMeta::
INCBIN "data/tilesets/kanto_cave_metatiles.bin"

TilesetKantoCaveColl::
INCLUDE "data/tilesets/kanto_cave_collision.asm"

TilesetKantoForestGFX::
INCBIN "gfx/tilesets/kanto_forest.2bpp.lz"

TilesetKantoForestMeta::
INCBIN "data/tilesets/kanto_forest_metatiles.bin"

TilesetKantoForestColl::
INCLUDE "data/tilesets/kanto_forest_collision.asm"


SECTION "Tileset Data 7", ROMX

TilesetKantoParkGFX::
INCBIN "gfx/tilesets/kanto_park.2bpp.lz"

TilesetKantoParkMeta::
INCBIN "data/tilesets/kanto_park_metatiles.bin"

TilesetKantoParkColl::
INCLUDE "data/tilesets/kanto_park_collision.asm"

TilesetCemeteryGFX::
INCBIN "gfx/tilesets/cemetery.2bpp.lz"

TilesetCemeteryMeta::
INCBIN "data/tilesets/cemetery_metatiles.bin"

TilesetCemeteryColl::
INCLUDE "data/tilesets/cemetery_collision.asm"

TilesetFacilityGFX::
INCBIN "gfx/tilesets/facility.2bpp.lz"

TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin"

TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"

TilesetGeneratorGFX::
INCBIN "gfx/tilesets/generator.2bpp.lz"

TilesetGeneratorMeta::
INCBIN "data/tilesets/generator_metatiles.bin"

TilesetGeneratorColl::
INCLUDE "data/tilesets/generator_collision.asm"

TilesetInteriorGFX::
INCBIN "gfx/tilesets/interior.2bpp.lz"

TilesetInteriorMeta::
INCBIN "data/tilesets/interior_metatiles.bin"

TilesetInteriorColl::
INCLUDE "data/tilesets/interior_collision.asm"


SECTION "Tileset Data 8", ROMX

TilesetPlateauGFX::
INCBIN "gfx/tilesets/plateau.2bpp.lz"

TilesetPlateauMeta::
INCBIN "data/tilesets/plateau_metatiles.bin"

TilesetPlateauColl::
INCLUDE "data/tilesets/plateau_collision.asm"

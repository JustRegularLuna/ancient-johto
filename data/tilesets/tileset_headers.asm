MACRO tileset
	db BANK(\2)   ; BANK(GFX)
	dw \1, \2, \3 ; Block, GFX, Coll
	db \4, \5, \6 ; counter tiles
	db \7         ; grass tile
	db \8         ; animations (TILEANIM_* value)
ENDM

; see engine/gfx/tileset_anim.asm for proper animation data definitions

Tilesets:
	table_width 12, Tilesets
	; block, gfx, coll, 3 counter tiles, grass tile, animations
	tileset Overworld_Block,        Overworld_GFX,        Overworld_Coll,        $FF,$FF,$FF, $52, TILEANIM_LIST
	tileset PlayersHouse_Block,     PlayersHouse_GFX,     PlayersHouse_Coll,     $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Mart_Block,             Mart_GFX,             Mart_Coll,             $12,$14,$25, $FF, TILEANIM_NONE
	tileset Forest_Block,           Forest_GFX,           Forest_Coll,           $FF,$FF,$FF, $20, TILEANIM_LIST
	tileset PlayersRoom_Block,      PlayersRoom_GFX,      PlayersRoom_Coll,      $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Pokecenter_Block,       Pokecenter_GFX,       Pokecenter_Coll,       $24,$FF,$FF, $FF, TILEANIM_NONE
	tileset Gym_Block,              Gym_GFX,              Gym_Coll,              $3A,$FF,$FF, $FF, TILEANIM_LIST
	tileset House_Block,            House_GFX,            House_Coll,            $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Museum_Block,           Museum_GFX,           Museum_Coll,           $17,$32,$FF, $FF, TILEANIM_NONE
	tileset Underground_Block,      Underground_GFX,      Underground_Coll,      $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Gate_Block,             Gate_GFX,             Gate_Coll,             $17,$32,$FF, $FF, TILEANIM_NONE
	tileset Ship_Block,             Ship_GFX,             Ship_Coll,             $FF,$FF,$FF, $FF, TILEANIM_LIST
	tileset ShipPort_Block,         ShipPort_GFX,         ShipPort_Coll,         $FF,$FF,$FF, $FF, TILEANIM_LIST
	tileset Cemetery_Block,         Cemetery_GFX,         Cemetery_Coll,         $12,$FF,$FF, $FF, TILEANIM_NONE
	tileset Interior_Block,         Interior_GFX,         Interior_Coll,         $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Cavern_Block,           Cavern_GFX,           Cavern_Coll,           $FF,$FF,$FF, $FF, TILEANIM_LIST
	tileset Lobby_Block,            Lobby_GFX,            Lobby_Coll,            $15,$36,$FF, $FF, TILEANIM_NONE
	tileset Mansion_Block,          Mansion_GFX,          Mansion_Coll,          $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Lab_Block,              Lab_GFX,              Lab_Coll,              $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Club_Block,             Club_GFX,             Club_Coll,             $07,$17,$FF, $FF, TILEANIM_NONE
	tileset Facility_Block,         Facility_GFX,         Facility_Coll,         $12,$FF,$FF, $FF, TILEANIM_LIST
	tileset Plateau_Block,          Plateau_GFX,          Plateau_Coll,          $FF,$FF,$FF, $45, TILEANIM_LIST
	tileset Johto_Block,            Johto_GFX,            Johto_Coll,            $FF,$FF,$FF, $04, TILEANIM_LIST
	tileset JohtoModern_Block,      JohtoModern_GFX,      JohtoModern_Coll,      $FF,$FF,$FF, $04, TILEANIM_LIST
	tileset JohtoCave_Block,        JohtoCave_GFX,        JohtoCave_Coll,        $FF,$FF,$FF, $FF, TILEANIM_LIST
	tileset TraditionalHouse_Block, TraditionalHouse_GFX, TraditionalHouse_Coll, $42,$FF,$FF, $FF, TILEANIM_NONE
	tileset EliteFourRoom_Block,    EliteFourRoom_GFX,    EliteFourRoom_Coll,    $FF,$FF,$FF, $FF, TILEANIM_LIST
	tileset Tower_Block,            Tower_GFX,            Tower_Coll,            $FF,$FF,$FF, $FF, TILEANIM_LIST
	tileset RuinsOfAlph_Block,      RuinsOfAlph_GFX,      RuinsOfAlph_Coll,      $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset JohtoForest_Block,      JohtoForest_GFX,      JohtoForest_Coll,      $FF,$FF,$FF, $FF, TILEANIM_LIST
	tileset Park_Block,             Park_GFX,             Park_Coll,             $FF,$FF,$FF, $04, TILEANIM_LIST
	tileset BikeTileset_Block,      BikeTileset_GFX,      BikeTileset_Coll,      $35,$07,$18, $FF, TILEANIM_NONE
	tileset IcePath_Block,          IcePath_GFX,          IcePath_Coll,          $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Lighthouse_Block,       Lighthouse_GFX,       Lighthouse_Coll,       $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset RadioTower_Block,       RadioTower_GFX,       RadioTower_Coll,       $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset TrainStation_Block,     TrainStation_GFX,     TrainStation_Coll,     $FF,$FF,$FF, $FF, TILEANIM_NONE
	tileset Hideout_Block,          Hideout_GFX,          Hideout_Coll,          $FF,$FF,$FF, $FF, TILEANIM_NONE
	assert_table_length NUM_TILESETS

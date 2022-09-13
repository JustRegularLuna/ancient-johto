; default hidden/shown objects for each map

MapHSPointers:
; entries correspond to map ids
	table_width 2, MapHSPointers
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw ChampionsRoomHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	dw NoHS
	assert_table_length NUM_MAPS
	dw -1 ; end

NoHS:
	db $FF, $FF, $FF

MissableObjects:
; entries correspond to HS_* constants (see constants/hide_show_constants)
	table_width 3, MissableObjects
; format: map id, object id, HIDE/SHOW

ChampionsRoomHS:
	db CHAMPIONS_ROOM, $02, HIDE

	db $FF, $01, SHOW ; end
	assert_table_length NUM_HS_OBJECTS + 1


JohtoMapHSPointers:
; entries correspond to map ids
	table_width 2, JohtoMapHSPointers
	dw NewBarkTownHS ; New Bark
	dw Route29HS ; Route 29
	dw JohtoNoHS ; Players House 1F
	dw JohtoNoHS ; Players House 2f
	dw JohtoNoHS ; New Bark House 1
	dw JohtoNoHS ; New Bark House 2
	dw JohtoNoHS ; Elm's Lab
	assert_table_length NUM_JOHTO_MAPS
	dw -1 ; end

JohtoNoHS:
	db $FF, $FF, $FF

JohtoMissableObjects:
; entries correspond to HS_* constants (see constants/hide_show_constants)
	table_width 3, JohtoMissableObjects
; format: map id, object id, HIDE/SHOW
NewBarkTownHS:
	db NEW_BARK_TOWN, $01, SHOW
Route29HS:
	db ROUTE_29, $01, SHOW
;end of list
	db $FF, $01, SHOW ; end
	assert_table_length NUM_JOHTO_HS_OBJECTS + 1

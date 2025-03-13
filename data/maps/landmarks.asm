MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark 128, 100, Route29Name
	landmark  52,  60, NationalParkName
	assert_table_length KANTO_LANDMARK
	landmark 140, 116, FastShipName
	assert_table_length NUM_LANDMARKS

SpecialMapName:      db "SPECIAL@"
NewBarkTownName:     db "NEW BARK<BSP>TOWN@"
Route29Name:         db "ROUTE 29@"
NationalParkName:    db "NATIONAL<BSP>PARK@"
FastShipName:        db "FAST SHIP@"

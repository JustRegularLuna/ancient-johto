KantoTreeMonPointerTable:
	table_width 2, KantoTreeMonPointerTable
	dw TreeMons1 ; PALLET_TOWN
	dw TreeMons1 ; VIRIDIAN_CITY
	dw TreeMons1 ; PEWTER_CITY
	dw TreeMons1 ; CERULEAN_CITY
	dw TreeMons1 ; LAVENDER_TOWN
	dw TreeMons1 ; VERMILION_CITY
	dw TreeMons1 ; CELADON_CITY
	dw TreeMons1 ; FUCHSIA_CITY
	dw TreeMons1 ; CINNABAR_ISLAND
	dw TreeMons1 ; INDIGO_PLATEAU
	dw TreeMons1 ; SAFFRON_CITY
	dw TreeMons1 ; unused map
	dw TreeMons1 ; ROUTE_1
	dw TreeMons1 ; ROUTE_2
	dw TreeMons1 ; ROUTE_3
	dw TreeMons1 ; ROUTE_4
	dw TreeMons1 ; ROUTE_5
	dw TreeMons1 ; ROUTE_6
	dw TreeMons1 ; ROUTE_7
	dw TreeMons1 ; ROUTE_8
	dw TreeMons1 ; ROUTE_9
	dw TreeMons1 ; ROUTE_10
	dw TreeMons1 ; ROUTE_11
	dw TreeMons1 ; ROUTE_12
	dw TreeMons1 ; ROUTE_13
	dw TreeMons1 ; ROUTE_14
	dw TreeMons1 ; ROUTE_15
	dw TreeMons1 ; ROUTE_16
	dw TreeMons1 ; ROUTE_17
	dw TreeMons1 ; ROUTE_18
	dw TreeMons1 ; ROUTE_19
	dw TreeMons1 ; ROUTE_20
	dw TreeMons1 ; ROUTE_21
	dw TreeMons1 ; ROUTE_22
	dw TreeMons1 ; ROUTE_23
	dw TreeMons1 ; ROUTE_24
	dw TreeMons1 ; ROUTE_25
	assert_table_length FIRST_INDOOR_MAP
	; Any Kanto map not in this list defaults to TreeMons1


KansaiTreeMonPointerTable:
	table_width 2, KansaiTreeMonPointerTable
	dw TreeMons1 ; SILENT_HILLS
	dw TreeMons1 ; SAKURA_TOWN
	dw TreeMons1 ; KANSAI_ROUTE_1
	dw TreeMons1 ; KANSAI_ROUTE_2
	dw TreeMons1 ; KANSAI_ROUTE_3
	assert_table_length FIRST_KANSAI_INDOOR_MAP
	; Any Kansai map not in this list defaults to TreeMons1


TreeMons1:
	db 5, PIDGEY
	db 5, PIDGEY
	db 5, PIDGEY
	db 5, PIDGEY
	db 5, PIDGEY
	db 5, PIDGEY
	db 5, PIDGEY
	db 5, PIDGEY
	db 5, PIDGEY
	db 5, PIDGEY


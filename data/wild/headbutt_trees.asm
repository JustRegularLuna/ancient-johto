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
	dw TreeMons1 ; ROUTE_26
	dw TreeMons1 ; KANTO_ROUTE_27
	assert_table_length FIRST_INDOOR_MAP
	; Any Kanto map not in this list defaults to TreeMons1


JohtoTreeMonPointerTable:
	table_width 2, JohtoTreeMonPointerTable
	dw TreeMons1 ; NEW_BARK_TOWN
	dw TreeMons1 ; CHERRYGROVE_CITY
	dw TreeMons1 ; VIOLET_CITY
	dw TreeMons1 ; RUINS_OF_ALPH_OUTSIDE
	dw TreeMons1 ; ROUTE_29
	dw TreeMons1 ; ROUTE_30
	dw TreeMons1 ; ROUTE_31
	dw TreeMons1 ; ROUTE_32
	dw TreeMons1 ; ROUTE_36
	dw TreeMons1 ; JOHTO_ROUTE_27
	assert_table_length FIRST_JOHTO_INDOOR_MAP
	; Any Johto map not in this list defaults to TreeMons1


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


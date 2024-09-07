FruitTreeItems:
; entries correspond to FRUITTREE_* constants
	table_width 1, FruitTreeItems
	db BERRY        ; KANSAI_ROUTE_1
	db PSNCUREBERRY ; KANSAI_ROUTE_2
	db BERRY        ; EVERGREEN_WOODS
	db MINT_BERRY   ; KANSAI_ROUTE_3
	assert_table_length NUM_FRUIT_TREES

; The add_hm and add_tm macros in constants/item_constants.asm simultaneously
; define constants for the item IDs and for the corresponding move values.

TechnicalMachines:
	table_width 1, TechnicalMachines

DEF n = 1
REPT NUM_TMS
IF n < 10
DEF MOVE_FOR_TM EQUS "TM0{d:n}_MOVE"
ELSE
DEF MOVE_FOR_TM EQUS "TM{d:n}_MOVE"
ENDC
	db MOVE_FOR_TM
PURGE MOVE_FOR_TM
DEF n = n + 1
ENDR
	assert_table_length NUM_TMS

DEF n = 1
REPT NUM_HMS
IF n < 10
DEF MOVE_FOR_HM EQUS "HM0{d:n}_MOVE"
ELSE
DEF MOVE_FOR_HM EQUS "HM{d:n}_MOVE"
ENDC
	db MOVE_FOR_HM
PURGE MOVE_FOR_HM
DEF n = n + 1
ENDR
	assert_table_length NUM_TM_HM

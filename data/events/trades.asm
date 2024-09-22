TradeMons:
; entries correspond to TRADE_FOR_* constants in constants/script_constants.asm
	table_width 3 + NAME_LENGTH + NAME_LENGTH, TradeMons
	;  give mon,   get mon,    dialog id,                 nickname,      OT name
	db KOTORA,     PIKACHU,    TRADE_DIALOGSET_HAPPY,     "SPARKY@@@@@", "LARRY@@@@@@" ; Evergreen Woods South Gate, 2F
	assert_table_length NUM_NPC_TRADES

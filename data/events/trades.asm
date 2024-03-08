TradeMons:
; entries correspond to TRADE_FOR_* constants in constants/script_constants.asm
	table_width 3 + NAME_LENGTH + NAME_LENGTH, TradeMons
	;  give mon,   get mon,    dialog id,                 nickname,      OT name
	db BELLSPROUT, ONIX,       TRADE_DIALOGSET_CASUAL,    "ROCKY@@@@@@", "KYLE@@@@@@@"
	assert_table_length NUM_NPC_TRADES

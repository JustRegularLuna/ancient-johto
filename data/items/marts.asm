Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2
	dw MartSakura
	dw MartSakuraDex
	dw MartBellflower
	assert_table_length NUM_MARTS

MartSakura:
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db -1 ; end

MartSakuraDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db -1 ; end

MartBellflower:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end

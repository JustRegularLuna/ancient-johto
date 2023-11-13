MACRO key_item_bits
_bit = 0
_byte = 0
REPT _NARG
_byte = _byte | ((\1) << _bit)
_bit = _bit + 1
IF _bit == 8
	db _byte
_byte = 0
_bit = 0
ENDC
SHIFT
ENDR
IF _bit > 0
	db _byte
ENDC
ENDM

KeyItemBitfield:
	table_width 1, KeyItemBitfield
	key_item_bits \
	FALSE, \ ; MASTER_BALL
	FALSE, \ ; ULTRA_BALL
	FALSE, \ ; GREAT_BALL
	FALSE, \ ; POKE_BALL
	FALSE, \ ; SAFARI_BALL
	FALSE, \ ; LINK_CABLE
	FALSE, \ ; MOON_STONE
	FALSE, \ ; SUN_STONE
	FALSE, \ ; FIRE_STONE
	FALSE, \ ; THUNDER_STONE
	FALSE, \ ; WATER_STONE
	FALSE, \ ; LEAF_STONE
	FALSE, \ ; DRAGON_SCALE
	FALSE, \ ; UP_GRADE
	FALSE, \ ; KINGS_ROCK
	FALSE, \ ; METAL_COAT
	FALSE, \ ; HAPPY_CHARM
	FALSE, \ ; ESCAPE_ROPE
	FALSE, \ ; REPEL
	FALSE, \ ; SUPER_REPEL
	FALSE, \ ; MAX_REPEL
	FALSE, \ ; OLD_AMBER
	FALSE, \ ; DOME_FOSSIL
	FALSE, \ ; HELIX_FOSSIL
	FALSE, \ ; NUGGET
	FALSE, \ ; BIG_NUGGET
	FALSE, \ ; PEARL
	FALSE, \ ; BIG_PEARL
	FALSE, \ ; STARDUST
	FALSE, \ ; STAR_PIECE
	FALSE, \ ; POKE_DOLL
	FALSE, \ ; ANTIDOTE
	FALSE, \ ; BURN_HEAL
	FALSE, \ ; ICE_HEAL
	FALSE, \ ; AWAKENING
	FALSE, \ ; PARLYZ_HEAL
	FALSE, \ ; FULL_HEAL
	FALSE, \ ; FULL_RESTORE
	FALSE, \ ; REVIVE
	FALSE, \ ; MAX_REVIVE
	FALSE, \ ; MAX_POTION
	FALSE, \ ; HYPER_POTION
	FALSE, \ ; SUPER_POTION
	FALSE, \ ; POTION
	FALSE, \ ; HP_UP
	FALSE, \ ; PROTEIN
	FALSE, \ ; IRON
	FALSE, \ ; CARBOS 
	FALSE, \ ; CALCIUM
	FALSE, \ ; RARE_CANDY
	FALSE, \ ; GUARD_SPEC
	FALSE, \ ; DIRE_HIT
	FALSE, \ ; X_ACCURACY
	FALSE, \ ; X_ATTACK
	FALSE, \ ; X_DEFEND
	FALSE, \ ; X_SPEED
	FALSE, \ ; X_SPECIAL
	FALSE, \ ; PP_UP
	FALSE, \ ; ETHER
	FALSE, \ ; MAX_ETHER
	FALSE, \ ; ELIXER
	FALSE, \ ; MAX_ELIXER
	FALSE, \ ; FRESH_WATER
	FALSE, \ ; SODA_POP
	FALSE, \ ; LEMONADE
	FALSE, \ ; MOOMOO_MILK
	FALSE, \ ; CAKE_OF_RAGE
	FALSE, \ ; BERRY
	FALSE, \ ; GOLD_BERRY
	FALSE, \ ; MYSTERYBERRY
	FALSE, \ ; PSNCUREBERRY
	FALSE, \ ; ICE_BERRY
	FALSE, \ ; BURNT_BERRY
	FALSE, \ ; MINT_BERRY
	FALSE, \ ; PRZCUREBERRY
	FALSE, \ ; MIRACLEBERRY
	FALSE, \ ; BITTER_BERRY
	FALSE, \ ; RED_APRICORN
	FALSE, \ ; YLW_APRICORN
	FALSE, \ ; BLU_APRICORN
	FALSE, \ ; GRN_APRICORN
	FALSE, \ ; PNK_APRICORN
	FALSE, \ ; WHT_APRICORN
	FALSE, \ ; BLK_APRICORN
	TRUE,  \ ; TOWN_MAP
	TRUE,  \ ; BICYCLE
	TRUE,  \ ; PASS
	TRUE,  \ ; SQUIRTBOTTLE
	TRUE,  \ ; CARD_KEY
	TRUE,  \ ; S_S_TICKET
	TRUE,  \ ; LOST_ITEM
	TRUE,  \ ; COIN_CASE
	TRUE,  \ ; MYSTERY_EGG
	TRUE,  \ ; ITEMFINDER
	TRUE,  \ ; SILPH_SCOPE
	TRUE,  \ ; POKE_FLUTE
	TRUE,  \ ; BASEMENT_KEY
	TRUE,  \ ; EXP_ALL
	TRUE,  \ ; OLD_ROD
	TRUE,  \ ; GOOD_ROD
	TRUE,  \ ; SUPER_ROD
	TRUE,  \ ; MACHINE_PART
	TRUE,  \ ; SECRETPOTION
	TRUE,  \ ; RED_SCALE
	TRUE,  \ ; SILVER_WING
	TRUE,  \ ; RAINBOW_WING
	TRUE,  \ ; GS_BALL
	TRUE,  \ ; SURFBOARD
	TRUE,  \ ; SAFARI_BAIT
	TRUE     ; SAFARI_ROCK
	assert_table_length (NUM_ITEMS + 7) / 8

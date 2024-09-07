; EmotionBubblesPointerTable indexes (see engine/overworld/emotion_bubbles.asm)
	const_def
	const EXCLAMATION_BUBBLE ; 0
	const QUESTION_BUBBLE    ; 1
	const SMILE_BUBBLE       ; 2

; slot symbols
DEF SLOTS7      EQU $0200
DEF SLOTSBAR    EQU $0604
DEF SLOTSCHERRY EQU $0A08
DEF SLOTSFISH   EQU $0E0C
DEF SLOTSBIRD   EQU $1210
DEF SLOTSMOUSE  EQU $1614

; StartSlotMachine dialogs
DEF SLOTS_OUTOFORDER   EQU $fd
DEF SLOTS_OUTTOLUNCH   EQU $fe
DEF SLOTS_SOMEONESKEYS EQU $ff

; in game trades
; TradeMons indexes (see data/events/trades.asm)
	const_def
	const TRADE_FOR_SPARKY
DEF NUM_NPC_TRADES EQU const_value

; in game trade dialog sets
; InGameTradeTextPointers indexes (see engine/events/in_game_trades.asm)
	const_def
	const TRADE_DIALOGSET_CASUAL
	const TRADE_DIALOGSET_EVOLUTION
	const TRADE_DIALOGSET_HAPPY

; wKantoBadges bits
	const_def
	const BIT_BOULDERBADGE ; 0
	const BIT_CASCADEBADGE ; 1
	const BIT_THUNDERBADGE ; 2
	const BIT_RAINBOWBADGE ; 3
	const BIT_SOULBADGE    ; 4
	const BIT_MARSHBADGE   ; 5
	const BIT_VOLCANOBADGE ; 6
	const BIT_EARTHBADGE   ; 7
DEF NUM_KANTO_BADGES EQU const_value

; wKansaiBadges bits
	const_def
	const BIT_ZEPHYRBADGE  ; 0
	const BIT_HIVEBADGE    ; 1
	const BIT_PLAINBADGE   ; 2
	const BIT_FOGBADGE     ; 3
	const BIT_MINERALBADGE ; 4
	const BIT_STORMBADGE   ; 5
	const BIT_GLACIERBADGE ; 6
	const BIT_RISINGBADGE  ; 7
DEF NUM_KANSAI_BADGES EQU const_value

; OaksAideScript results
DEF OAKS_AIDE_BAG_FULL        EQU $00
DEF OAKS_AIDE_GOT_ITEM        EQU $01
DEF OAKS_AIDE_NOT_ENOUGH_MONS EQU $80
DEF OAKS_AIDE_REFUSED         EQU $ff

; fruittree arguments
; BerryTable indexes (see data/items/fruit_trees.asm)
	const_def 1
	const FRUITTREE_KANSAI_ROUTE_1     ; 01
	const FRUITTREE_KANSAI_ROUTE_2     ; 02
	const FRUITTREE_EVERGREEN_WOODS    ; 03
	const FRUITTREE_KANSAI_ROUTE_3     ; 04
DEF NUM_FRUIT_TREES EQU const_value - 1

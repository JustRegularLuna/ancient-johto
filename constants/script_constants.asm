; EmotionBubblesPointerTable indexes (see engine/overworld/emotion_bubbles.asm)
	const_def
	const EXCLAMATION_BUBBLE ; 0
	const QUESTION_BUBBLE    ; 1
	const SMILE_BUBBLE       ; 2

; slot symbols
SLOTS7      EQU $0200
SLOTSBAR    EQU $0604
SLOTSCHERRY EQU $0A08
SLOTSFISH   EQU $0E0C
SLOTSBIRD   EQU $1210
SLOTSMOUSE  EQU $1614

; StartSlotMachine dialogs
SLOTS_OUTOFORDER   EQU $fd
SLOTS_OUTTOLUNCH   EQU $fe
SLOTS_SOMEONESKEYS EQU $ff

; in game trades
; TradeMons indexes (see data/events/trades.asm)
	const_def
	const TRADE_FOR_ROCKY
NUM_NPC_TRADES EQU const_value

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
NUM_KANTO_BADGES EQU const_value

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
NUM_KANSAI_BADGES EQU const_value

; OaksAideScript results
OAKS_AIDE_BAG_FULL        EQU $00
OAKS_AIDE_GOT_ITEM        EQU $01
OAKS_AIDE_NOT_ENOUGH_MONS EQU $80
OAKS_AIDE_REFUSED         EQU $ff

; fruittree arguments
; BerryTable indexes (see data/items/fruit_trees.asm)
	const_def 1
	const FRUITTREE_KANSAI_ROUTE_1     ; 01
	const FRUITTREE_ROUTE_30_1         ; 02
	const FRUITTREE_ROUTE_38           ; 03
	const FRUITTREE_ROUTE_46_1         ; 04
	const FRUITTREE_ROUTE_30_2         ; 05
	const FRUITTREE_ROUTE_33           ; 06
	const FRUITTREE_ROUTE_31           ; 07
	const FRUITTREE_ROUTE_43           ; 08
	const FRUITTREE_VIOLET_CITY        ; 09
	const FRUITTREE_ROUTE_46_2         ; 0a
	const FRUITTREE_ROUTE_35           ; 0b
	const FRUITTREE_ROUTE_45           ; 0c
	const FRUITTREE_ROUTE_36           ; 0d
	const FRUITTREE_ROUTE_26           ; 0e
	const FRUITTREE_ROUTE_39           ; 0f
	const FRUITTREE_ROUTE_44           ; 10
	const FRUITTREE_ROUTE_37_1         ; 11
	const FRUITTREE_ROUTE_37_2         ; 12
	const FRUITTREE_ROUTE_37_3         ; 13
	const FRUITTREE_AZALEA_TOWN        ; 14
	const FRUITTREE_ROUTE_42_1         ; 15
	const FRUITTREE_ROUTE_42_2         ; 16
	const FRUITTREE_ROUTE_42_3         ; 17
	const FRUITTREE_ROUTE_11           ; 18
	const FRUITTREE_ROUTE_2            ; 19
	const FRUITTREE_ROUTE_1            ; 1a
	const FRUITTREE_ROUTE_8            ; 1b
	const FRUITTREE_PEWTER_CITY_1      ; 1c
	const FRUITTREE_PEWTER_CITY_2      ; 1d
	const FRUITTREE_FUCHSIA_CITY       ; 1e
DEF NUM_FRUIT_TREES EQU const_value - 1

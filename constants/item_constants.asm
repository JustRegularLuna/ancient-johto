; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemPrices (see data/items/prices.asm)
; - TechnicalMachinePrices (see data/items/tm_prices.asm)
; - KeyItemBitfield (see data/items/key_items.asm)
; - ItemUsePtrTable (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM       ; $00

; Pokéballs
	const MASTER_BALL   ;
	const ULTRA_BALL    ;
	const GREAT_BALL    ;
	const POKE_BALL     ;
	const SAFARI_BALL   ;
	; TODO: Port the apricorn balls

; Normal Items
	const LINK_CABLE    ;
	const MOON_STONE    ;
	const SUN_STONE     ;
	const FIRE_STONE    ;
	const THUNDER_STONE ;
	const WATER_STONE   ;
	const LEAF_STONE    ;
	const DRAGON_SCALE  ;
	const UP_GRADE      ;
	const KINGS_ROCK    ;
	const METAL_COAT    ;
	const HEART_STONE   ;
	const DARK_STONE    ;
	const ESCAPE_ROPE   ;
	const REPEL         ;
	const SUPER_REPEL   ;
	const MAX_REPEL     ;
	const OLD_AMBER     ;
	const DOME_FOSSIL   ;
	const HELIX_FOSSIL  ;
	const NUGGET        ;
	const BIG_NUGGET    ;
	const PEARL         ;
	const BIG_PEARL     ;
	const STARDUST      ;
	const STAR_PIECE    ;
	const POKE_DOLL     ;

; Medicine/Vitamins
	const ANTIDOTE      ;
	const BURN_HEAL     ;
	const ICE_HEAL      ;
	const AWAKENING     ;
	const PARLYZ_HEAL   ;
	const FULL_HEAL     ;
	const FULL_RESTORE  ;
	const REVIVE        ;
	const MAX_REVIVE    ;
	const MAX_POTION    ;
	const HYPER_POTION  ;
	const SUPER_POTION  ;
	const POTION        ;
	const HP_UP         ;
	const PROTEIN       ;
	const IRON          ;
	const CARBOS        ;
	const CALCIUM       ;
	const RARE_CANDY    ;
	const GUARD_SPEC    ;
	const DIRE_HIT      ;
	const X_ACCURACY    ;
	const X_ATTACK      ;
	const X_DEFEND      ;
	const X_SPEED       ;
	const X_SPECIAL     ;
	const PP_UP         ;
	const ETHER         ;
	const MAX_ETHER     ;
	const ELIXER        ;
	const MAX_ELIXER    ;
	const FRESH_WATER   ;
	const SODA_POP      ;
	const LEMONADE      ;
	const MOOMOO_MILK   ;
	const CAKE_OF_RAGE  ;

; Berries
	const BERRY         ; -> Heal 10HP
	const GOLD_BERRY    ; -> Heal 30HP
	const MYSTERYBERRY  ; -> Heal 5PP
	const PSNCUREBERRY  ; -> Cure PSN
	const ICE_BERRY     ; -> Cure BRN
	const BURNT_BERRY   ; -> Cure FRZ
	const MINT_BERRY    ; -> Cure SLP
	const PRZCUREBERRY  ; -> Cure PRZ
	const MIRACLEBERRY  ; -> Cure everything
	const BITTER_BERRY  ; -> Cure Confusion
	const RED_APRICORN  ; -> Craft Level Ball
	const YLW_APRICORN  ; -> Craft Moon Ball
	const BLU_APRICORN  ; -> Craft Lure Ball
	const GRN_APRICORN  ; -> Craft Friend Ball
	const PNK_APRICORN  ; -> Craft Love Ball
	const WHT_APRICORN  ; -> Craft Fast Ball
	const BLK_APRICORN  ; -> Craft Heavy Ball

; Key Items
	const TOWN_MAP      ;
	const BICYCLE       ;
	const PASS          ;
	const SQUIRTBOTTLE  ;
	const CARD_KEY      ;
	const S_S_TICKET    ;
	const LOST_ITEM     ;
	const COIN_CASE     ;
	const MYSTERY_EGG   ;
	const ITEMFINDER    ;
	const SILPH_SCOPE   ;
	const POKE_FLUTE    ;
	const BASEMENT_KEY  ;
	const EXP_ALL       ;
	const OLD_ROD       ;
	const GOOD_ROD      ;
	const SUPER_ROD     ;
	const MACHINE_PART  ;
	const SECRETPOTION  ;
	const RED_SCALE     ;
	const SILVER_WING   ;
	const RAINBOW_WING  ;
	const GS_BALL       ;

; Abnormal Items
	const SURFBOARD     ; * Part of the SURF field effect, and in your PC in debug rom
	const SAFARI_BAIT   ; * Used in Safari Battle mode
	const SAFARI_ROCK   ; * Used in Safari Battle mode

DEF NUM_ITEMS EQU const_value - 1

; elevator floors use item IDs
	const FLOOR_B2F
	const FLOOR_B1F
	const FLOOR_1F
	const FLOOR_2F
	const FLOOR_3F
	const FLOOR_4F
	const FLOOR_5F
	const FLOOR_6F
	const FLOOR_7F
	const FLOOR_8F
	const FLOOR_9F
	const FLOOR_10F
	const FLOOR_11F
	const FLOOR_B4F
DEF NUM_FLOORS EQU const_value - 1 - NUM_ITEMS

	const_next $C4

; HMs are defined before TMs, so the actual number of TM definitions
; is not yet available. The TM quantity is hard-coded here and must
; match the actual number below.
DEF NUM_TMS EQU 50

DEF __tmhm_value__ = NUM_TMS + 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $C4
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE EQU \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; 
	add_hm FLY          ; 
	add_hm SURF         ; 
	add_hm STRENGTH     ; 
	add_hm WHIRLPOOL    ; 
	add_hm WATERFALL    ;
DEF NUM_HMS EQU const_value - HM01

DEF __tmhm_value__ = 1

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $C9
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE EQU \1
	add_tmnum \1
ENDM

DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH ; Prize for beating Chuck
	add_tm FOCUS_ENERGY ; TBD
	add_tm SWORDS_DANCE ; TBD
	add_tm ROLLOUT      ; Prize for beating Whitney
	add_tm IRON_TAIL    ; Prize for beating Jasmine
	add_tm IRON_FIST    ; TBD
	add_tm POWER_SURGE  ; Power Plant
	add_tm BODY_SLAM    ; TBD
	add_tm NOBLE_SPIRIT ; TBD
	add_tm INVIGORATE   ; TBD
	add_tm BUBBLEBEAM   ; TBD
	add_tm MUD_SLAP     ; Prize for beating Falkner
	add_tm ICE_BEAM     ; TBD
	add_tm HAIL_BARRAGE ; Prize for beating Pryce
	add_tm HYPER_BEAM   ; TBD
	add_tm PAY_DAY      ; TBD
	add_tm DARK_ENERGY  ; TBD
	add_tm COUNTER      ; TBD
	add_tm FURY_CUTTER  ; Prize for beating Bugsy
	add_tm SHURIKEN     ; TBD
	add_tm GIGA_DRAIN   ; TBD
	add_tm SOLARBEAM    ; TBD
	add_tm DRAGONBREATH ; Prize for beating Clair
	add_tm DRAGON_RAGE  ; TBD
	add_tm THUNDER      ; TBD
	add_tm EARTHQUAKE   ; TBD
	add_tm LAVA_SURGE   ; TBD
	add_tm DIG          ; TBD
	add_tm PSYCHIC_M    ; Saffron City (Mr. Psychic)
	add_tm SHADOW_BALL  ; Prize for beating Morty
	add_tm FIRE_PUNCH   ; TBD
	add_tm ICE_PUNCH    ; TBD
	add_tm THUNDERPUNCH ; TBD
	add_tm MACH_PUNCH   ; TBD
	add_tm METRONOME    ; TBD
	add_tm SHADOWSTRIKE ; TBD
	add_tm SNEAK_ATTACK ; TBD
	add_tm FIRE_BLAST   ; TBD
	add_tm SWIFT        ; TBD
	add_tm SKULL_BASH   ; TBD
	add_tm WINDSTORM    ; TBD
	add_tm DREAM_EATER  ; TBD
	add_tm SEISMIC_TOSS ; TBD
	add_tm FISSURE      ; TBD
	add_tm HORN_DRILL   ; TBD
	add_tm MEGA_KICK    ; TBD
	add_tm SKY_ATTACK   ; TBD
	add_tm ROCK_SLIDE   ; TBD
	add_tm TRI_ATTACK   ; TBD
	add_tm FLASH        ; Bell Tower (Elder)
ASSERT NUM_TMS == const_value - TM01, "NUM_TMS ({d:NUM_TMS}) does not match the number of add_tm definitions"

DEF NUM_TM_HM EQU NUM_TMS + NUM_HMS

; 50 TMs + 5 HMs = 55 learnable TM/HM flags per Pokémon.
; These fit in 7 bytes, with one unused bit left over.
DEF __tmhm_value__ = NUM_TM_HM + 1
DEF UNUSED_TMNUM EQU __tmhm_value__

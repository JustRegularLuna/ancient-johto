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
	const SOOTHE_BELL   ;
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
	const BERRY         ; -> 10HP
	const GOLD_BERRY    ; -> 30HP
	const MYSTERYBERRY  ; -> 5PP
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

NUM_ITEMS EQU const_value - 1

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
NUM_FLOORS EQU const_value - 1 - NUM_ITEMS

	const_next $C4

; HMs are defined before TMs, so the actual number of TM definitions
; is not yet available. The TM quantity is hard-coded here and must
; match the actual number below.
NUM_TMS EQU 50

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $C4
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
; The first usage also defines HM01 as the first HM item id.
IF !DEF(HM01)
HM01 EQU const_value
__tmhm_value__ = NUM_TMS + 1
ENDC
HM_VALUE EQU __tmhm_value__ - NUM_TMS
IF HM_VALUE < 10
MOVE_FOR_HM EQUS "HM0{d:HM_VALUE}_MOVE"
ELSE
MOVE_FOR_HM EQUS "HM{d:HM_VALUE}_MOVE"
ENDC
MOVE_FOR_HM = \1
PURGE MOVE_FOR_HM
PURGE HM_VALUE
	const HM_\1
\1_TMNUM EQU __tmhm_value__
__tmhm_value__ = __tmhm_value__ + 1
ENDM

	add_hm CUT          ; $C4
	add_hm FLY          ; $C5
	add_hm SURF         ; $C6
	add_hm STRENGTH     ; $C7
	add_hm FLASH        ; $C8
NUM_HMS EQU const_value - HM01

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $C9
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
; The first usage also defines TM01 as the first TM item id.
IF !DEF(TM01)
TM01 EQU const_value
__tmhm_value__ = 1
ENDC
IF __tmhm_value__ < 10
MOVE_FOR_TM EQUS "TM0{d:__tmhm_value__}_MOVE"
ELSE
MOVE_FOR_TM EQUS "TM{d:__tmhm_value__}_MOVE"
ENDC
MOVE_FOR_TM = \1
PURGE MOVE_FOR_TM
	const TM_\1
\1_TMNUM EQU __tmhm_value__
__tmhm_value__ = __tmhm_value__ + 1
ENDM

	add_tm MEGA_PUNCH   ; $C9
	add_tm RAZOR_WIND   ; $CA
	add_tm SWORDS_DANCE ; $CB
	add_tm WHIRLWIND    ; $CC
	add_tm MEGA_KICK    ; $CD
	add_tm TOXIC        ; $CE
	add_tm HORN_DRILL   ; $CF
	add_tm BODY_SLAM    ; $D0
	add_tm TAKE_DOWN    ; $D1
	add_tm DOUBLE_EDGE  ; $D2
	add_tm BUBBLEBEAM   ; $D3
	add_tm WATER_GUN    ; $D4
	add_tm ICE_BEAM     ; $D5
	add_tm BLIZZARD     ; $D6
	add_tm HYPER_BEAM   ; $D7
	add_tm PAY_DAY      ; $D8
	add_tm SUBMISSION   ; $D9
	add_tm COUNTER      ; $DA
	add_tm SEISMIC_TOSS ; $DB
	add_tm RAGE         ; $DC
	add_tm MEGA_DRAIN   ; $DD
	add_tm SOLARBEAM    ; $DE
	add_tm DRAGON_RAGE  ; $DF
	add_tm THUNDERBOLT  ; $E0
	add_tm THUNDER      ; $E1
	add_tm EARTHQUAKE   ; $E2
	add_tm FISSURE      ; $E3
	add_tm DIG          ; $E4
	add_tm PSYCHIC_M    ; $E5
	add_tm TELEPORT     ; $E6
	add_tm MIMIC        ; $E7
	add_tm DOUBLE_TEAM  ; $E8
	add_tm REFLECT      ; $E9
	add_tm BIDE         ; $EA
	add_tm METRONOME    ; $EB
	add_tm SELFDESTRUCT ; $EC
	add_tm EGG_BOMB     ; $ED
	add_tm FIRE_BLAST   ; $EE
	add_tm SWIFT        ; $EF
	add_tm SKULL_BASH   ; $F0
	add_tm SOFTBOILED   ; $F1
	add_tm DREAM_EATER  ; $F2
	add_tm SKY_ATTACK   ; $F3
	add_tm REST         ; $F4
	add_tm THUNDER_WAVE ; $F5
	add_tm PSYWAVE      ; $F6
	add_tm EXPLOSION    ; $F7
	add_tm ROCK_SLIDE   ; $F8
	add_tm TRI_ATTACK   ; $F9
	add_tm SUBSTITUTE   ; $FA
assert NUM_TMS == const_value - TM01, "NUM_TMS ({d:NUM_TMS}) does not match the number of add_tm definitions"

NUM_TM_HM EQU NUM_TMS + NUM_HMS

; 50 TMs + 5 HMs = 55 learnable TM/HM flags per Pokémon.
; These fit in 7 bytes, with one unused bit left over.
__tmhm_value__ = NUM_TM_HM + 1
UNUSED_TMNUM EQU __tmhm_value__

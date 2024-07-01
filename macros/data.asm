; Value macros

DEF percent EQUS "* $ff / 100"

MACRO bcd2
	dn ((\1) / 1000) % 10, ((\1) / 100) % 10
	dn ((\1) / 10) % 10, (\1) % 10
ENDM

MACRO bcd3
	dn ((\1) / 100000) % 10, ((\1) / 10000) % 10
	dn ((\1) / 1000) % 10, ((\1) / 100) % 10
	dn ((\1) / 10) % 10, (\1) % 10
ENDM

DEF coins EQUS "bcd2"
DEF money EQUS "bcd3"

; used in data/pokemon/base_stats/*.asm
MACRO tmhm
; initialize bytes to 0
DEF n = 0
REPT (NUM_TM_HM + 7) / 8
DEF _TM_BYTE EQUS "_tm{d:n}"
DEF {_TM_BYTE} = 0
PURGE _TM_BYTE
DEF n = n + 1
ENDR
; set bits of bytes
REPT _NARG
	IF DEF(\1_TMNUM)
DEF n = (\1_TMNUM - 1) / 8
DEF i = (\1_TMNUM - 1) % 8
DEF _TM_BYTE EQUS "_tm{d:n}"
DEF {_TM_BYTE} = _TM_BYTE | (1 << i)
PURGE _TM_BYTE
	ELSE
		FAIL "\1 is not a TM or HM move"
	ENDC
	SHIFT
ENDR
; output bytes
DEF n = 0
REPT (NUM_TM_HM + 7) / 8
DEF _TM_BYTE EQUS "_tm{d:n}"
	db _TM_BYTE
PURGE _TM_BYTE
DEF n = n + 1
ENDR
ENDM


; Constant data (db, dw, dl) macros

MACRO dn ; nybbles
rept _NARG / 2
	db ((\1) << 4) | (\2)
	shift
	shift
endr
ENDM

MACRO dbw
	db \1
	dw \2
ENDM

MACRO dba
	dbw BANK(\1), \1
ENDM

MACRO dwb
	dw \1
	db \2
ENDM

MACRO dab
	dwb \1, BANK(\1)
ENDM

MACRO dbbw
	db \1, \2
	dw \3
ENDM

; change_var_sprite VAR_SPRITE_ID, SPRITE_TO_STORE
MACRO change_var_sprite
DEF var_sprite_number = (\1 - SPRITE_VARS)
	ld a, \2
	ld[wVarSprites + var_sprite_number], a
ENDM

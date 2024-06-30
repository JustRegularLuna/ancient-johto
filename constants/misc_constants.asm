; Boolean checks
DEF FALSE EQU 0
DEF TRUE  EQU 1

; flag operations
	const_def
	const FLAG_RESET ; 0
	const FLAG_SET   ; 1
	const FLAG_TEST  ; 2

; Used  to define gender ratios
DEF MALE_ONLY         EQU $00
DEF MALE_88_PERCENT   EQU $1F
DEF MALE_75_PERCENT   EQU $3F
DEF SAME_BOTH_GENDERS EQU $7F
DEF FEMALE_75_PERCENT EQU $BF
DEF FEMALE_ONLY       EQU $FE
DEF NO_GENDER         EQU $FF

; Used to display version number on Continue/New Game/Options screen
DEF VERSION_MAJOR EQU 0
DEF VERSION_MINOR EQU 0
DEF VERSION_PATCH EQU 1

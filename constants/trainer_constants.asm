; trainerclass macro taken from pokegold
DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; indexes for:
; - TrainerNames (see data/trainers/names.asm)
; - TrainerEncounterMusicTable (see data/trainers/encounter_types.asm)
; - TrainerDataPointers (see data/trainers/parties.asm)
; - TrainerPicAndMoneyPointers (see data/trainers/pic_pointers_money.asm)
; - TrainerAIPointers (see data/trainers/ai_pointers.asm)
; - TrainerClassMoveChoiceModifications (see data/trainers/move_choices.asm)

	trainerclass TRAINER_NONE ; 0

	trainerclass PROF_OAK
	const OAK1

	trainerclass RIVAL1
	const RIVAL1_1_TOTODILE
	const RIVAL1_1_CHIKORITA
	const RIVAL1_1_CYNDAQUIL

	trainerclass RIVAL2

	trainerclass FALKNER

	trainerclass BUGSY

	trainerclass WHITNEY

	trainerclass MORTY

	trainerclass PRYCE

	trainerclass JASMINE

	trainerclass CHUCK

	trainerclass CLAIR

	trainerclass WILL

	trainerclass KOGA

	trainerclass BRUNO

	trainerclass KAREN

	trainerclass CHAMPION

	trainerclass LORELEI

	trainerclass AGATHA

	trainerclass RED

	trainerclass BLUE

	trainerclass BROCK

	trainerclass MISTY

	trainerclass LT_SURGE

	trainerclass ERIKA

	trainerclass JANINE

	trainerclass SABRINA

	trainerclass BLAINE

	trainerclass GIOVANNI

	trainerclass EXECUTIVEM

	trainerclass EXECUTIVEF

	trainerclass GRUNTM

	trainerclass GRUNTF

	trainerclass JESSIE_JAMES

	trainerclass SCIENTIST

	trainerclass BURGLAR

	trainerclass YOUNGSTER
	const JOEY
	const ALAN

	trainerclass BUG_CATCHER

	trainerclass SCHOOLBOY

	trainerclass BIRD_KEEPER

	trainerclass TWINS

	trainerclass LASS
	const NIKKI

	trainerclass BEAUTY

	trainerclass PICNICKER

	trainerclass CAMPER

	trainerclass COOLTRAINERM

	trainerclass COOLTRAINERF

	trainerclass POKEMANIAC

	trainerclass SUPER_NERD

	trainerclass GENTLEMAN

	trainerclass SKIER

	trainerclass BOARDER

	trainerclass TEACHER

	trainerclass FISHER

	trainerclass SWIMMERM

	trainerclass SWIMMERF

	trainerclass SAILOR

	trainerclass ROCKER

	trainerclass GUITARIST

	trainerclass HIKER

	trainerclass BIKER

	trainerclass CUE_BALL

	trainerclass GAMBLER

	trainerclass TAMER

	trainerclass FIREBREATHER

	trainerclass JUGGLER

	trainerclass BLACKBELT

	trainerclass PSYCHIC_TR

	trainerclass ENGINEER

	trainerclass SAGE

	trainerclass MEDIUM

	trainerclass CHANNELER

	trainerclass KIMONO_GIRL

	trainerclass POKEFANF

	trainerclass POKEFANM

	trainerclass OFFICER

	trainerclass REI

DEF NUM_TRAINERS EQU __trainer_class__ - 1


; trainer type trainerclassants
; used in data/trainers/parties.asm to define trainer party info
	const_def
	const TRAINERTYPE_NORMAL
	const TRAINERTYPE_MOVES

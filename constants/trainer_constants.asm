; trainer class ids
; indexes for:
; - TrainerNames (see data/trainers/names.asm)
; - TrainerEncounterMusicTable (see data/trainers/encounter_types.asm)
; - TrainerDataPointers (see data/trainers/parties.asm)
; - TrainerPicAndMoneyPointers (see data/trainers/pic_pointers_money.asm)
; - TrainerAIPointers (see data/trainers/ai_pointers.asm)
; - TrainerClassMoveChoiceModifications (see data/trainers/move_choices.asm)
	const_def
	const NOBODY         ; $00
	const PROF_OAK
	const RIVAL1
	const RIVAL2
	const FALKNER
	const BUGSY
	const WHITNEY
	const MORTY
	const PRYCE
	const JASMINE
	const CHUCK
	const CLAIR
	const WILL
	const KOGA
	const BRUNO
	const KAREN
	const CHAMPION
	const LORELEI
	const AGATHA
	const RED
	const BLUE
	const BROCK
	const MISTY
	const LT_SURGE
	const ERIKA
	const JANINE
	const SABRINA
	const BLAINE
	const GIOVANNI
	const EXECUTIVEM
	const EXECUTIVEF
	const GRUNTM
	const GRUNTF
	const JESSIE_JAMES
	const SCIENTIST
	const BURGLAR
	const YOUNGSTER
	const BUG_CATCHER
	const SCHOOLBOY
	const BIRD_KEEPER
	const TWINS
	const LASS
	const BEAUTY
	const PICNICKER
	const CAMPER
	const COOLTRAINERM
	const COOLTRAINERF
	const POKEMANIAC
	const SUPER_NERD
	const GENTLEMAN
	const SKIER
	const BOARDER
	const TEACHER
	const FISHER
	const SWIMMERM
	const SWIMMERF
	const SAILOR
	const ROCKER
	const GUITARIST
	const HIKER
	const BIKER
	const CUE_BALL
	const GAMBLER
	const TAMER
	const FIREBREATHER
	const JUGGLER
	const BLACKBELT
	const PSYCHIC_TR
	const ENGINEER
	const SAGE
	const MEDIUM
	const CHANNELER
	const KIMONO_GIRL
	const POKEFANF
	const POKEFANM
	const OFFICER
NUM_TRAINERS EQU const_value - 1


; trainer type constants
; used in data/trainers/parties.asm to define trainer party info
const_value = 0
	const TRAINERTYPE_NORMAL
	const TRAINERTYPE_MOVES

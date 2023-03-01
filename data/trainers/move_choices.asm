MACRO move_choices
REPT _NARG
	db \1
	shift
ENDR
	db 0 ; end
list_index = list_index + 1
ENDM

; move choice modification methods that are applied for each trainer class
TrainerClassMoveChoiceModifications:
	list_start TrainerClassMoveChoiceModifications
	move_choices 1, 2, 3 ; PROF_OAK
	move_choices 1, 2, 3 ; RIVAL1
	move_choices 1, 2, 3 ; RIVAL2
	move_choices 1, 2, 3 ; FALKNER
	move_choices 1, 2, 3 ; BUGSY
	move_choices 1, 2, 3 ; WHITNEY
	move_choices 1, 2, 3 ; MORTY
	move_choices 1, 2, 3 ; PRYCE
	move_choices 1, 2, 3 ; JASMINE
	move_choices 1, 2, 3 ; CHUCK
	move_choices 1, 2, 3 ; CLAIR
	move_choices 1, 2, 3 ; WILL
	move_choices 1, 2, 3 ; KOGA
	move_choices 1, 2, 3 ; BRUNO
	move_choices 1, 2, 3 ; KAREN
	move_choices 1, 2, 3 ; CHAMPION
	move_choices 1, 2, 3 ; LORELEI
	move_choices 1, 2, 3 ; AGATHA
	move_choices 1, 2, 3 ; RED
	move_choices 1, 2, 3 ; BLUE
	move_choices 1, 2, 3 ; BROCK
	move_choices 1, 2, 3 ; MISTY
	move_choices 1, 2, 3 ; LT_SURGE
	move_choices 1, 2, 3 ; ERIKA
	move_choices 1, 2, 3 ; JANINE
	move_choices 1, 2, 3 ; SABRINA
	move_choices 1, 2, 3 ; BLAINE
	move_choices 1, 2, 3 ; GIOVANNI
	move_choices 1, 2, 3 ; EXECUTIVEM
	move_choices 1, 2, 3 ; EXECUTIVEF
	move_choices 1, 2, 3 ; GRUNTM
	move_choices 1, 2, 3 ; GRUNTF
	move_choices 1, 2, 3 ; JESSIE_JAMES
	move_choices 1, 2, 3 ; SCIENTIST
	move_choices 1, 2, 3 ; BURGLAR
	move_choices 1, 2, 3 ; YOUNGSTER
	move_choices 1, 2, 3 ; BUG_CATCHER
	move_choices 1, 2, 3 ; SCHOOLBOY
	move_choices 1, 2, 3 ; BIRD_KEEPER
	move_choices 1, 2, 3 ; TWINS
	move_choices 1, 2, 3 ; LASS
	move_choices 1, 2, 3 ; BEAUTY
	move_choices 1, 2, 3 ; PICNICKER
	move_choices 1, 2, 3 ; CAMPER
	move_choices 1, 2, 3 ; COOLTRAINERM
	move_choices 1, 2, 3 ; COOLTRAINERF
	move_choices 1, 2, 3 ; POKEMANIAC
	move_choices 1, 2, 3 ; SUPER_NERD
	move_choices 1, 2, 3 ; GENTLEMAN
	move_choices 1, 2, 3 ; SKIER
	move_choices 1, 2, 3 ; BOARDER
	move_choices 1, 2, 3 ; TEACHER
	move_choices 1, 2, 3 ; FISHER
	move_choices 1, 2, 3 ; SWIMMERM
	move_choices 1, 2, 3 ; SWIMMERF
	move_choices 1, 2, 3 ; SAILOR
	move_choices 1, 2, 3 ; ROCKER
	move_choices 1, 2, 3 ; GUITARIST
	move_choices 1, 2, 3 ; HIKER
	move_choices 1, 2, 3 ; BIKER
	move_choices 1, 2, 3 ; CUE_BALL
	move_choices 1, 2, 3 ; GAMBLER
	move_choices 1, 2, 3 ; TAMER
	move_choices 1, 2, 3 ; FIREBREATHER
	move_choices 1, 2, 3 ; JUGGLER
	move_choices 1, 2, 3 ; BLACKBELT
	move_choices 1, 2, 3 ; PSYCHIC_TR
	move_choices 1, 2, 3 ; ENGINEER
	move_choices 1, 2, 3 ; SAGE
	move_choices 1, 2, 3 ; MEDIUM
	move_choices 1, 2, 3 ; CHANNELER
	move_choices 1, 2, 3 ; KIMONO_GIRL
	move_choices 1, 2, 3 ; POKEFANF
	move_choices 1, 2, 3 ; POKEFANM
	move_choices 1, 2, 3 ; OFFICER
	move_choices 1, 2, 3 ; REI
	assert_list_length NUM_TRAINERS

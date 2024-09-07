MACRO pic_money
	dba \1
	money \2
ENDM

TrainerPicAndMoneyPointers::
	table_width 6, TrainerPicAndMoneyPointers
	; pic pointer, base reward money
	; money received after battle = base money × level of highest-level enemy mon
	pic_money ProfElmPic,      1500 ; PROF_ELM
	pic_money ProfOakPic,      1500 ; PROF_OAK
	pic_money Rival1Pic,       1500 ; RIVAL1
	pic_money Rival2Pic,       1500 ; RIVAL2
	pic_money FalknerPic,      1500 ; FALKNER
	pic_money BugsyPic,        1500 ; BUGSY
	pic_money WhitneyPic,      1500 ; WHITNEY
	pic_money MortyPic,        1500 ; MORTY
	pic_money PrycePic,        1500 ; PRYCE
	pic_money JasminePic,      1500 ; JASMINE
	pic_money ChuckPic,        1500 ; CHUCK
	pic_money ClairPic,        1500 ; CLAIR
	pic_money WillPic,         1500 ; WILL
	pic_money MikanPic,        1500 ; MIKAN
	pic_money WalkerPic,       1500 ; WALKER
	pic_money KarenPic,        1500 ; KAREN
	pic_money ChampionPic,     1500 ; CHAMPION
	pic_money KogaPic,         1500 ; KOGA
	pic_money LoreleiPic,      1500 ; LORELEI
	pic_money BrunoPic,        1500 ; BRUNO
	pic_money LancePic,        1500 ; LANCE
	pic_money RedPic,          1500 ; RED
	pic_money BluePic,         1500 ; BLUE
	pic_money AgathaPic,       1500 ; AGATHA
	pic_money BrockPic,        1500 ; BROCK
	pic_money MistyPic,        1500 ; MISTY
	pic_money LtSurgePic,      1500 ; LT_SURGE
	pic_money ErikaPic,        1500 ; ERIKA
	pic_money JaninePic,       1500 ; JANINE
	pic_money SabrinaPic,      1500 ; SABRINA
	pic_money BlainePic,       1500 ; BLAINE
	pic_money GiovanniPic,     1500 ; GIOVANNI
	pic_money ExecutiveMPic,   1500 ; EXECUTIVEM
	pic_money ExecutiveFPic,   1500 ; EXECUTIVEF
	pic_money GruntMPic,       1500 ; GRUNTM
	pic_money GruntFPic,       1500 ; GRUNTF
	pic_money JessieJamesPic,  1500 ; JESSIE_JAMES
	pic_money ButchCassidyPic, 1500 ; BUTCH_CASSIDY
	pic_money ImposterPic,     1500 ; IMPOSTER
	pic_money ScientistPic,    1500 ; SCIENTIST
	pic_money BurglarPic,      1500 ; BURGLAR
	pic_money YoungsterPic,    1500 ; YOUNGSTER
	pic_money BugCatcherPic,   1500 ; BUG_CATCHER
	pic_money SchoolboyPic,    1500 ; SCHOOLBOY
	pic_money BirdKeeperPic,   1500 ; BIRD_KEEPER
	pic_money TwinsPic,        1500 ; TWINS
	pic_money LassPic,         1500 ; LASS
	pic_money BeautyPic,       1500 ; BEAUTY
	pic_money PicnickerPic,    1500 ; PICNICKER
	pic_money CamperPic,       1500 ; CAMPER
	pic_money CooltrainerMPic, 1500 ; COOLTRAINERM
	pic_money CooltrainerFPic, 1500 ; COOLTRAINERF
	pic_money PokemaniacPic,   1500 ; POKEMANIAC
	pic_money SuperNerdPic,    1500 ; SUPER_NERD
	pic_money GentlemanPic,    1500 ; GENTLEMAN
	pic_money SkierPic,        1500 ; SKIER
	pic_money BoarderPic,      1500 ; BOARDER
	pic_money TeacherFPic,     1500 ; TEACHERF
	pic_money TeacherMPic,     1500 ; TEACHERM
	pic_money FisherPic,       1500 ; FISHER
	pic_money SwimmerMPic,     1500 ; SWIMMERM
	pic_money SwimmerFPic,     1500 ; SWIMMERF
	pic_money AthletePic,      1500 ; ATHLETE
	pic_money SailorPic,       1500 ; SAILOR
	pic_money RockerPic,       1500 ; ROCKER
	pic_money GuitaristPic,    1500 ; GUITARIST
	pic_money HikerPic,        1500 ; HIKER
	pic_money BikerPic,        1500 ; BIKER
	pic_money CueBallPic,      1500 ; CUE_BALL
	pic_money GamblerPic,      1500 ; GAMBLER
	pic_money TamerPic,        1500 ; TAMER
	pic_money FirebreatherPic, 1500 ; FIREBREATHER
	pic_money JugglerPic,      1500 ; JUGGLER
	pic_money BlackbeltPic,    1500 ; BLACKBELT
	pic_money PsychicPic,      1500 ; PSYCHIC_TR
	pic_money HandymanPic,     1500 ; HANDYMAN
	pic_money SoldierPic,      1500 ; SOLDIER
	pic_money SagePic,         1500 ; SAGE
	pic_money MediumPic,       1500 ; MEDIUM
	pic_money ChannelerPic,    1500 ; CHANNELER
	pic_money KimonoGirlPic,   1500 ; KIMONO_GIRL
	pic_money PokefanFPic,     1500 ; POKEFANF
	pic_money PokefanMPic,     1500 ; POKEFANM
	pic_money OfficerPic,      1500 ; OFFICER
	pic_money ReiPic,          1500 ; REI
	pic_money KurtPic,         1500 ; KURT
	assert_table_length NUM_TRAINERS

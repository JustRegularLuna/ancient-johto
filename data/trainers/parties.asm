TrainerDataPointers:
	table_width 2, TrainerDataPointers
	dw ProfElmData      ; PROF_ELM
	dw ProfOakData      ; PROF_OAK
	dw Rival1Data       ; RIVAL1
	dw Rival2Data       ; RIVAL2
	dw FalknerData      ; FALKNER
	dw BugsyData        ; BUGSY
	dw WhitneyData      ; WHITNEY
	dw MortyData        ; MORTY
	dw PryceData        ; PRYCE
	dw JasmineData      ; JASMINE
	dw ChuckData        ; CHUCK
	dw ClairData        ; CLAIR
	dw WillData         ; WILL
	dw MikanData        ; MIKAN
	dw WalkerData       ; WALKER
	dw KarenData        ; KAREN
	dw ChampionData     ; CHAMPION
	dw KogaData         ; KOGA
	dw LoreleiData      ; LORELEI
	dw BrunoData        ; BRUNO
	dw LanceData        ; LANCE
	dw RedData          ; RED
	dw BlueData         ; BLUE
	dw AgathaData       ; AGATHA
	dw BrockData        ; BROCK
	dw MistyData        ; MISTY
	dw LtSurgeData      ; LT_SURGE
	dw ErikaData        ; ERIKA
	dw JanineData       ; JANINE
	dw SabrinaData      ; SABRINA
	dw BlaineData       ; BLAINE
	dw GiovanniData     ; GIOVANNI
	dw ExecutiveMData   ; EXECUTIVEM
	dw ExecutiveFData   ; EXECUTIVEF
	dw GruntMData       ; GRUNTM
	dw GruntFData       ; GRUNTF
	dw JessieJamesData  ; JESSIE_JAMES
	dw ButchCassidyData ; BUTCH_CASSIDY
	dw ImposterData     ; IMPOSTER
	dw ScientistData    ; SCIENTIST
	dw BurglarData      ; BURGLAR
	dw YoungsterData    ; YOUNGSTER
	dw BugCatcherData   ; BUG_CATCHER
	dw SchoolboyData    ; SCHOOLBOY
	dw BirdKeeperData   ; BIRD_KEEPER
	dw TwinsData        ; TWINS
	dw LassData         ; LASS
	dw BeautyData       ; BEAUTY
	dw PicnickerData    ; PICNICKER
	dw CamperData       ; CAMPER
	dw CooltrainerMData ; COOLTRAINERM
	dw CooltrainerFData ; COOLTRAINERF
	dw PokemaniacData   ; POKEMANIAC
	dw SuperNerdData    ; SUPER_NERD
	dw GentlemanData    ; GENTLEMAN
	dw SkierData        ; SKIER
	dw BoarderData      ; BOARDER
	dw TeacherFData     ; TEACHERF
	dw TeacherMData     ; TEACHERM
	dw FisherData       ; FISHER
	dw SwimmerMData     ; SWIMMERM
	dw SwimmerFData     ; SWIMMERF
	dw AthleteData      ; ATHLETE
	dw SailorData       ; SAILOR
	dw RockerData       ; ROCKER
	dw GuitaristData    ; GUITARIST
	dw HikerData        ; HIKER
	dw BikerData        ; BIKER
	dw CueBallData      ; CUE_BALL
	dw GamblerData      ; GAMBLER
	dw TamerData        ; TAMER
	dw FirebreatherData ; FIREBREATHER
	dw JugglerData      ; JUGGLER
	dw BlackbeltData    ; BLACKBELT
	dw PsychicData      ; PSYCHIC_TR
	dw HandymanData     ; HANDYMAN
	dw SoldierData      ; SOLDIER
	dw SageData         ; SAGE
	dw MediumData       ; MEDIUM
	dw ChannelerData    ; CHANNELER
	dw KimonoGirlData   ; KIMONO_GIRL
	dw PokefanFData     ; POKEFANF
	dw PokefanMData     ; POKEFANM
	dw OfficerData      ; OFFICER
	dw ReiData          ; REI
	dw KurtData         ; KURT
	assert_table_length NUM_TRAINERS

; Trainer data structure:
; - db TRAINERTYPE_* dw ;ant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:  db level, species
;    * for TRAINERTYPE_MOVES:   db level, species, 4 moves
; - db -1 ; end

ProfElmData:      ; PROF_ELM
; 01 - (placeholder)
	db "ELM@", TRAINERTYPE_NORMAL
	db 66, MEGANIUM
	db 66, AQUARIA
	db 66, DYNABEAR
	db -1 ; end

ProfOakData:      ; PROF_OAK
; 01 - (placeholder)
	db "OAK@", TRAINERTYPE_NORMAL
	db 66, VENUSAUR
	db 66, BLASTOISE
	db 66, CHARIZARD
	db -1 ; end

Rival1Data:       ; RIVAL1
; First Battle Parties (Sakura Town)
	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 5, STARTER2 ; Cruz (Player chose Cubburn)
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 5, STARTER3 ; Chikorita (Player chose Cruz)
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 5, STARTER1 ; Cubburn (Player chose Chikorita)
	db -1 ; end

Rival2Data:       ; RIVAL2
; 01 - placeholder party
	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

FalknerData:      ; FALKNER
; 01 - placeholder party
	db "FALKNER@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BugsyData:        ; BUGSY
; 01 - placeholder party
	db "BUGSY@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

WhitneyData:      ; WHITNEY
; 01 - placeholder party
	db "WHITNEY@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

MortyData:        ; MORTY
; 01 - placeholder party
	db "MORTY@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

PryceData:        ; PRYCE
; 01 - placeholder party
	db "PRYCE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

JasmineData:      ; JASMINE
; 01 - placeholder party
	db "JASMINE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ChuckData:        ; CHUCK
; 01 - placeholder party
	db "CHUCK@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ClairData:        ; CLAIR
; 01 - placeholder party
	db "CLAIR@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

WillData:         ; WILL
; 01 - placeholder party
	db "WILL@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

MikanData:        ; MIKAN
; 01 - placeholder party
	db "MIKAN@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

WalkerData:       ; WALKER
; 01 - placeholder party
	db "WALKER@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

KarenData:        ; KAREN
; 01 - placeholder party
	db "KAREN@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ChampionData:     ; CHAMPION
; 01 - placeholder party
	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

KogaData:         ; KOGA
; 01 - placeholder party
	db "KOGA@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

LoreleiData:      ; LORELEI
; 01 - placeholder party
	db "LORELEI@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BrunoData:        ; BRUNO
; 01 - placeholder party
	db "BRUNO@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

LanceData:        ; LANCE
; 01 - placeholder party
	db "LANCE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

RedData:          ; RED
; 01 - placeholder party
	db "RED@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BlueData:         ; BLUE
; 01 - placeholder party
	db "BLUE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

AgathaData:       ; AGATHA
; 01 - placeholder party
	db "AGATHA@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BrockData:        ; BROCK
; 01 - placeholder party
	db "BROCK@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

MistyData:        ; MISTY
; 01 - placeholder party
	db "MISTY@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

LtSurgeData:      ; LT_SURGE
; 01 - placeholder party
	db "LT.SURGE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ErikaData:        ; ERIKA
; 01 - placeholder party
	db "ERIKA@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

JanineData:       ; JANINE
; 01 - placeholder party
	db "JANINE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

SabrinaData:      ; SABRINA
; 01 - placeholder party
	db "SABRINA@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BlaineData:       ; BLAINE
; 01 - placeholder party
	db "BLAINE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

GiovanniData:     ; GIOVANNI
; 01 - placeholder party
	db "GIOVANNI@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ExecutiveMData:   ; EXECUTIVEM
; 01 - placeholder party
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ExecutiveFData:   ; EXECUTIVEF
; 01 - placeholder party
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

GruntMData:       ; GRUNTM
; 01 - placeholder party
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

GruntFData:       ; GRUNTF
; 01 - placeholder party
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

JessieJamesData:  ; JESSIE_JAMES
; 01 - placeholder party
	db "DUO@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ButchCassidyData: ; BUTCH_CASSIDY
; 01 - placeholder party
	db "DUO@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ImposterData:     ; IMPOSTER
; 01 - placeholder party
	db "OAK@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ScientistData:    ; SCIENTIST
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BurglarData:      ; BURGLAR
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

YoungsterData:    ; YOUNGSTER
; 01 - Evergreen Woods
	db "ALAN@", TRAINERTYPE_NORMAL
	db 9, NIDORAN_M
	db -1 ; end

BugCatcherData:   ; BUG_CATCHER
; 01 - Evergreen Woods
	db "PETER@", TRAINERTYPE_NORMAL
	db 6, SPIDETTE
	db 7, SPIDETTE
	db -1 ; end

; 02 - Evergreen Woods
	db "WADE@", TRAINERTYPE_NORMAL
	db 6, CATERPIE
	db 7, METAPOD
	db 7, KAKUNA
	db 8, LEDYBA
	db -1 ; end

; 03 - Evergreen Woods
	db "KEN@", TRAINERTYPE_NORMAL
	db 6, WEEDLE
	db 7, KAKUNA
	db 7, KAKUNA
	db -1 ; end

SchoolboyData:    ; SCHOOLBOY
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BirdKeeperData:   ; BIRD_KEEPER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

TwinsData:        ; TWINS
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

LassData:         ; LASS
; 01 - Evergreen Woods
	db "CHEYENNE@", TRAINERTYPE_NORMAL
	db 7, RINRING
	db 7, MEOWTH
	db -1 ; end

BeautyData:       ; BEAUTY
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

PicnickerData:    ; PICNICKER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

CamperData:       ; CAMPER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

CooltrainerMData: ; COOLTRAINERM
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

CooltrainerFData: ; COOLTRAINERF
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

PokemaniacData:   ; POKEMANIAC
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

SuperNerdData:    ; SUPER_NERD
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

GentlemanData:    ; GENTLEMAN
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

SkierData:        ; SKIER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BoarderData:      ; BOARDER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

TeacherFData:     ; TEACHERF
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

TeacherMData:     ; TEACHERM
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

FisherData:       ; FISHER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

SwimmerMData:     ; SWIMMERM
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

SwimmerFData:     ; SWIMMERF
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

AthleteData:      ; ATHLETE
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

SailorData:       ; SAILOR
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

RockerData:       ; ROCKER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

GuitaristData:    ; GUITARIST
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

HikerData:        ; HIKER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BikerData:        ; BIKER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

CueBallData:      ; CUE_BALL
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

GamblerData:      ; GAMBLER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

TamerData:        ; TAMER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

FirebreatherData: ; FIREBREATHER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

JugglerData:      ; JUGGLER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

BlackbeltData:    ; BLACKBELT
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

PsychicData:      ; PSYCHIC_TR
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

HandymanData:     ; HANDYMAN
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

SoldierData:      ; SOLDIER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

SageData:         ; SAGE
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

MediumData:       ; MEDIUM
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ChannelerData:    ; CHANNELER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

KimonoGirlData:   ; KIMONO_GIRL
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

PokefanFData:     ; POKEFANF
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

PokefanMData:     ; POKEFANM
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

OfficerData:      ; OFFICER
; 01 - placeholder party
	db "???@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

ReiData:          ; REI
; 01 - placeholder party
	db "REI@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

KurtData:         ; KURT
; 01 - placeholder party
	db "KURT@", TRAINERTYPE_NORMAL
	db 5, RATTATA
	db -1 ; end

TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw UnusedJugglerData
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData

; Trainer data structure:
; - db TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:  db level, species
;    * for TRAINERTYPE_MOVES:   db level, species, 4 moves
; - db -1 ; end

YoungsterData:
BugCatcherData:
LassData:
SailorData:
JrTrainerMData:
JrTrainerFData:
PokemaniacData:
SuperNerdData:
HikerData:
BikerData:
BurglarData:
EngineerData:
UnusedJugglerData:
FisherData:
SwimmerData:
CueBallData:
GamblerData:
BeautyData:
PsychicData:
RockerData:
JugglerData:
TamerData:
BirdKeeperData:
BlackbeltData:
ProfOakData:
ChiefData:
ScientistData:
GiovanniData:
RocketData:
CooltrainerMData:
CooltrainerFData:
BrunoData:
BrockData:
MistyData:
LtSurgeData:
ErikaData:
KogaData:
BlaineData:
SabrinaData:
GentlemanData:
Green2Data:
Green3Data:
LoreleiData:
ChannelerData:
AgathaData:
LanceData:
Green1Data:
	db TRAINERTYPE_NORMAL
	db 5, SQUIRTLE
	db -1 ; end

	db TRAINERTYPE_NORMAL
	db 5, BULBASAUR
	db -1 ; end

	db TRAINERTYPE_NORMAL
	db 5, CHARMANDER
	db -1 ; end

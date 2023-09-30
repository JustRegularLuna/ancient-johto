; wEventFlags constants

; In some places the bit number is actually important, but this system hides them
; Trainer flags are an example of the bit number being important, but hidden
; So I am keeping the flags very clearly grouped into bytes to save myself headaches

	const_def

; Somewhat Important events
	const EVENT_GOT_STARTER
	const EVENT_GOT_POKEDEX
	const EVENT_WONDER_TRADE_ENABLED
	const EVENT_MET_BILL
	const EVENT_HALL_OF_FAME_DEX_RATING
	const EVENT_SAFARI_GAME_OVER
	const EVENT_IN_SAFARI_ZONE
	const_skip

; New Bark Town events
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip

; Cherrygrove City events
	const EVENT_GOT_TOWN_MAP
	const EVENT_GOT_CHERRYGROVE_KINGS_ROCK
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip

; Route 30 events
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip

; Indigo Plateau events
	const ELITE4_EVENTS_START
	const EVENT_BEAT_LORELEIS_ROOM_TRAINER_0
	const_skip
	const_skip
	const_skip
	const_skip
	const EVENT_AUTOWALKED_INTO_LORELEIS_ROOM
	const_skip

	const_skip
	const EVENT_BEAT_BRUNOS_ROOM_TRAINER_0
	const_skip
	const_skip
	const_skip
	const_skip
	const EVENT_AUTOWALKED_INTO_BRUNOS_ROOM
	const_skip

	const_skip
	const EVENT_BEAT_AGATHAS_ROOM_TRAINER_0
	const_skip
	const_skip
	const_skip
	const_skip
	const EVENT_AUTOWALKED_INTO_AGATHAS_ROOM
	const_skip

	const_skip
	const EVENT_BEAT_LANCES_ROOM_TRAINER_0
	const_skip
	const_skip
	const_skip
	const_skip
	const EVENT_BEAT_LANCE
	const EVENT_LANCES_ROOM_LOCK_DOOR

	const_skip
	const EVENT_BEAT_CHAMPION_RIVAL
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const ELITE4_CHAMPION_EVENTS_END

; Snorlax events
	const EVENT_FIGHT_ROUTE12_SNORLAX
	const EVENT_BEAT_ROUTE12_SNORLAX
	const EVENT_FIGHT_ROUTE16_SNORLAX
	const EVENT_BEAT_ROUTE16_SNORLAX
	const_skip
	const_skip
	const_skip
	const_skip

; Pewter City events
	const EVENT_GAVE_FOSSIL_TO_LAB
	const EVENT_LAB_STILL_REVIVING_FOSSIL
	const EVENT_LAB_HANDING_OVER_FOSSIL_MON
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip

; Seafoam Island events
	const EVENT_SEAFOAM2_BOULDER1_DOWN_HOLE
	const EVENT_SEAFOAM2_BOULDER2_DOWN_HOLE
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip

	const EVENT_SEAFOAM3_BOULDER1_DOWN_HOLE
	const EVENT_SEAFOAM3_BOULDER2_DOWN_HOLE
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip

	const EVENT_SEAFOAM4_BOULDER1_DOWN_HOLE
	const EVENT_SEAFOAM4_BOULDER2_DOWN_HOLE
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip

	const_skip
	const_skip
	const EVENT_BEAT_ARTICUNO
	const_skip
	const_skip
	const_skip
	const_skip
	const_skip

; End of events
	const_next $A00
NUM_EVENTS EQU const_value

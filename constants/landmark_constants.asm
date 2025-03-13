; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const LANDMARK_SPECIAL           ; 00
; Johto landmarks
DEF JOHTO_LANDMARK EQU const_value
	const LANDMARK_NEW_BARK_TOWN
	const LANDMARK_ROUTE_29
	const LANDMARK_NATIONAL_PARK
DEF KANTO_LANDMARK EQU const_value
	const LANDMARK_FAST_SHIP
DEF NUM_LANDMARKS EQU const_value

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
DEF NUM_REGIONS EQU const_value

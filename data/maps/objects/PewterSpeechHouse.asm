PewterSpeechHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 5, LAST_MAP
	warp  3,  7, 5, LAST_MAP

	def_signs

	def_objects

	def_warps_to PEWTER_SPEECH_HOUSE

PewterSpeechHouse_Script:
	jp EnableAutoTextBoxDrawing

PewterSpeechHouse_TextPointers:
	dw -1

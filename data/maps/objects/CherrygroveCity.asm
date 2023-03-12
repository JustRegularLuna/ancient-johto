; text constants
	const_def 1
	; NPCs
	const CHERRYGROVE_RIVAL
	; Signs
	const CHERRYGROVE_CITY_SIGN

CherrygroveCity_Object:
	db $35 ; border block

	def_warps

	def_signs

	def_objects

	def_warps_to CHERRYGROVE_CITY


CherrygroveCity_Script:
	jp EnableAutoTextBoxDrawing

CherrygroveCity_TextPointers:
	dw CherrygroveCityText1

CherrygroveCityText1:
	text "!"
	done

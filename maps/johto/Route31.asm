; text constants
	const_def 1
	; NPCs

	; Signs

Route31_Object:
	db $5 ; border block

	def_warps

	def_signs

	def_objects

	def_warps_to ROUTE_31


Route31_Script:
	jp EnableAutoTextBoxDrawing

Route31_TextPointers:
	dw -1

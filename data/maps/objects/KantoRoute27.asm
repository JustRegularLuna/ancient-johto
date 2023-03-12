; text constants
	const_def 1
	; NPCs
	;const KANTO_ROUTE27_FISHER
	; Signs
	;const KANTO_ROUTE27_SIGN

KantoRoute27_Object:
	db $35 ; border block

	def_warps
	warp 36,  5, 1, TOHJO_FALLS
	;warp 33,  7, 0, ROUTE_27_HOUSE

	def_signs
	;sign 25,  7, KANTO_ROUTE27_SIGN

	def_objects
	;object SPRITE_FISHER, 20, 10, STAY, LEFT, KANTO_ROUTE27_FISHER

	def_warps_to KANTO_ROUTE_27


KantoRoute27_Script:
	jp EnableAutoTextBoxDrawing

KantoRoute27_TextPointers:
	dw -1

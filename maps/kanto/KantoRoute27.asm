; text constants
	const_def 1
	; NPCs
	;const KANTO_ROUTE27_FISHER
	; Signs
	;const KANTO_ROUTE27_SIGN

KantoRoute27_Object:
	db $35 ; border block

	def_warp_events
	warp_event 36,  5, TOHJO_FALLS, 2
	;warp 33,  7, 0, ROUTE_27_HOUSE

	def_bg_events
	;bg_event 25,  7, KANTO_ROUTE27_SIGN

	def_object_events
	;object_event 20, 10, SPRITE_FISHER, STAY, LEFT, KANTO_ROUTE27_FISHER

	def_warps_to KANTO_ROUTE_27


KantoRoute27_Script:
	jp EnableAutoTextBoxDrawing

KantoRoute27_TextPointers:
	dw -1

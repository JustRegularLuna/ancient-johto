; text constants
	const_def 1
	; NPCs
	const TOHJO_FALLS_ITEMBALL
	; Signs

TohjoFalls_Object:
	db $9 ; border block

	def_warp_events
	warp_event 13, 15, JOHTO_ROUTE_27, 1
	warp_event 25, 15, KANTO_ROUTE_27, 1

	def_bg_events

	def_object_events

	def_warps_to TOHJO_FALLS


TohjoFalls_Script:
	jp EnableAutoTextBoxDrawing

TohjoFalls_TextPointers:
	dw -1

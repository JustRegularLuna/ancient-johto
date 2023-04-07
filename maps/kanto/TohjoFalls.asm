; text constants
	const_def 1
	; NPCs
	const TOHJO_FALLS_ITEMBALL
	; Signs

TohjoFalls_Object:
	db $9 ; border block

	def_warps
	warp 13, 15, 0, JOHTO_ROUTE_27
	warp 25, 15, 0, KANTO_ROUTE_27

	def_signs

	def_objects

	def_warps_to TOHJO_FALLS


TohjoFalls_Script:
	jp EnableAutoTextBoxDrawing

TohjoFalls_TextPointers:
	dw -1

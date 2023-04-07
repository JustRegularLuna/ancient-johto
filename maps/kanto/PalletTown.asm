PalletTown_Object:
	db $b ; border block

	def_warps
	warp  5,  5, 0, REDS_HOUSE_1F
	warp 13,  5, 0, BLUES_HOUSE
	warp 12, 11, 1, OAKS_LAB

	def_signs

	def_objects

	def_warps_to PALLET_TOWN

PalletTown_Script:
	jp EnableAutoTextBoxDrawing

PalletTown_TextPointers:
	dw -1

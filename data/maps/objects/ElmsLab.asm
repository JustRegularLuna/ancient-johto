ElmsLab_Object:
	db $3 ; border block

	def_warps
	warp  4, 11, 3, LAST_MAP
	warp  5, 11, 3, LAST_MAP

	def_signs

	def_objects

	def_warps_to ELMS_LAB


ElmsLab_Script:
	jp EnableAutoTextBoxDrawing

ElmsLab_TextPointers:
	dw ElmsLabText1

ElmsLabText1:
	text "Hello world!"
	done

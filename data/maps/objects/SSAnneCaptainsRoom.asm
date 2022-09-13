SSAnneCaptainsRoom_Object:
	db $c ; border block

	def_warps
	warp  0,  7, 8, SS_ANNE_2F

	def_signs
	sign  4,  1, 2 ; SSAnne7Text2
	sign  1,  2, 3 ; SSAnne7Text3

	def_objects

	def_warps_to SS_ANNE_CAPTAINS_ROOM

SSAnneCaptainsRoom_Script:
	jp EnableAutoTextBoxDrawing

SSAnneCaptainsRoom_TextPointers:
	dw -1

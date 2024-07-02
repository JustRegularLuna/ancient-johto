VermilionPidgeyHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 5
	warp_event  3,  7, LAST_MAP, 5

	def_bg_events

	def_object_events

	def_warps_to VERMILION_PIDGEY_HOUSE

VermilionPidgeyHouse_Script:
	jp EnableAutoTextBoxDrawing

VermilionPidgeyHouse_TextPointers:
	dw -1

	object_const_def

KansaiRoute1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 52, 10, BGEVENT_READ, KansaiRoute1Sign1
	bg_event  3,  5, BGEVENT_READ, KansaiRoute1Sign2

	def_object_events


KansaiRoute1_MapScripts:
	def_scene_scripts

	def_callbacks

KansaiRoute1Sign1:
	jumptext KansaiRoute1Sign1Text

KansaiRoute1Sign2:
	jumptext KansaiRoute1Sign2Text

KansaiRoute1Sign1Text:
	text "ROUTE 1"

	para "SILENT HILLS -"
	line "SAKURA TOWN"
	done

KansaiRoute1Sign2Text:
	text "ROUTE 1"

	para "SAKURA TOWN -"
	line "SILENT HILLS"
	done

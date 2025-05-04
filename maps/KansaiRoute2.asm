	object_const_def

KansaiRoute2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, EVERGREEN_WOODS_SOUTH_GATE_1F, 1
	warp_event 10,  5, EVERGREEN_WOODS_SOUTH_GATE_1F, 2

	def_coord_events

	def_bg_events
	bg_event 12, 32, BGEVENT_READ, KansaiRoute2Sign
	bg_event 11, 23, BGEVENT_READ, KansaiRoute2TipsSign
	bg_event 12,  6, BGEVENT_READ, KansaiRoute2WoodsSign

	def_object_events


KansaiRoute2_MapScripts:
	def_scene_scripts

	def_callbacks

KansaiRoute2Sign:
	jumptext KansaiRoute2SignText

KansaiRoute2TipsSign:
	jumptext KansaiRoute2TipsSignText

KansaiRoute2WoodsSign:
	jumptext KansaiRoute2WoodsSignText

KansaiRoute2SignText:
	text "ROUTE 2"

	para "SAKURA TOWN -"
	line "BELLFLOWER CITY"
	done

KansaiRoute2TipsSignText:
	text "TRAINER TIPS"

	para "Fruit trees will"
	line "regrow BERRIES"
	cont "on their own."

	para "Check back after"
	line "a day or so."
	done

KansaiRoute2WoodsSignText:
	text "EVERGREEN WOODS"
	done

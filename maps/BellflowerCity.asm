	object_const_def

BellflowerCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 29, BELLFLOWER_POKECENTER_1F, 1
	warp_event 25, 29, BELLFLOWER_MART, 1
	warp_event 18, 29, BELLFLOWER_GYM, 1
	warp_event 19, 29, BELLFLOWER_GYM, 2
	warp_event 32, 17, BELLFLOWER_SCHOOL_HOUSE, 1
	warp_event 33, 17, BELLFLOWER_SCHOOL_HOUSE, 2
	warp_event  3, 15, BELLFLOWER_HOUSE, 1
	warp_event 33,  3, KURTS_HOUSE, 1
	warp_event 16,  4, BELLFLOWER_MUSEUM_1F, 1
	warp_event 17,  4, BELLFLOWER_MUSEUM_1F, 2

	def_coord_events

	def_bg_events

	def_object_events


BellflowerCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, BellflowerCityFlypointCallback

BellflowerCityFlypointCallback:
	setflag ENGINE_FLYPOINT_BELLFLOWER_CITY
	endcallback

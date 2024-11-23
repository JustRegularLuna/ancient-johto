; text constants
	const_def 1
	; NPCs
	const_export BELLFLOWER_HOUSE_POKEFAN
	const_export BELLFLOWER_HOUSE_KYLE
	; signs

BellflowerHouse_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 9
	warp_event  4,  7, LAST_MAP, 9

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, STAY, RIGHT, BELLFLOWER_HOUSE_POKEFAN
	object_event  5,  4, SPRITE_GAMEBOY_KID, STAY, DOWN, BELLFLOWER_HOUSE_KYLE

	def_warps_to BELLFLOWER_HOUSE


BellflowerHouse_Script:
	jp EnableAutoTextBoxDrawing

BellflowerHouse_TextPointers:
	dw BellflowerHousePokefanText
	dw BellflowerHouseKyleText

BellflowerHousePokefanText:
	text "Some #MON can"
	line "evolve when you"
	cont "trade them."

	para "The LINK CABLE"
	line "seems to be what"
	cont "causes it."
	done

BellflowerHouseKyleText:
	text_asm
	ld a, TRADE_FOR_ROCKY
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

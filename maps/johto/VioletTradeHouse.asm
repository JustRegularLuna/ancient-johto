; text constants
	const_def 1
	; NPCs
	const_export VIOLET_TRADEHOUSE_POKEFAN
	const_export VIOLET_TRADEHOUSE_KYLE
	; signs

VioletTradeHouse_Object:
	db $0 ; border block

	def_warps
	warp  3,  7, 5, LAST_MAP
	warp  4,  7, 5, LAST_MAP

	def_signs

	def_objects
	object SPRITE_POKEFAN_M,  2,  3, STAY, RIGHT, VIOLET_TRADEHOUSE_POKEFAN
	object SPRITE_GAMEBOY_KID,  5,  4, STAY, DOWN, VIOLET_TRADEHOUSE_KYLE

	def_warps_to VIOLET_TRADE_HOUSE


VioletTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

VioletTradeHouse_TextPointers:
	dw VioletTradeHousePokefanText
	dw VioletTradeHouseKyleText

VioletTradeHousePokefanText:
	text "Some #MON can"
	line "evolve when you"
	cont "trade them."

	para "The LINK CABLE"
	line "seems to be what"
	cont "causes it."
	done

VioletTradeHouseKyleText:
	text_asm
	ld a, TRADE_FOR_ROCKY
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

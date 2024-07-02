; text constants
	const_def 1
	; NPCs
	const_export SAKURA_MART_CLERK
	const_export SAKURA_MART_CUSTOMER
	const_export SAKURA_MART_CUSTOMER_2

SakuraMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 2
	warp_event  2,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, STAY, RIGHT, SAKURA_MART_CLERK
	object_event  6,  6, SPRITE_COOLTRAINER_M, STAY, UP, SAKURA_MART_CUSTOMER
	object_event  8,  2, SPRITE_COOLTRAINER_F, STAY, NONE, SAKURA_MART_CUSTOMER_2

	def_warps_to SAKURA_MART

SakuraMart_Script:
	; Load the appropriate text pointers
	CheckEvent EVENT_DELIVERED_MYSTERY_EGG
	jr nz, .delivered_egg
	ld hl, SakuraMart_TextPointers
	jr .done
.delivered_egg
	ld hl, SakuraMart_TextPointers2
.done
	ld a, l
	ld [wMapTextPtr], a
	ld a, h
	ld [wMapTextPtr+1], a
	jp EnableAutoTextBoxDrawing

; Before delivering Mystery Egg (No Pokeballs)
SakuraMart_TextPointers:
	dw SakuraCashierText
	dw SakuraCustomerText
	dw SakuraCustomer2Text

; After delivering Mystery Egg (Pokeballs available)
SakuraMart_TextPointers2:
	dw SakuraCashierText2
	dw SakuraCustomerText2
	dw SakuraCustomer2Text

INCLUDE "data/items/marts/sakura.asm"

SakuraCustomerText:
	text "Darn! #BALLs"
	line "are all sold out!"

	para "I wonder when"
	line "they'll get more?"
	done

SakuraCustomerText2:
	text "Alright! I'm"
	line "gonna load up on"
	cont "#BALLs now!"
	done

SakuraCustomer2Text:
	text "These small town"
	line "shops never seem"

	para "to have what I'm"
	line "looking for."

	para "But going all the"
	line "way to MARIGOLD"
	cont "takes so long…"
	done

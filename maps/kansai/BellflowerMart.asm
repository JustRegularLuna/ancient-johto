; text constants
	const_def 1
	; NPCs
	const_export BELLFLOWER_MART_CLERK
	const_export BELLFLOWER_MART_CUSTOMER
	const_export BELLFLOWER_MART_CUSTOMER_2

BellflowerMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 2
	warp_event  2,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, STAY, RIGHT, BELLFLOWER_MART_CLERK
	object_event  6,  6, SPRITE_BALDING_GUY, STAY, UP, BELLFLOWER_MART_CUSTOMER
	object_event  8,  2, SPRITE_BEAUTY, WALK, LEFT_RIGHT, BELLFLOWER_MART_CUSTOMER_2

	def_warps_to BELLFLOWER_MART

BellflowerMart_Script:
	jp EnableAutoTextBoxDrawing

BellflowerMart_TextPointers:
	dw BellflowerCashierText
	dw BellflowerCustomerText
	dw BellflowerCustomer2Text

INCLUDE "data/items/marts/bellflower.asm"

BellflowerCustomerText:
	text "I wish this store"
	line "sold PP UP!"

	para "It seems like my"
	line "best moves never"
	cont "last long enough…"
	done

BellflowerCustomer2Text:
	text "Some people give"
	line "me a hard time"

	para "about it, but I'm"
	line "still hung up on"

	para "my X-SPECIAL in"
	line "battles."
	done

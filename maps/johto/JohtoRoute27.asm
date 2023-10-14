; text constants
	const_def 1
	; NPCs
	const_export JOHTO_ROUTE27_FISHER
	; Signs
	const JOHTO_ROUTE27_SIGN

JohtoRoute27_Object:
	db $35 ; border block

	def_warps
	warp 26,  5, 0, TOHJO_FALLS

	def_signs
	sign 25,  7, JOHTO_ROUTE27_SIGN

	def_objects
	object SPRITE_FISHER, 20, 10, STAY, LEFT, JOHTO_ROUTE27_FISHER

	def_warps_to JOHTO_ROUTE_27


JohtoRoute27_Script:
	jp EnableAutoTextBoxDrawing

JohtoRoute27_TextPointers:
	dw JohtoRoute27FisherText
	dw JohtoRoute27SignText


JohtoRoute27FisherText:
	text "Hey there! Do you"
	line "know where you're"
	cont "going?"

	para "This road leads to"
	line "KANTO!"
	done

JohtoRoute27SignText:
	text "TOHJO FALLS"
	done

	db HOOTHOOT ; pokedex id

	db  60,  30,  30,  50,  56
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/hoothoot.pic", 0, 1 ; sprite dimensions
	dw HoothootPicFront, HoothootPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HoothootPicFront)

	db SUIKAMI ; pokedex id

	db 100,  75, 115,  85, 115
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/suikami.pic", 0, 1 ; sprite dimensions
	dw SuikamiPicFront, SuikamiPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SuikamiPicFront)

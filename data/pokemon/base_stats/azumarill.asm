	db AZUMARILL ; pokedex id

	db 100,  50,  80,  50,  80
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/azumarill.pic", 0, 1 ; sprite dimensions
	dw AzumarillPicFront, AzumarillPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(AzumarillPicFront)

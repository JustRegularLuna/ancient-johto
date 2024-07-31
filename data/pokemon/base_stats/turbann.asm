	db TURBANN ; pokedex id

	db  50,  90, 140,  70, 130
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp

	INCBIN "gfx/pokemon/front/turbann.pic", 0, 1 ; sprite dimensions
	dw TurbannPicFront, TurbannPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TurbannPicFront)

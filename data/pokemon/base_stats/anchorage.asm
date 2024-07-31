	db ANCHORAGE ; pokedex id

	db  90, 110,  50, 110,  55
	;   hp  atk  def  spd  spc

	db WATER, STEEL ; type
	db 255 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/anchorage.pic", 0, 1 ; sprite dimensions
	dw AnchoragePicFront, AnchoragePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(AnchoragePicFront)

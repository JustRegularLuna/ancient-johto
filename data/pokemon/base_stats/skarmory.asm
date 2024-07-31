	db SKARMORY ; pokedex id

	db  65,  80, 140,  70,  70
	;   hp  atk  def  spd  spc

	db STEEL, FLYING ; type
	db 75 ; catch rate
	db 168 ; base exp

	INCBIN "gfx/pokemon/front/skarmory.pic", 0, 1 ; sprite dimensions
	dw SkarmoryPicFront, SkarmoryPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SkarmoryPicFront)

	db SUNNEE ; pokedex id

	db  75,  75,  55,  30, 105
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/front/sunnee.pic", 0, 1 ; sprite dimensions
	dw SunneePicFront, SunneePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SunneePicFront)

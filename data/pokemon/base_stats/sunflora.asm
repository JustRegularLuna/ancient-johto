	db SUNFLORA ; pokedex id

	db 75, 75, 55, 30, 105
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/gmon/sunflora.pic", 0, 1 ; sprite dimensions
	dw SunfloraPicFront, SunfloraPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SunfloraPicFront)

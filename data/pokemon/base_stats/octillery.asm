	db OCTILLERY ; pokedex id

	db 75, 105, 75, 45, 105
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/gmon/octillery.pic", 0, 1 ; sprite dimensions
	dw OctilleryPicFront, OctilleryPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(OctilleryPicFront)

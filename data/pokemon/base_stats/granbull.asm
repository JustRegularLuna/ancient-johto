	db GRANBULL ; pokedex id

	db 90, 120, 75, 45, 60
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/granbull.pic", 0, 1 ; sprite dimensions
	dw GranbullPicFront, GranbullPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(GranbullPicFront)

	db POLIWRATH ; pokedex id

	db  90,  95,  95,  70,  90
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/gmon/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(PoliwrathPicFront)

	db SCIZOR ; pokedex id

	db 70, 130, 100, 65, 80
	;   hp  atk  def  spd  spc

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/gmon/scizor.pic", 0, 1 ; sprite dimensions
	dw ScizorPicFront, ScizorPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(ScizorPicFront)

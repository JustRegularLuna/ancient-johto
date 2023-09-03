	db CUBONE ; pokedex id

	db  50,  50,  95,  35,  50
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/gmon/cubone.pic", 0, 1 ; sprite dimensions
	dw CubonePicFront, CubonePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(CubonePicFront)

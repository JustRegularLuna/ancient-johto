	db CLEFABLE ; pokedex id

	db  95,  70,  73,  60,  90
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/gmon/clefable.pic", 0, 1 ; sprite dimensions
	dw ClefablePicFront, ClefablePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(ClefablePicFront)

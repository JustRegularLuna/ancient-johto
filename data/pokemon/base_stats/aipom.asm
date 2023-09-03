	db AIPOM ; pokedex id

	db 55, 70, 55, 85, 55
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/gmon/aipom.pic", 0, 1 ; sprite dimensions
	dw AipomPicFront, AipomPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(AipomPicFront)

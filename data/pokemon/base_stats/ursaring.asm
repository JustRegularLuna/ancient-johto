	db URSARING ; pokedex id

	db 90, 130, 75, 55, 75
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 60 ; catch rate
	db 189 ; base exp

	INCBIN "gfx/pokemon/gmon/ursaring.pic", 0, 1 ; sprite dimensions
	dw UrsaringPicFront, UrsaringPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(UrsaringPicFront)

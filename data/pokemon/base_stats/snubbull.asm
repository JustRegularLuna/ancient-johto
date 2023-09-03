	db SNUBBULL ; pokedex id

	db 60, 80, 50, 30, 40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/gmon/snubbull.pic", 0, 1 ; sprite dimensions
	dw SnubbullPicFront, SnubbullPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SnubbullPicFront)

	db FLAAFFY ; pokedex id

	db 70, 55, 55, 45, 80
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 120 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/gmon/flaaffy.pic", 0, 1 ; sprite dimensions
	dw FlaaffyPicFront, FlaaffyPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(FlaaffyPicFront)

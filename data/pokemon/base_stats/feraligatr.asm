	db FERALIGATR ; pokedex id

	db 85, 105, 100, 78, 83
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/gmon/feraligatr.pic", 0, 1 ; sprite dimensions
	dw FeraligatrPicFront, FeraligatrPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(FeraligatrPicFront)

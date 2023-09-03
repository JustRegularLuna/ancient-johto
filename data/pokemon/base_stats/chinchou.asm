	db CHINCHOU ; pokedex id

	db 75, 38, 38, 67, 56
	;   hp  atk  def  spd  spc

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 90 ; base exp

	INCBIN "gfx/pokemon/gmon/chinchou.pic", 0, 1 ; sprite dimensions
	dw ChinchouPicFront, ChinchouPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(ChinchouPicFront)

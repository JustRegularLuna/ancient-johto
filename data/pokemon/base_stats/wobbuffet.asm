	db WOBBUFFET ; pokedex id

	db 190, 33, 58, 33, 58
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/gmon/wobbuffet.pic", 0, 1 ; sprite dimensions
	dw WobbuffetPicFront, WobbuffetPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(WobbuffetPicFront)

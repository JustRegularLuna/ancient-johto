	db JYNX ; pokedex id

	db  65,  50,  35,  95, 115
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/gmon/jynx.pic", 0, 1 ; sprite dimensions
	dw JynxPicFront, JynxPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(JynxPicFront)

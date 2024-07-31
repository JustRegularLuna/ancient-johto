	db MADAME ; pokedex id

	db  62, 135,  95,  65,  82
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/madame.pic", 0, 1 ; sprite dimensions
	dw MadamePicFront, MadamePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MadamePicFront)

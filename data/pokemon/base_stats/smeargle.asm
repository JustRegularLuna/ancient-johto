	db SMEARGLE ; pokedex id

	db  55,  20,  35,  75,  45
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/smeargle.pic", 0, 1 ; sprite dimensions
	dw SmearglePicFront, SmearglePicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SmearglePicFront)

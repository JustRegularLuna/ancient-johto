	db LICKIRAJA ; pokedex id

	db 110,  85,  95,  50,  95
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/lickiraja.pic", 0, 1 ; sprite dimensions
	dw LickirajaPicFront, LickirajaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(LickirajaPicFront)

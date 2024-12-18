	db LUGIA ; pokedex id

	db 106,  90, 130, 110, 154
	;   hp  atk  def  spd  spc

	db WATER, FLYING ; type
	db 3 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/lugia.pic", 0, 1 ; sprite dimensions
	dw LugiaPicFront, LugiaPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(LugiaPicFront)

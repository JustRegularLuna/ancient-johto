	db RAYLEEP ; pokedex id

	db  65,  40,  70,  70, 140
	;   hp  atk  def  spd  spc

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 168 ; base exp

	INCBIN "gfx/pokemon/front/rayleep.pic", 0, 1 ; sprite dimensions
	dw RayleepPicFront, RayleepPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(RayleepPicFront)

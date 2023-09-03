	db TYPHLOSION ; pokedex id

	db 78, 84, 78, 100, 109
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/gmon/typhlosion.pic", 0, 1 ; sprite dimensions
	dw TyphlosionPicFront, TyphlosionPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(TyphlosionPicFront)

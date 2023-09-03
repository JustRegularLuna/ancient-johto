	db AMPHAROS ; pokedex id

	db 90, 75, 75, 55, 115
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/gmon/ampharos.pic", 0, 1 ; sprite dimensions
	dw AmpharosPicFront, AmpharosPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(AmpharosPicFront)

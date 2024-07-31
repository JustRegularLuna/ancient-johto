	db HITMONJEAN ; pokedex id

	db  50,  95,  95,  70, 110
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 139 ; base exp

	INCBIN "gfx/pokemon/front/hitmonjean.pic", 0, 1 ; sprite dimensions
	dw HitmonjeanPicFront, HitmonjeanPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(HitmonjeanPicFront)

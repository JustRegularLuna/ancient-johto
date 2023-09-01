	db SENTRET ; pokedex id

	db 35, 46, 34, 20, 45
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/sentret.pic", 0, 1 ; sprite dimensions
	dw SentretPicFront, SentretPicBack

	ds 4 ; old level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SentretPicFront)

BorderPalettes:
IF DEF(_RED)
	INCBIN "gfx/sgb/red_border.tilemap"
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/sgb/blue_border.tilemap"
ENDC

	ds $100

IF DEF(_RED)
	RGB 24,  6,  6
	RGB 24, 24, 26
	RGB 14, 15, 20
	RGB  4,  7, 10
ENDC
IF DEF(_BLUE)
	RGB 24,  6,  6
	RGB 31, 27, 22
	RGB 27, 21, 15
	RGB  9,  6,  5
ENDC

	ds $18

IF DEF(_RED)
	RGB 18, 24, 18
	RGB 31, 26, 15
	RGB 26, 19, 10
	RGB 12,  7,  5
ENDC
IF DEF(_BLUE)
	RGB 18, 24, 18
	RGB 24, 25, 27
	RGB 18, 17, 21
	RGB  4,  7, 10
ENDC

	ds $18

IF DEF(_RED)
	RGB 18,  6, 31
	RGB 31, 31, 29
	RGB 31, 12,  0
	RGB  0,  0,  0
ENDC
IF DEF(_BLUE)
	RGB 18,  6, 31
	RGB 31, 31, 29
	RGB 31, 12,  0
	RGB  0,  0,  0
ENDC

	ds $18

SGBBorderGraphics:
IF DEF(_RED)
	INCBIN "gfx/sgb/red_border.2bpp"
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/sgb/blue_border.2bpp"
ENDC

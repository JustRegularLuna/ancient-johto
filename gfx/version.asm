TitleScreenGFX1:
IF DEF(_RED)
	INCBIN "gfx/title/logo_gold.2bpp"
ELIF DEF(_BLUE)
	INCBIN "gfx/title/logo_silver.2bpp"
ENDC
TitleScreenGFX1End:

TitleScreenGFX2:
IF DEF(_RED)
	INCBIN "gfx/title/title_gold.2bpp"
ELIF DEF(_BLUE)
	INCBIN "gfx/title/title_silver.2bpp"
ENDC
TitleScreenGFX2End:

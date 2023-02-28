; redgold currently uses rgbds 0.5.2 (builds in 0.6.0 but yells that every single macro is deprecated :roll_eyes:)
MAJOR EQU 0
MINOR EQU 5
PATCH EQU 2

IF !DEF(__RGBDS_MAJOR__) || !DEF(__RGBDS_MINOR__) || !DEF(__RGBDS_PATCH__)
	fail "redgold requires rgbds 0.5.2 or newer."
ELSE
IF (__RGBDS_MAJOR__ < MAJOR) || \
	(__RGBDS_MAJOR__ == MAJOR && __RGBDS_MINOR__ < MINOR) || \
	(__RGBDS_MAJOR__ == MAJOR && __RGBDS_MINOR__ == MINOR && __RGBDS_PATCH__ < PATCH)
	fail "redgold requires rgbds 0.5.2 or newer."
ENDC
ENDC

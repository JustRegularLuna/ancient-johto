ShowMarillTextScreens::
; Displays the welcome screen with difficulty and version number info
; Start by clearing and turning off the screen
	call ClearScreen
	call DisableLCD
; load the graphics for the screen
	ld hl, VersionScreenTiles
	ld de, vChars2
	ld bc, VersionScreenTilesEnd - VersionScreenTiles
	call CopyData	
; load the tilemap for the screen
	call CleanMarillScreen
; turn the screen back on
	call EnableLCD
	call Delay3
	call GBPalNormal
; display the version info text
	coord hl, 2, 2
	ld de, VersionScreenText
	call PlaceString
; wait for the player to press A
	call WaitForTextScrollButtonPress
; load the tilemap for the screen again
	call CleanMarillScreen
; display the second page
	coord hl, 2, 2
	ld de, VersionScreenText2
	call PlaceString
	; wait for the player to press A
	call WaitForTextScrollButtonPress
; load the tilemap for the screen again
	call CleanMarillScreen
; display the third page
	coord hl, 2, 2
	ld de, VersionScreenText3
	call PlaceString
	; wait for the player to press A
	call WaitForTextScrollButtonPress
; load the tilemap for the screen again
	call CleanMarillScreen
; display the fourth page
	coord hl, 2, 2
	ld de, VersionScreenText4
	call PlaceString
	; wait for the player to press A
	call WaitForTextScrollButtonPress
; wipe the screen and go back
	call ClearScreen
	ret

CleanMarillScreen:
	ld hl, VersionScreenTilemap
	ld de, wTileMap
	ld bc, VersionScreenTilemapEnd - VersionScreenTilemap
	jp CopyData

VersionScreenTiles:
	INCBIN "gfx/intro/version_screen_tiles.2bpp"
VersionScreenTilesEnd:

VersionScreenTilemap:
	INCBIN "gfx/intro/blank_text_screen.tilemap"
VersionScreenTilemapEnd:

VersionScreenText:
	db   " !! WARNING !!"
	next "CHEAT CODES FOR"
	next "VANILLA GAMES DO"
	next "NOT WORK ANYMORE"
	next ""
	next "Working codes"
	next "are in F.A.Q.@"

VersionScreenText2:
	db   "This is a free,"
	next "open-source ROM"
	next "hack by Luna."
	next "If you paid for"
	next "it, you were"
	next "ripped off.@"

VersionScreenText3:
	db   "Source code and"
	next "more info can"
	next "be found at:"
	next "www.github.com/"
	next "JustRegularLuna/"
	next "ancient-johto@"

VersionScreenText4:
	db   "I hope you enjoy"
	next "this nostalgic"
	next "adventure in the"
	next "Johto region and"
	next "beyond."
	next "  - Luna@"

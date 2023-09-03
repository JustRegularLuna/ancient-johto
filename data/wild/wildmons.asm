; wild pokemon data is divided into two parts.
; first part:  pokemon found in grass
; second part: pokemon found while surfing
; each part goes as follows:
    ; if first byte == 0, then
        ; no wild pokemon on this map
    ; if first byte != 0, then
        ; first byte is encounter rate
        ; followed by 20 bytes:
        ; level, species (ten times)


NoMons: ; All maps with no wild encounters use this table
	def_grass_wildmons 0 ; encounter rate
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons


; Johto Wild Pokémon

Route29Mons: ; ROUTE_29
	def_grass_wildmons 25 ; encounter rate
	db  2, PIDGEY
	db  3, PIDGEY
	db  3, RATTATA
	db  2, RATTATA
	db  2, SENTRET
	db  3, SENTRET
	db  3, HOOTHOOT
	db  4, HOOTHOOT
	db  4, HOPPIP
	db  5, HOPPIP
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons


Route30Mons: ; ROUTE_30
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  3, CATERPIE
	db  5, METAPOD
	db  3, SPINARAK
	db  3, PIDGEY
	db  4, PIDGEY
	db  3, RATTATA
	db  4, HOPPIP
	db  4, HOOTHOOT
	db  3, WEEDLE
	db  3, LEDYBA
ELSE
	db  3, WEEDLE
	db  5, KAKUNA
	db  3, LEDYBA
	db  3, PIDGEY
	db  4, PIDGEY
	db  3, RATTATA
	db  4, HOPPIP
	db  4, HOOTHOOT
	db  3, CATERPIE
	db  3, SPINARAK
ENDC
	end_grass_wildmons

	def_water_wildmons 15 ; encounter rate
	db 15, POLIWAG
	db 16, POLIWAG
	db 17, POLIWAG
	db 19, POLIWAG
	db 20, POLIWAG
	db 21, POLIWAG
	db 23, POLIWAG
	db 24, POLIWAG
	db 22, POLIWHIRL
	db 24, POLIWHIRL
	end_water_wildmons


Route31Mons: ; ROUTE_31
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  4, CATERPIE
	db  5, METAPOD
	db  4, SPINARAK
	db  3, BELLSPROUT
	db  4, BELLSPROUT
	db  3, PIDGEY
	db  4, RATTATA
	db  4, WEEDLE
	db  4, ZUBAT
	db  5, GASTLY
ELSE
	db  4, WEEDLE
	db  5, KAKUNA
	db  4, LEDYBA
	db  3, BELLSPROUT
	db  4, BELLSPROUT
	db  3, PIDGEY
	db  4, RATTATA
	db  4, CATERPIE
	db  4, ZUBAT
	db  5, GASTLY
ENDC
	end_grass_wildmons

	def_water_wildmons 15 ; encounter rate
	db 15, POLIWAG
	db 16, POLIWAG
	db 17, POLIWAG
	db 19, POLIWAG
	db 20, POLIWAG
	db 21, POLIWAG
	db 23, POLIWAG
	db 24, POLIWAG
	db 22, POLIWHIRL
	db 24, POLIWHIRL
	end_water_wildmons


; Kanto Wild Pokémon
; TODO

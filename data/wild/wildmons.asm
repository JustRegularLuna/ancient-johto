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


; Kansai Wild Pokémon

KansaiRoute1Mons: ; KANSAI_ROUTE_1
	def_grass_wildmons 25 ; encounter rate
	db  2, RATTATA
	db  2, RINRING
	db  2, PIDGEY
	db  3, RINRING
	db  3, RATTATA
	db  3, PIDGEY
	db  4, RINRING
	db  5, RATTATA
	db  3, PURRLEAF
	db  4, PURRLEAF
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons


KansaiRoute2Mons: ; KANSAI_ROUTE_2
	def_grass_wildmons 25 ; encounter rate
	db  3, RATTATA
	db  3, RINRING
	db  5, NIDORAN_F
	db  5, NIDORAN_M
	db  4, SPEAROW
	db  3, SPEAROW
	db  5, RATTATA
	db  5, RINRING
	db  4, PURRLEAF
	db  5, PURRLEAF
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons


EvergreenWoodsMons: ; EVERGREEN_WOODS
	def_grass_wildmons 25 ; encounter rate
	db  4, HOOTHOOT
	db  5, WEEDLE
	db  3, CATERPIE
	db  5, SPIDETTE
	db  4, LEDYBA
	db  6, KAKUNA
	db  4, METAPOD
	db  3, WOOPER
	db  3, KOTORA
	db  5, KOTORA
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db  5, WOOPER
	db 10, PSYDUCK
	db 15, POLIWAG
	db  5, PSYDUCK
	db 10, WOOPER
	db 15, POLIWAG
	db 20, QUAGSIRE
	db 25, POLIWHIRL
	db 30, PSYDUCK
	db 35, QUAGSIRE
	end_water_wildmons


KansaiRoute3Mons: ; KANSAI_ROUTE_3
	def_grass_wildmons 25 ; encounter rate
	db  4, BELLSPROUT
	db  5, BELLSPROUT
	db  4, PIDGEY
	db  5, SPEAROW
	db  4, RINRING
	db  6, MEOWTH
	db  4, RINRING
	db  3, MEOWTH
	db  3, PURRLEAF
	db  5, PURRLEAF
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db  5, WOOPER
	db 10, PSYDUCK
	db 15, POLIWAG
	db  5, PSYDUCK
	db 10, WOOPER
	db 15, POLIWAG
	db 20, QUAGSIRE
	db 25, POLIWHIRL
	db 30, PSYDUCK
	db 35, QUAGSIRE
	end_water_wildmons



; Kanto Wild Pokémon
; TODO

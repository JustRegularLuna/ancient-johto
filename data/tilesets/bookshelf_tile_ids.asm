MACRO bookshelf_tile
	db \1, \2
	db_tx_pre \3
ENDM

BookshelfTileIDs:
	; tileset id, bookshelf tile id, text id
	bookshelf_tile PLATEAU,           $30, IndigoPlateauStatues
	bookshelf_tile HOUSE,             $3D, TownMapText
	bookshelf_tile HOUSE,             $1E, BookOrSculptureText
	bookshelf_tile HOUSE,             $16, ItsATVText
	bookshelf_tile HOUSE,             $34, MyReflectionText
	bookshelf_tile MANSION,           $32, BookOrSculptureText
	bookshelf_tile PLAYERS_HOUSE,     $3E, BookOrSculptureText
	bookshelf_tile PLAYERS_ROOM,      $35, MagazinesText
	bookshelf_tile PLAYERS_ROOM,      $54, TownMapText
	bookshelf_tile LAB,               $28, BookOrSculptureText
	bookshelf_tile LOBBY,             $16, ElevatorText
	bookshelf_tile GYM,               $1D, BookOrSculptureText
	bookshelf_tile GYM,               $50, MyReflectionText
	bookshelf_tile GATE,              $22, BookOrSculptureText
	bookshelf_tile GATE,              $3A, MyReflectionText
	bookshelf_tile GATE,              $3D, MyReflectionText
	bookshelf_tile GATE,              $3E, MyReflectionText
	bookshelf_tile MART,              $3E, PokemonStuffText
	bookshelf_tile MART,              $50, PokemonStuffText
	bookshelf_tile MART,              $52, PokemonStuffText
	bookshelf_tile MART,              $54, PokemonStuffText
	bookshelf_tile POKECENTER,        $2A, PokemonStuffText
	bookshelf_tile POKECENTER,        $40, PokemonCenterPCText
	bookshelf_tile LOBBY,             $50, PokemonStuffText
	bookshelf_tile LOBBY,             $52, PokemonStuffText
	bookshelf_tile SHIP,              $36, BookOrSculptureText
	bookshelf_tile TRADITIONAL_HOUSE, $18, BookOrSculptureText
	bookshelf_tile TRADITIONAL_HOUSE, $31, PokemonStuffText
	bookshelf_tile TRADITIONAL_HOUSE, $37, PokemonStuffText
	bookshelf_tile TRADITIONAL_HOUSE, $52, IncenseBurnerText
	db -1 ; end

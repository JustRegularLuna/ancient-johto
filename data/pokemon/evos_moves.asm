; See constants/pokemon_data_constants.asm
; The max number of evolutions per monster is MAX_EVOLUTIONS

EvosMovesPointerTable:
	table_width 2, EvosMovesPointerTable
	dw BulbasaurEvosAttacks
	dw IvysaurEvosAttacks
	dw VenusaurEvosAttacks
	dw CharmanderEvosAttacks
	dw CharmeleonEvosAttacks
	dw CharizardEvosAttacks
	dw SquirtleEvosAttacks
	dw WartortleEvosAttacks
	dw BlastoiseEvosAttacks
	dw CaterpieEvosAttacks
	dw MetapodEvosAttacks
	dw ButterfreeEvosAttacks
	dw WeedleEvosAttacks
	dw KakunaEvosAttacks
	dw BeedrillEvosAttacks
	dw PidgeyEvosAttacks
	dw PidgeottoEvosAttacks
	dw PidgeotEvosAttacks
	dw RattataEvosAttacks
	dw RaticateEvosAttacks
	dw SpearowEvosAttacks
	dw FearowEvosAttacks
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw SandshrewEvosAttacks
	dw SandslashEvosAttacks
	dw NidoranFEvosAttacks
	dw NidorinaEvosAttacks
	dw NidoqueenEvosAttacks
	dw NidoranMEvosAttacks
	dw NidorinoEvosAttacks
	dw NidokingEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixEvosAttacks
	dw NinetalesEvosAttacks
	dw JigglypuffEvosAttacks
	dw WigglytuffEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw OddishEvosAttacks
	dw GloomEvosAttacks
	dw VileplumeEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw VenonatEvosAttacks
	dw VenomothEvosAttacks
	dw DiglettEvosAttacks
	dw DugtrioEvosAttacks
	dw MeowthEvosAttacks
	dw PersianEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw AbraEvosAttacks
	dw KadabraEvosAttacks
	dw AlakazamEvosAttacks
	dw MachopEvosAttacks
	dw MachokeEvosAttacks
	dw MachampEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw TentacoolEvosAttacks
	dw TentacruelEvosAttacks
	dw GeodudeEvosAttacks
	dw GravelerEvosAttacks
	dw GolemEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw SlowpokeEvosAttacks
	dw SlowbroEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw FarfetchDEvosAttacks
	dw DoduoEvosAttacks
	dw DodrioEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerEvosAttacks
	dw MukEvosAttacks
	dw ShellderEvosAttacks
	dw CloysterEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw DrowzeeEvosAttacks
	dw HypnoEvosAttacks
	dw KrabbyEvosAttacks
	dw KinglerEvosAttacks
	dw VoltorbEvosAttacks
	dw ElectrodeEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CuboneEvosAttacks
	dw MarowakEvosAttacks
	dw HitmonleeEvosAttacks
	dw HitmonchanEvosAttacks
	dw LickitungEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingEvosAttacks
	dw RhyhornEvosAttacks
	dw RhydonEvosAttacks
	dw ChanseyEvosAttacks
	dw TangelaEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw GoldeenEvosAttacks
	dw SeakingEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MrMimeEvosAttacks
	dw ScytherEvosAttacks
	dw JynxEvosAttacks
	dw ElectabuzzEvosAttacks
	dw MagmarEvosAttacks
	dw PinsirEvosAttacks
	dw TaurosEvosAttacks
	dw MagikarpEvosAttacks
	dw GyaradosEvosAttacks
	dw LaprasEvosAttacks
	dw DittoEvosAttacks
	dw EeveeEvosAttacks
	dw VaporeonEvosAttacks
	dw JolteonEvosAttacks
	dw FlareonEvosAttacks
	dw PorygonEvosAttacks
	dw OmanyteEvosAttacks
	dw OmastarEvosAttacks
	dw KabutoEvosAttacks
	dw KabutopsEvosAttacks
	dw AerodactylEvosAttacks
	dw SnorlaxEvosAttacks
	dw ArticunoEvosAttacks
	dw ZapdosEvosAttacks
	dw MoltresEvosAttacks
	dw DratiniEvosAttacks
	dw DragonairEvosAttacks
	dw DragoniteEvosAttacks
	dw MewtwoEvosAttacks
	dw MewEvosAttacks
	assert_table_length NUM_POKEMON

BulbasaurEvosAttacks:
	db EV_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EV_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EV_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EV_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EV_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EV_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EV_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EV_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EV_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EV_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EV_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EV_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EV_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EV_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EV_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EV_ITEM, THUNDER_STONE, 1, RAICHU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EV_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EV_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EV_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EV_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EV_ITEM, MOON_STONE, 1, NIDOKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EV_ITEM, MOON_STONE, 1, CLEFABLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EV_ITEM, FIRE_STONE, 1, NINETALES
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EV_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EV_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	;db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EV_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EV_ITEM, LEAF_STONE, 1, VILEPLUME
	;db EV_ITEM, SUN_STONE, 1, BELLOSSOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EV_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EV_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EV_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EV_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EV_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EV_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EV_ITEM, FIRE_STONE, 1, ARCANINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EV_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EV_ITEM, WATER_STONE, 1, POLIWRATH
	;db EV_ITEM, KINGS_ROCK, 1, POLITOED
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EV_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EV_TRADE, 1, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EV_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EV_TRADE, 1, MACHAMP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EV_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EV_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EV_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EV_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EV_TRADE, 1, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EV_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EV_LEVEL, 37, SLOWBRO
	;db EV_ITEM, KINGS_ROCK, 1, SLOWKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EV_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EV_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EV_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EV_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EV_ITEM, WATER_STONE, 1, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EV_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EV_TRADE, 1, GENGAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

OnixEvosAttacks:
	;db EV_ITEM, METAL_COAT, 1, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EV_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EV_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EV_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EV_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EV_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EV_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EV_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	;db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EV_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	;db EV_ITEM, DRAGON_SCALE, 1, KINGDRA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EV_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EV_ITEM, WATER_STONE, 1, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	;db EV_ITEM, METAL_COAT, 1, SCIZOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EV_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EV_ITEM, THUNDER_STONE, 1, JOLTEON
	db EV_ITEM, WATER_STONE, 1, VAPOREON
	db EV_ITEM, FIRE_STONE, 1, FLAREON
	;db EV_ITEM, SUN_STONE, 1, ESPEON
	;db EV_ITEM, MOON_STONE, 1, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	;db EV_ITEM, UP_GRADE, 1, PORYGON2
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EV_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EV_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EV_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EV_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

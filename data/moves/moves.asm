MACRO move
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
ENDM

Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH, Moves
	move POUND,        NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        50, FIGHTING,     100, 25
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 10
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, NORMAL,        85, 15
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        80, NORMAL,        85, 20
	move PAY_DAY,      PAY_DAY_EFFECT,              40, NORMAL,       100, 20
	move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           75, FIRE,         100, 15
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          75, ICE,          100, 15
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       75, ELECTRIC,     100, 15
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move VICEGRIP,     NO_ADDITIONAL_EFFECT,        55, NORMAL,       100, 30
	move GUILLOTINE,   OHKO_EFFECT,                  1, NORMAL,        30,  5
	move RAZOR_WIND,   CHARGE_EFFECT,               80, NORMAL,        75, 10
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, NORMAL,       100, 30
	move CUT,          NO_ADDITIONAL_EFFECT,        50, NORMAL,        95, 30
	move GUST,         NO_ADDITIONAL_EFFECT,        40, FLYING,       100, 35
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
	move WHIRLWIND,    SWITCH_AND_TELEPORT_EFFECT,   0, NORMAL,        85, 20
	move FLY,          FLY_EFFECT,                  70, FLYING,        95, 15
	move BIND,         TRAPPING_EFFECT,             15, NORMAL,        75, 20
	move SLAM,         NO_ADDITIONAL_EFFECT,        80, NORMAL,        75, 20
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        35, GRASS,        100, 10
	move STOMP,        FLINCH_SIDE_EFFECT2,         65, NORMAL,       100, 20
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 30
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,       120, NORMAL,        75,  5
	move JUMP_KICK,    JUMP_KICK_EFFECT,            70, FIGHTING,      95, 25
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         60, FIGHTING,      85, 15
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 15
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         70, NORMAL,       100, 15
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        65, NORMAL,       100, 25
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 20
	move HORN_DRILL,   OHKO_EFFECT,                  1, NORMAL,        30,  5
	move TACKLE,       NO_ADDITIONAL_EFFECT,        35, NORMAL,        95, 35
	move BODY_SLAM,    PARALYZE_SIDE_EFFECT2,       85, NORMAL,       100, 15
	move WRAP,         TRAPPING_EFFECT,             15, NORMAL,        85, 20
	move TAKE_DOWN,    RECOIL_EFFECT,               90, NORMAL,        85, 20
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,  120, NORMAL,       100, 10
	move DOUBLE_EDGE,  RECOIL_EFFECT,              100, NORMAL,       100, 15
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move POISON_STING, POISON_SIDE_EFFECT1,         15, POISON,       100, 35
	move TWINEEDLE,    TWINEEDLE_EFFECT,            25, BUG,          100, 20
	move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  14, BUG,           85, 20
	move LEER,         DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move BITE,         FLINCH_SIDE_EFFECT1,         60, DARK,         100, 25
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, NORMAL,       100, 40
	move ROAR,         SWITCH_AND_TELEPORT_EFFECT,   0, NORMAL,       100, 20
	move SING,         SLEEP_EFFECT,                 0, NORMAL,        55, 15
	move SUPERSONIC,   CONFUSION_EFFECT,             0, NORMAL,        55, 20
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,        90, 20
	move DISABLE,      DISABLE_EFFECT,               0, NORMAL,        55, 20
	move ACID,         DEFENSE_DOWN_SIDE_EFFECT,    40, POISON,       100, 30
	move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 25
	move FLAMETHROWER, BURN_SIDE_EFFECT1,           95, FIRE,         100, 15
	move MIST,         MIST_EFFECT,                  0, ICE,          100, 30
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 25
	move HYDRO_PUMP,   NO_ADDITIONAL_EFFECT,       120, WATER,         80,  5
	move SURF,         NO_ADDITIONAL_EFFECT,        95, WATER,        100, 15
	move ICE_BEAM,     FREEZE_SIDE_EFFECT,          95, ICE,          100, 10
	move BLIZZARD,     FREEZE_SIDE_EFFECT,         120, ICE,           90,  5
	move PSYBEAM,      CONFUSION_SIDE_EFFECT,       65, PSYCHIC_TYPE, 100, 20
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      65, WATER,        100, 20
	move AURORA_BEAM,  ATTACK_DOWN_SIDE_EFFECT,     65, ICE,          100, 20
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          150, NORMAL,        90,  5
	move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
	move DRILL_PECK,   NO_ADDITIONAL_EFFECT,        80, FLYING,       100, 20
	move SUBMISSION,   RECOIL_EFFECT,               80, FIGHTING,      80, 25
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         50, FIGHTING,      90, 20
	move COUNTER,      NO_ADDITIONAL_EFFECT,         1, FIGHTING,     100, 20
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 20
	move STRENGTH,     NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 15
	move ABSORB,       DRAIN_HP_EFFECT,             20, GRASS,        100, 20
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             40, GRASS,        100, 10
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,         90, 10
	move GROWTH,       ATTACK_SPECIAL_UP_EFFECT,     0, NORMAL,       100, 40
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        55, GRASS,         95, 25
	move SOLARBEAM,    CHARGE_EFFECT,              120, GRASS,        100, 10
	move POISONPOWDER, POISON_EFFECT,                0, POISON,        75, 35
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         75, 30
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         75, 15
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,  120, GRASS,        100, 10
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,           95, 40
	move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 10
	move FIRE_SPIN,    TRAPPING_EFFECT,             35, FIRE,          85, 15
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 30
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT1,       95, ELECTRIC,     100, 15
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20
	move THUNDER,      PARALYZE_SIDE_EFFECT1,      120, ELECTRIC,      70, 10
	move ROCK_THROW,   NO_ADDITIONAL_EFFECT,        50, ROCK,          90, 15
	move EARTHQUAKE,   NO_ADDITIONAL_EFFECT,       100, GROUND,       100, 10
	move FISSURE,      OHKO_EFFECT,                  1, GROUND,        30,  5
	move DIG,          CHARGE_EFFECT,              100, GROUND,       100, 10
	move TOXIC,        POISON_EFFECT,                0, POISON,        85, 10
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       50, PSYCHIC_TYPE, 100, 25
	move PSYCHIC_M,    SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC_TYPE, 100, 10
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  60, 20
	move MEDITATE,     ATTACK_UP1_EFFECT,            0, PSYCHIC_TYPE, 100, 40
	move AGILITY,      SPEED_UP2_EFFECT,             0, PSYCHIC_TYPE, 100, 30
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30
	move RAGE,         RAGE_EFFECT,                 20, NORMAL,       100, 20
	move TELEPORT,     SWITCH_AND_TELEPORT_EFFECT,   0, PSYCHIC_TYPE, 100, 20
	move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 15
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 10
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, NORMAL,        85, 40
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, NORMAL,       100, 15
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 20
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 20
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 20
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 10
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, WATER,        100, 40
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 40
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 30
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, PSYCHIC_TYPE, 100, 30
	move HAZE,         HAZE_EFFECT,                  0, ICE,          100, 30
	move REFLECT,      REFLECT_EFFECT,               0, PSYCHIC_TYPE, 100, 20
	move FOCUS_ENERGY, FOCUS_ENERGY_EFFECT,          0, NORMAL,       100, 30
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,       100, 10
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,       100, 10
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, FLYING,       100, 20
	move SELFDESTRUCT, EXPLODE_EFFECT,             130, NORMAL,       100,  5
	move EGG_BOMB,     NO_ADDITIONAL_EFFECT,       100, NORMAL,        75, 10
	move LICK,         PARALYZE_SIDE_EFFECT2,       20, GHOST,        100, 30
	move SMOG,         POISON_SIDE_EFFECT2,         20, POISON,        70, 20
	move SLUDGE,       POISON_SIDE_EFFECT2,         65, POISON,       100, 20
	move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         65, GROUND,        85, 20
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          120, FIRE,          85,  5
	move WATERFALL,    NO_ADDITIONAL_EFFECT,        80, WATER,        100, 15
	move CLAMP,        TRAPPING_EFFECT,             35, WATER,         75, 10
	move SWIFT,        SWIFT_EFFECT,                60, NORMAL,       100, 20
	move SKULL_BASH,   CHARGE_EFFECT,              100, NORMAL,       100, 15
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,       100, 15
	move CONSTRICT,    SPEED_DOWN_SIDE_EFFECT,      10, NORMAL,       100, 35
	move AMNESIA,      SPECIAL_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 20
	move KINESIS,      ACCURACY_DOWN1_EFFECT,        0, PSYCHIC_TYPE,  80, 15
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 10
	move HI_JUMP_KICK, JUMP_KICK_EFFECT,            85, FIGHTING,      90, 20
	move GLARE,        PARALYZE_EFFECT,              0, NORMAL,        75, 30
	move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 15
	move POISON_GAS,   POISON_EFFECT,                0, POISON,        55, 40
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 20
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             20, BUG,          100, 15
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, NORMAL,        75, 10
	move SKY_ATTACK,   CHARGE_EFFECT,              140, FLYING,        90,  5
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,       100, 10
	move BUBBLE,       SPEED_DOWN_SIDE_EFFECT,      20, WATER,        100, 30
	move DIZZY_PUNCH,  NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 10
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,        100, 15
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,        70, 20
	move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC_TYPE,  80, 15
	move SPLASH,       SPLASH_EFFECT,                0, NORMAL,       100, 40
	move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, POISON,       100, 40
	move CRABHAMMER,   NO_ADDITIONAL_EFFECT,        90, WATER,         85, 10
	move EXPLOSION,    EXPLODE_EFFECT,             170, NORMAL,       100,  5
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, NORMAL,        80, 15
	move BONEMERANG,   ATTACK_TWICE_EFFECT,         50, GROUND,        90, 10
	move REST,         HEAL_EFFECT,                  0, PSYCHIC_TYPE, 100, 10
	move ROCK_SLIDE,   NO_ADDITIONAL_EFFECT,        75, ROCK,          90, 10
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         80, NORMAL,        90, 15
	move SHARPEN,      ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30
	move CONVERSION,   CONVERSION_EFFECT,            0, NORMAL,       100, 30
	move TRI_ATTACK,   NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 10
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 10
	move SLASH,        NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 20
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10
	move STRUGGLE,     RECOIL_EFFECT,               50, NORMAL,       100, 10
	; moves below this point reuse attack animations from earlier moves
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 10 ; Sketch *** TODO: Sketch Effect (just a copy of Mimic for now)
	move AURORA_BEAM,  NO_ADDITIONAL_EFFECT,       100, FLYING,       100,  5 ; Aeroblast
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          100, FIRE,         100,  5 ; Sacred Fire *** TODO: Also thaws user
	move FIRE_SPIN,    BURN_SIDE_EFFECT1,           60, FIRE,         100, 25 ; Flame Wheel *** TODO: Also thaws user
	move MEDITATE,     NO_ADDITIONAL_EFFECT,        60, NORMAL,       100, 15 ; Hidden Power *** Type varies by IVs
	move ROCK_THROW,   ANCIENTPOWER_EFFECT,         60, ROCK,         100,  5 ; Ancientpower
	move TACKLE,       NO_ADDITIONAL_EFFECT,        30, ROCK,          90, 20 ; Rollout *** TODO: Rollout effect
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,       120, BUG,           85, 10 ; Megahorn
	move SAND_ATTACK,  ACCURACY_DOWN_SIDE_EFFECT,   20, GROUND,       100, 10 ; Mud-Slap
	move MEGA_PUNCH,   DYNAMICPUNCH_EFFECT,        100, FIGHTING,      50,  5 ; Dynamicpunch
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             75, GRASS,        100, 10 ; Giga Drain
	move SWIFT,        SWIFT_EFFECT,                60, DARK,         100, 20 ; Shuriken
	move AURORA_BEAM,  CHARGE_EFFECT,              120, DARK,         100, 10 ; Dark Energy
	move FLAMETHROWER, PARALYZE_SIDE_EFFECT1,       60, DRAGON,       100, 20 ; Dragonbreath
	move SONICBOOM,    FLINCH_SIDE_EFFECT1,         40, DRAGON,       100, 20 ; Twister
	move RAGE,         THRASH_PETAL_DANCE_EFFECT,  120, DRAGON,       100, 10 ; Outrage
	move SLASH,        ATTACK_UP1_SIDE_EFFECT,      50, STEEL,         95, 35 ; Metal Claw
	move WING_ATTACK,  DEFENSE_UP1_SIDE_EFFECT,     70, STEEL,         90, 25 ; Steel Wing
	move CUT,          DEFENSE_DOWN_SIDE_EFFECT,   100, STEEL,         75, 15 ; Iron Tail
	move BARRAGE,      SPECIAL_DOWN_SIDE_EFFECT,    80, GHOST,        100, 15 ; Shadow Ball
	move BARRAGE,      POISON_SIDE_EFFECT2,         90, POISON,       100, 10 ; Sludge Bomb
	move MIST,         FREEZE_SIDE_EFFECT,          40, ICE,          100, 25 ; Powder Snow
	move GUST,         SPEED_DOWN_SIDE_EFFECT,      55, ICE,           95, 10 ; Icy Wind
	move GUST,         TRAPPING_EFFECT,             35, WATER,         85, 15 ; Whirlpool
	move SLUDGE,       ACCURACY_DOWN_SIDE_EFFECT,   65, WATER,         85, 10 ; Octazooka
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT2,       65, ELECTRIC,     100, 20 ; Spark
	move THUNDER,      HYPER_BEAM_EFFECT,          150, ELECTRIC,      90,  5 ; Power Surge
	move MEDITATE,     NO_ADDITIONAL_EFFECT,         0, NORMAL,       100, 40 ; Foresight *** TODO: Foresight effect
	move LOVELY_KISS,  NO_ADDITIONAL_EFFECT,         0, NORMAL,       100, 15 ; Attract *** TODO: Attract effect
	move LOVELY_KISS,  CONFUSION_EFFECT,             0, NORMAL,        75, 10 ; Sweet Kiss
	move LOVELY_KISS,  ATTACK_DOWN2_EFFECT,          0, NORMAL,       100, 20 ; Charm
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        80, NORMAL,       100,  5 ; Extremespeed *** +2 Priority
	move GLARE,        SPEED_DOWN2_EFFECT,           0, NORMAL,       100, 10 ; Scary Face
	move CUT,          POISON_SIDE_EFFECT2,         95, POISON,       100, 15 ; Sting Blade
	move GROWL,        FLINCH_SIDE_EFFECT2,         50, NORMAL,       100, 15 ; Snore *** TODO: Only usable while asleep
	move GROWL,        NO_ADDITIONAL_EFFECT,         0, NORMAL,       100, 10 ; Sleep Talk *** TODO: Sleep Talk effect
	move RECOVER,      HEAL_EFFECT,                  0, GRASS,        100, 10 ; Synthesis
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 10 ; Moonlight
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 10 ; Milk Drink
	move BARRAGE,      PRESENT_EFFECT,               1, PSYCHIC_TYPE,  90, 15 ; Present
	move PSYCHIC_M,    CHARGE_EFFECT,              140, CURSE_TYPE,   100, 10 ; Time Rend
	move LIGHT_SCREEN, NO_ADDITIONAL_EFFECT,         1, PSYCHIC_TYPE, 100, 20 ; Mirror Coat *** Effect is special-cased in battle engine, like Counter
	move STRING_SHOT,  TRAPPING_EFFECT,             35, BUG,           85, 15 ; Web Trap
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  25, FIRE,         100, 15 ; Fireball
	move PSYCHIC_M,    HEX_EFFECT,                  65, DARK,         100, 10 ; Dark Mind
	move SLASH,        NO_ADDITIONAL_EFFECT,        70, GHOST,        100, 20 ; Phantom Claw *** Increased Crit Chance
	move PIN_MISSILE,  HEX_EFFECT,                  65, GHOST,        100, 10 ; Nail Down
	move THUNDER,      ELECTRO_BALL_EFFECT,         60, ELECTRIC,     100, 10 ; Surprise Zap
	move BITE,         TWO_TO_FIVE_ATTACKS_EFFECT,  25, DARK,         100, 15 ; Gnaw
	move MEDITATE,     HONE_CLAWS_EFFECT,            0, NORMAL,       100, 15 ; Hyper Focus
	move CUT,          NO_ADDITIONAL_EFFECT,        20, BUG,           95, 20 ; Fury Cutter *** TODO: Fury Cutter Effect
	move BONE_CLUB,    TWO_TO_FIVE_ATTACKS_EFFECT,  25, GROUND,       100, 15 ; Bone Rush
	move BITE,         POISON_SIDE_EFFECT2,         60, POISON,       100, 25 ; Venom Bite
	move SPORE,        SPEED_DOWN2_EFFECT,           0, GRASS,        100, 40 ; Cotton Spore
	move DOUBLE_KICK,  TWO_TO_FIVE_ATTACKS_EFFECT,  25, FIGHTING,     100, 15 ; Spin Kick
	move PETAL_DANCE,  ANCIENTPOWER_EFFECT,         60, GRASS,        100,  5 ; Flower Dance
	move CONVERSION,   ANCIENTPOWER_EFFECT,         60, NORMAL,       100,  5 ; Digitize
	move SCREECH,      FLINCH_SIDE_EFFECT2,         40, GHOST,        100, 15 ; Banshee Cry
	move MIST,         TWO_TO_FIVE_ATTACKS_EFFECT,  25, ICE,          100, 15 ; Hail Barrage
	move SURF,         BURN_SIDE_EFFECT2,           95, FIRE,         100, 15 ; Lava Surge
	move ROCK_THROW,   TWO_TO_FIVE_ATTACKS_EFFECT,  25, ROCK,         100, 15 ; Rock Cannon
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         70, ROCK,         100, 15 ; Rock Head
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        40, GHOST,        100, 30 ; Shadowstrike *** +1 Priority
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        40, DARK,         100, 30 ; Sneak Attack *** +1 Priority
	move MEDITATE,     ATTACK_DEFENSE_UP_EFFECT,     0, NORMAL,       100, 20 ; Noble Spirit
	move GROWTH,       ATTACK_SPECIAL_UP_EFFECT,     0, NORMAL,       100, 40 ; Invigorate
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        40, FIGHTING,     100, 30 ; Mach Punch *** +1 Priority
	move WHIRLWIND,    CONFUSION_SIDE_EFFECT,      120, FLYING,        70, 10 ; Windstorm
	assert_table_length NUM_ATTACKS

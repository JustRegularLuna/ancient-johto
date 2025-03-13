MACRO specialcall
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE
	specialcall SpecialCallOnlyWhenOutside, PHONE_00, UnusedPhoneScript
	assert_table_length NUM_SPECIALCALLS

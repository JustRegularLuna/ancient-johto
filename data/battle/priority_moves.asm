; Since Generation IV, the move priority ranges from -7 to 5.
; To avoid working with negative numbers, we use a constant
; and internally move the range to be from 0 to 12.

DEF PRIORITY EQU 7

PriorityMovesList:
	db COUNTER,        PRIORITY - 6
	db QUICK_ATTACK,   PRIORITY + 1
	db -1 ; end

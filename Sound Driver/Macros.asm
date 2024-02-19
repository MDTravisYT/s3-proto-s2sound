; ---------------------------------------------------------------------------
; start the Z80
; ---------------------------------------------------------------------------
startZ80:       macro
		move.w	#0,(z80_bus_request).l
		endm

; ---------------------------------------------------------------------------
; stop the Z80
; ---------------------------------------------------------------------------
stopZ80:        macro
		move.w	#$100,(z80_bus_request).l
		endm

; ---------------------------------------------------------------------------
; wait for Z80 to stop
; ---------------------------------------------------------------------------

waitZ80:	macro
.wait:		btst	#0,(z80_bus_request).l
		bne.s	.wait
		endm
		
Music_01_Ptr equ (Music_01&$FFFF)|$8000
Music_02_Ptr equ (Music_02&$FFFF)|$8000
Music_03_Ptr equ (Music_03&$FFFF)|$8000
Music_04_Ptr equ (Music_04&$FFFF)|$8000
Music_05_Ptr equ (Music_05&$FFFF)|$8000
Music_06_Ptr equ (Music_06&$FFFF)|$8000
Music_07_Ptr equ (Music_07&$FFFF)|$8000
Music_08_Ptr equ (Music_08&$FFFF)|$8000
Music_09_Ptr equ (Music_09&$FFFF)|$8000
Music_0A_Ptr equ (Music_0A&$FFFF)|$8000
Music_0B_Ptr equ (Music_0B&$FFFF)|$8000
Music_0C_Ptr equ (Music_0C&$FFFF)|$8000
Music_0D_Ptr equ (Music_0D&$FFFF)|$8000
Music_0E_Ptr equ (Music_0E&$FFFF)|$8000
Music_0F_Ptr equ (Music_0F&$FFFF)|$8000
Music_10_Ptr equ (Music_10&$FFFF)|$8000
Music_11_Ptr equ (Music_11&$FFFF)|$8000
Music_12_Ptr equ (Music_12&$FFFF)|$8000
Music_13_Ptr equ (Music_13&$FFFF)|$8000
Music_14_Ptr equ (Music_14&$FFFF)|$8000
Music_15_Ptr equ (Music_15&$FFFF)|$8000
Music_16_Ptr equ (Music_16&$FFFF)|$8000
Music_17_Ptr equ (Music_17&$FFFF)|$8000
Music_18_Ptr equ (Music_18&$FFFF)|$8000
Music_19_Ptr equ (Music_19&$FFFF)|$8000
Music_1A_Ptr equ (Music_1A&$FFFF)|$8000
Music_1B_Ptr equ (Music_1B&$FFFF)|$8000
Music_1C_Ptr equ (Music_1C&$FFFF)|$8000
Music_1D_Ptr equ (Music_1D&$FFFF)|$8000
Music_1E_Ptr equ (Music_1E&$FFFF)|$8000
Music_1F_Ptr equ (Music_1F&$FFFF)|$8000



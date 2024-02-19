z80_ptr function x,(x)<<8&$FF00|(x)>>8&$7F|$80

zeroOffsetOptimization	= 0

	include "MacroSetup.asm"
	include "Macros.asm"

SonicDriverVer			= 3

use_s2_samples			= 1

use_s3d_samples			= 1

use_s3_samples			= 1

use_sk_samples			= 1
		include		"_smps2asm_inc.asm"

;		MUSIC STARTS HERE

	align	$B0000














; Z80 Bank $16
    ;            align   $8000

; Z80 Bank $17    
                align   $8000
Music_01:	include		"music-improved/81 - 2 Player Menu.asm"
Music_02:		include		"music-improved/82 - EHZ.asm"
Music_03:		include		"music-improved/83 - MCZ 2P.asm"
Music_04:		include		"music-improved/84 - OOZ.asm"
Music_05:		include		"music-improved/85 - MTZ.asm"
Music_06:		include		"music-improved/86 - HTZ.asm"
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------                
; Z80 Bank $18
                align   $8000
Music_07:	include		"music-improved/87 - ARZ.asm"
Music_08:	include		"music-improved/88 - CNZ 2P.asm"
Music_09:	include		"music-improved/89 - CNZ.asm"
Music_0A:	include		"music-improved/8A - DEZ.asm"
Music_0B:	include		"music-improved/8B - MCZ.asm"
; Z80 Bank $19  
                align   $8000
Music_0C:	include		"music-improved/8C - EHZ 2P.asm"
Music_0D:	include		"music-improved/8D - SCZ.asm"
Music_0E:	include		"music-improved/8E - CPZ.asm"
Music_0F:	include		"music-improved/8F - WFZ.asm"
Music_10:	include		"music-improved/90 - HPZ.asm"
Music_11:	include		"music-improved/91 - Options.asm"
;-------------------------------------------------------------------------------                
;-------------------------------------------------------------------------------                                
; Z80 Bank $1A
                align   $8000
Music_12:	include		"music-improved/92 - Special Stage.asm"
Music_13:	include		"music-improved/93 - Boss.asm"
Music_14:	include		"music-improved/94 - Final Boss.asm"
Music_15:	include		"music-improved/95 - Ending.asm"
Music_16:	include		"music-improved/96 - Super Sonic.asm"
Music_17:	include		"music-improved/97 - Invincible.asm"
; Z80 Bank $1B
                align   $8000
Music_18:	include		"music-improved/98 - Extra Life.asm"
Music_19:	include		"music-improved/99 - Title Screen.asm"
Music_1A:	include		"music-improved/9A - End of Act.asm"
Music_1B:	include		"music-improved/9B - Game Over.asm"
Music_1C:	include		"music-improved/9C - Continue.asm"
Music_1D:	include		"music-improved/9D - Got Emerald.asm"
Music_1E:	include		"music-improved/9E - Credits.asm"
Music_1F:	include		"music-improved/9F - Drowning.asm"      
;-------------------------------------------------------------------------------
; Offset_0x0D86C0:
		align	$10000
;-------------------------------------------------------------------------------                                
Z80_Driver:                                                    ; Offset_0x0E0000
                binclude  "sounds\z80_drv.bin"
; Offset_0x0E16A0               
                dc.w    (((Music_01_Ptr>>$08)|(Music_01_Ptr<<$08))&$FFFF) ;$8000
                dc.w    (((Music_02_Ptr>>$08)|(Music_02_Ptr<<$08))&$FFFF) ;$A210
                dc.w    (((Music_03_Ptr>>$08)|(Music_03_Ptr<<$08))&$FFFF) ;$BF24
                dc.w    (((Music_04_Ptr>>$08)|(Music_04_Ptr<<$08))&$FFFF) ;$D492
                dc.w    (((Music_05_Ptr>>$08)|(Music_05_Ptr<<$08))&$FFFF) ;$EE51
                dc.w    (((Music_06_Ptr>>$08)|(Music_06_Ptr<<$08))&$FFFF) ;$F468
                
                dc.w    (((Music_07_Ptr>>$08)|(Music_07_Ptr<<$08))&$FFFF) ;$8000
                dc.w    (((Music_08_Ptr>>$08)|(Music_08_Ptr<<$08))&$FFFF) ;$9BBB
                dc.w    (((Music_09_Ptr>>$08)|(Music_09_Ptr<<$08))&$FFFF) ;$B99E
                dc.w    (((Music_0A_Ptr>>$08)|(Music_0A_Ptr<<$08))&$FFFF) ;$BF36
                dc.w    (((Music_0B_Ptr>>$08)|(Music_0B_Ptr<<$08))&$FFFF) ;$C499
                dc.w    (((Music_0C_Ptr>>$08)|(Music_0C_Ptr<<$08))&$FFFF) ;$CA37
                dc.w    (((Music_0D_Ptr>>$08)|(Music_0D_Ptr<<$08))&$FFFF) ;$D04B
                
                dc.w    (((Music_0E_Ptr>>$08)|(Music_0E_Ptr<<$08))&$FFFF) ;$8000
                dc.w    (((Music_0F_Ptr>>$08)|(Music_0F_Ptr<<$08))&$FFFF) ;$A52A
                dc.w    (((Music_10_Ptr>>$08)|(Music_10_Ptr<<$08))&$FFFF) ;$AA9C
                dc.w    (((Music_11_Ptr>>$08)|(Music_11_Ptr<<$08))&$FFFF) ;$B005
                dc.w    (((Music_12_Ptr>>$08)|(Music_12_Ptr<<$08))&$FFFF) ;$B66F
                dc.w    (((Music_13_Ptr>>$08)|(Music_13_Ptr<<$08))&$FFFF) ;$BC62
                dc.w    (((Music_14_Ptr>>$08)|(Music_14_Ptr<<$08))&$FFFF) ;$D04F
                dc.w    (((Music_15_Ptr>>$08)|(Music_15_Ptr<<$08))&$FFFF) ;$E642
                dc.w    (((Music_16_Ptr>>$08)|(Music_16_Ptr<<$08))&$FFFF) ;$F954
                
                dc.w    (((Music_17_Ptr>>$08)|(Music_17_Ptr<<$08))&$FFFF) ;$8000
                dc.w    (((Music_18_Ptr>>$08)|(Music_18_Ptr<<$08))&$FFFF) ;$8412
                dc.w    (((Music_19_Ptr>>$08)|(Music_19_Ptr<<$08))&$FFFF) ;$8742
                dc.w    (((Music_1A_Ptr>>$08)|(Music_1A_Ptr<<$08))&$FFFF) ;$8C3E
                dc.w    (((Music_1B_Ptr>>$08)|(Music_1B_Ptr<<$08))&$FFFF) ;$9521
                dc.w    (((Music_1C_Ptr>>$08)|(Music_1C_Ptr<<$08))&$FFFF) ;$9A84
                dc.w    (((Music_1D_Ptr>>$08)|(Music_1D_Ptr<<$08))&$FFFF) ;$A31C
                dc.w    (((Music_1E_Ptr>>$08)|(Music_1E_Ptr<<$08))&$FFFF) ;$AE04
                dc.w    (((Music_1F_Ptr>>$08)|(Music_1F_Ptr<<$08))&$FFFF) ;$BB19


; Offset_0x0E1702:

Sfx_20_Ptr   equ     (Sound20&$FFFF)|$8000   
Sfx_21_Ptr   equ     (Sound21&$FFFF)|$8000   
Sfx_22_Ptr   equ     (Sound22&$FFFF)|$8000   
Sfx_23_Ptr   equ     (Sound23&$FFFF)|$8000   
Sfx_24_Ptr   equ     (Sound24&$FFFF)|$8000   
Sfx_25_Ptr   equ     (Sound25&$FFFF)|$8000   
Sfx_26_Ptr   equ     (Sound26&$FFFF)|$8000   
Sfx_27_Ptr   equ     (Sound27&$FFFF)|$8000   
Sfx_28_Ptr   equ     (Sound28&$FFFF)|$8000   
Sfx_29_Ptr   equ     (Sound29&$FFFF)|$8000   
Sfx_2A_Ptr   equ     (Sound2A&$FFFF)|$8000   
Sfx_2B_Ptr   equ     (Sound2B&$FFFF)|$8000   
Sfx_2C_Ptr   equ     (Sound2C&$FFFF)|$8000   
Sfx_2D_Ptr   equ     (Sound2D&$FFFF)|$8000   
Sfx_2E_Ptr   equ     (Sound2E&$FFFF)|$8000   
Sfx_2F_Ptr   equ     (Sound2F&$FFFF)|$8000   
Sfx_30_Ptr   equ     (Sound30&$FFFF)|$8000   
Sfx_31_Ptr   equ     (Sound31&$FFFF)|$8000   
Sfx_32_Ptr   equ     (Sound32&$FFFF)|$8000   
Sfx_33_Ptr   equ     (Sound33&$FFFF)|$8000   
Sfx_34_Ptr   equ     (Sound34&$FFFF)|$8000   
Sfx_35_Ptr   equ     (Sound35&$FFFF)|$8000   
Sfx_36_Ptr   equ     (Sound36&$FFFF)|$8000   
Sfx_37_Ptr   equ     (Sound37&$FFFF)|$8000   
Sfx_38_Ptr   equ     (Sound38&$FFFF)|$8000   
Sfx_39_Ptr   equ     (Sound39&$FFFF)|$8000   
Sfx_3A_Ptr   equ     (Sound3A&$FFFF)|$8000   
Sfx_3B_Ptr   equ     (Sound3B&$FFFF)|$8000   
Sfx_3C_Ptr   equ     (Sound3C&$FFFF)|$8000   
Sfx_3D_Ptr   equ     (Sound3D&$FFFF)|$8000   
Sfx_3E_Ptr   equ     (Sound3E&$FFFF)|$8000   
Sfx_3F_Ptr   equ     (Sound3F&$FFFF)|$8000   
Sfx_40_Ptr   equ     (Sound40&$FFFF)|$8000   
Sfx_41_Ptr   equ     (Sound41&$FFFF)|$8000   
Sfx_42_Ptr   equ     (Sound42&$FFFF)|$8000   
Sfx_43_Ptr   equ     (Sound43&$FFFF)|$8000   
Sfx_44_Ptr   equ     (Sound44&$FFFF)|$8000   
Sfx_45_Ptr   equ     (Sound45&$FFFF)|$8000   
Sfx_46_Ptr   equ     (Sound46&$FFFF)|$8000   
Sfx_47_Ptr   equ     (Sound47&$FFFF)|$8000   
Sfx_48_Ptr   equ     (Sound48&$FFFF)|$8000   
Sfx_49_Ptr   equ     (Sound49&$FFFF)|$8000   
Sfx_4A_Ptr   equ     (Sound4A&$FFFF)|$8000   
Sfx_4B_Ptr   equ     (Sound4B&$FFFF)|$8000   
Sfx_4C_Ptr   equ     (Sound4C&$FFFF)|$8000   
Sfx_4D_Ptr   equ     (Sound4D&$FFFF)|$8000   
Sfx_4E_Ptr   equ     (Sound4E&$FFFF)|$8000   
Sfx_4F_Ptr   equ     (Sound4F&$FFFF)|$8000   
Sfx_50_Ptr   equ     (Sound50&$FFFF)|$8000   
Sfx_51_Ptr   equ     (Sound51&$FFFF)|$8000   
Sfx_52_Ptr   equ     (Sound52&$FFFF)|$8000   
Sfx_53_Ptr   equ     (Sound53&$FFFF)|$8000   
Sfx_54_Ptr   equ     (Sound54&$FFFF)|$8000   
Sfx_55_Ptr   equ     (Sound55&$FFFF)|$8000   
Sfx_56_Ptr   equ     (Sound56&$FFFF)|$8000   
Sfx_57_Ptr   equ     (Sound57&$FFFF)|$8000   
Sfx_58_Ptr   equ     (Sound58&$FFFF)|$8000   
Sfx_59_Ptr   equ     (Sound59&$FFFF)|$8000   
Sfx_5A_Ptr   equ     (Sound5A&$FFFF)|$8000   
Sfx_5B_Ptr   equ     (Sound5B&$FFFF)|$8000   
Sfx_5C_Ptr   equ     (Sound5C&$FFFF)|$8000   
Sfx_5D_Ptr   equ     (Sound5D&$FFFF)|$8000   
Sfx_5E_Ptr   equ     (Sound5E&$FFFF)|$8000   
Sfx_5F_Ptr   equ     (Sound5F&$FFFF)|$8000   
Sfx_60_Ptr   equ     (Sound60&$FFFF)|$8000   
Sfx_61_Ptr   equ     (Sound61&$FFFF)|$8000   
Sfx_62_Ptr   equ     (Sound62&$FFFF)|$8000   
Sfx_63_Ptr   equ     (Sound63&$FFFF)|$8000   
Sfx_64_Ptr   equ     (Sound64&$FFFF)|$8000   
Sfx_65_Ptr   equ     (Sound65&$FFFF)|$8000   
Sfx_66_Ptr   equ     (Sound66&$FFFF)|$8000   
Sfx_67_Ptr   equ     (Sound67&$FFFF)|$8000   
Sfx_68_Ptr   equ     (Sound68&$FFFF)|$8000   
Sfx_69_Ptr   equ     (Sound69&$FFFF)|$8000   
Sfx_6A_Ptr   equ     (Sound6A&$FFFF)|$8000   
Sfx_6B_Ptr   equ     (Sound6B&$FFFF)|$8000   
Sfx_6C_Ptr   equ     (Sound6C&$FFFF)|$8000   
Sfx_6D_Ptr   equ     (Sound6D&$FFFF)|$8000   
Sfx_6E_Ptr   equ     (Sound6E&$FFFF)|$8000   
Sfx_6F_Ptr   equ     (Sound6F&$FFFF)|$8000   
Sfx_70_Ptr   equ     (Sound70&$FFFF)|$8000   
Sfx_NN_Ptr   equ     (SoundNN&$FFFF)|$8000   


                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_NN_Ptr>>$08)|(Sfx_NN_Ptr<<$08))&$FFFF)      

                dc.w    (((Sfx_20_Ptr>>$08)|(Sfx_20_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_21_Ptr>>$08)|(Sfx_21_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_22_Ptr>>$08)|(Sfx_22_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_23_Ptr>>$08)|(Sfx_23_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_24_Ptr>>$08)|(Sfx_24_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_25_Ptr>>$08)|(Sfx_25_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_26_Ptr>>$08)|(Sfx_26_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_27_Ptr>>$08)|(Sfx_27_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_28_Ptr>>$08)|(Sfx_28_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_29_Ptr>>$08)|(Sfx_29_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_2A_Ptr>>$08)|(Sfx_2A_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_2B_Ptr>>$08)|(Sfx_2B_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_2C_Ptr>>$08)|(Sfx_2C_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_2D_Ptr>>$08)|(Sfx_2D_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_2E_Ptr>>$08)|(Sfx_2E_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_2F_Ptr>>$08)|(Sfx_2F_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_30_Ptr>>$08)|(Sfx_30_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_31_Ptr>>$08)|(Sfx_31_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_32_Ptr>>$08)|(Sfx_32_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_33_Ptr>>$08)|(Sfx_33_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_34_Ptr>>$08)|(Sfx_34_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_35_Ptr>>$08)|(Sfx_35_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_36_Ptr>>$08)|(Sfx_36_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_37_Ptr>>$08)|(Sfx_37_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_38_Ptr>>$08)|(Sfx_38_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_39_Ptr>>$08)|(Sfx_39_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_3A_Ptr>>$08)|(Sfx_3A_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_3B_Ptr>>$08)|(Sfx_3B_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_3C_Ptr>>$08)|(Sfx_3C_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_3D_Ptr>>$08)|(Sfx_3D_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_3E_Ptr>>$08)|(Sfx_3E_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_3F_Ptr>>$08)|(Sfx_3F_Ptr<<$08))&$FFFF)     
                dc.w    (((Sfx_40_Ptr>>$08)|(Sfx_40_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_41_Ptr>>$08)|(Sfx_41_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_42_Ptr>>$08)|(Sfx_42_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_43_Ptr>>$08)|(Sfx_43_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_44_Ptr>>$08)|(Sfx_44_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_45_Ptr>>$08)|(Sfx_45_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_46_Ptr>>$08)|(Sfx_46_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_47_Ptr>>$08)|(Sfx_47_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_48_Ptr>>$08)|(Sfx_48_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_49_Ptr>>$08)|(Sfx_49_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_4A_Ptr>>$08)|(Sfx_4A_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_4B_Ptr>>$08)|(Sfx_4B_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_4C_Ptr>>$08)|(Sfx_4C_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_4D_Ptr>>$08)|(Sfx_4D_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_4E_Ptr>>$08)|(Sfx_4E_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_4F_Ptr>>$08)|(Sfx_4F_Ptr<<$08))&$FFFF)    
                dc.w    (((Sfx_50_Ptr>>$08)|(Sfx_50_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_51_Ptr>>$08)|(Sfx_51_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_52_Ptr>>$08)|(Sfx_52_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_53_Ptr>>$08)|(Sfx_53_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_54_Ptr>>$08)|(Sfx_54_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_55_Ptr>>$08)|(Sfx_55_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_56_Ptr>>$08)|(Sfx_56_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_57_Ptr>>$08)|(Sfx_57_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_58_Ptr>>$08)|(Sfx_58_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_59_Ptr>>$08)|(Sfx_59_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_5A_Ptr>>$08)|(Sfx_5A_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_5B_Ptr>>$08)|(Sfx_5B_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_5C_Ptr>>$08)|(Sfx_5C_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_5D_Ptr>>$08)|(Sfx_5D_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_5E_Ptr>>$08)|(Sfx_5E_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_6F_Ptr>>$08)|(Sfx_5F_Ptr<<$08))&$FFFF)        
                dc.w    (((Sfx_60_Ptr>>$08)|(Sfx_60_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_61_Ptr>>$08)|(Sfx_61_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_62_Ptr>>$08)|(Sfx_62_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_63_Ptr>>$08)|(Sfx_63_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_64_Ptr>>$08)|(Sfx_64_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_65_Ptr>>$08)|(Sfx_65_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_66_Ptr>>$08)|(Sfx_66_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_67_Ptr>>$08)|(Sfx_67_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_68_Ptr>>$08)|(Sfx_68_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_69_Ptr>>$08)|(Sfx_69_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_6A_Ptr>>$08)|(Sfx_6A_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_6B_Ptr>>$08)|(Sfx_6B_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_6C_Ptr>>$08)|(Sfx_6C_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_6D_Ptr>>$08)|(Sfx_6D_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_6E_Ptr>>$08)|(Sfx_6E_Ptr<<$08))&$FFFF)      
                dc.w    (((Sfx_6F_Ptr>>$08)|(Sfx_6F_Ptr<<$08))&$FFFF)       
                dc.w    (((Sfx_70_Ptr>>$08)|(Sfx_70_Ptr<<$08))&$FFFF)       


;-------------------------------------------------------------------------------
	align	$8000
;-------------------------------------------------------------------------------                 
SoundNN:	include "sfx-improved/NULL.asm"
Sound20:	include "sfx-improved/A0 - Jump.asm"
Sound21:	include "sfx-improved/A1 - Checkpoint.asm"
Sound22:	include "sfx-improved/A2 - Spike Switch.asm"
Sound23:	include "sfx-improved/A3 - Hurt.asm"
Sound24:	include "sfx-improved/A4 - Skidding.asm"
Sound25:	include "sfx-improved/A5 - Block Push.asm"
Sound26:	include "sfx-improved/A6 - Hurt by Spikes.asm"
Sound27:	include "sfx-improved/A7 - Sparkle.asm"
Sound28:	include "sfx-improved/A8 - Beep.asm"
Sound29:	include "sfx-improved/A9 - Special Stage Item (Unused).asm"
Sound2A:	include "sfx-improved/AA - Splash.asm"
Sound2B:	include "sfx-improved/AB - Swish.asm"
Sound2C:	include "sfx-improved/AC - Boss Hit.asm"
Sound2D:	include "sfx-improved/AD - Inhaling Bubble.asm"
Sound2E:	include "sfx-improved/AE - Lava Ball.asm"
Sound2F:	include "sfx-improved/AF - Shield.asm"
Sound30:	include "sfx-improved/B0 - Laser Beam.asm"
Sound31:	include "sfx-improved/B1 - Electricity (Unused).asm"
Sound32:	include "sfx-improved/B2 - Drown.asm"
Sound33:	include "sfx-improved/B3 - Fire Burn.asm"
Sound34:	include "sfx-improved/B4 - Bumper.asm"
Sound35:	include "sfx-improved/B5 - Ring.asm"
Sound36:	include "sfx-improved/B6 - Spikes Move.asm"
Sound37:	include "sfx-improved/B7 - Rumbling.asm"
Sound38:	include "sfx-improved/B8 - Unknown (Unused).asm"
Sound39:	include "sfx-improved/B9 - Smash.asm"
Sound3A:	include "sfx-improved/BA - Special Stage Glass (Unused).asm"
Sound3B:	include "sfx-improved/BB - Door Slam.asm"
Sound3C:	include "sfx-improved/BC - Spin Dash Release.asm"
Sound3D:	include "sfx-improved/BD - Hammer.asm"
Sound3E:	include "sfx-improved/BE - Roll.asm"
Sound3F:	include "sfx-improved/BF - Continue Jingle.asm"
Sound40:	include "sfx-improved/C0 - Casino Bonus.asm"
Sound41:	include "sfx-improved/C1 - Explosion.asm"
Sound42:	include "sfx-improved/C2 - Water Warning.asm"
Sound43:	include "sfx-improved/C3 - Enter Giant Ring (Unused).asm"
Sound44:	include "sfx-improved/C4 - Boss Explosion.asm"
Sound45:	include "sfx-improved/C5 - Tally End.asm"
Sound46:	include "sfx-improved/C6 - Ring Spill.asm"
Sound47:	include "sfx-improved/C7 - Chain Rise (Unused).asm"
Sound48:	include "sfx-improved/C8 - Flamethrower.asm"
Sound49:	include "sfx-improved/C9 - Hidden Bonus (Unused).asm"
Sound4A:	include "sfx-improved/CA - Special Stage Entry.asm"
Sound4B:	include "sfx-improved/CB - Slow Smash.asm"
Sound4C:	include "sfx-improved/CC - Spring.asm"
Sound4D:	include "sfx-improved/CD - Switch.asm"
Sound4E:	include "sfx-improved/CE - Ring Left Speaker.asm"
Sound4F:	include "sfx-improved/CF - Signpost.asm"
Sound50:	include "sfx-improved/D0 - CNZ Boss Zap.asm"
Sound51:	include "sfx-improved/D1 - Unknown (Unused).asm"
Sound52:	include "sfx-improved/D2 - Unknown (Unused).asm"
Sound53:	include "sfx-improved/D3 - Signpost 2P.asm"
Sound54:	include "sfx-improved/D4 - OOZ Lid Pop.asm"
Sound55:	include "sfx-improved/D5 - Sliding Spike.asm"
Sound56:	include "sfx-improved/D6 - CNZ Elevator.asm"
Sound57:	include "sfx-improved/D7 - Platform Knock.asm"
Sound58:	include "sfx-improved/D8 - Bonus Bumper.asm"
Sound59:	include "sfx-improved/D9 - Large Bumper.asm"
Sound5A:	include "sfx-improved/DA - Gloop.asm"
Sound5B:	include "sfx-improved/DB - Pre-Arrow Firing.asm"
Sound5C:	include "sfx-improved/DC - Fire.asm"
Sound5D:	include "sfx-improved/DD - Arrow Stick.asm"
Sound5E:	include "sfx-improved/DE - Helicopter.asm"
Sound5F:	include "sfx-improved/DF - Super Transform.asm"
Sound60:	include "sfx-improved/E0 - Spin Dash Rev.asm"
Sound61:	include "sfx-improved/E1 - Rumbling 2.asm"
Sound62:	include "sfx-improved/E2 - CNZ Launch.asm"
Sound63:	include "sfx-improved/E3 - Flipper.asm"
Sound64:	include "sfx-improved/E4 - HTZ Lift Click.asm"
Sound65:	include "sfx-improved/E5 - Leaves.asm"
Sound66:	include "sfx-improved/E6 - Mega Mack Drop.asm"
Sound67:	include "sfx-improved/E7 - Drawbridge Move.asm"
Sound68:	include "sfx-improved/E8 - Quick Door Slam.asm"
Sound69:	include "sfx-improved/E9 - Drawbridge Down.asm"
Sound6A:	include "sfx-improved/EA - Laser Burst.asm"
Sound6B:	include "sfx-improved/EB - Scatter.asm"
Sound6C:	include "sfx-improved/EC - Teleport.asm"
Sound6D:	include "sfx-improved/ED - Error.asm"
Sound6E:	include "sfx-improved/EE - Mecha Sonic Buzz.asm"
Sound6F:	include "sfx-improved/EF - Large Laser.asm"
Sound70:	include "sfx-improved/F0 - Oil Slide.asm"    

;-------------------------------------------------------------------------------
				align	$F0000

												; Offset_0x0F0000
				dc.w    (((DKick_Ptr>>$08)|(DKick_Ptr<<$08))&$FFFF)    ; $8036
				dc.w    (((DSnare_Ptr>>$08)|(DSnare_Ptr<<$08))&$FFFF)    ; $803B
				dc.w    (((DClap_Ptr>>$08)|(DClap_Ptr<<$08))&$FFFF)    ; $8040
				dc.w    (((DScratch_Ptr>>$08)|(DScratch_Ptr<<$08))&$FFFF)    ; $8045
				dc.w    (((DTimpani_Ptr>>$08)|(DTimpani_Ptr<<$08))&$FFFF)    ; $804A
				dc.w    (((DTom_Ptr>>$08)|(DTom_Ptr<<$08))&$FFFF)    ; $804F
				dc.w    (((DBongo_Ptr>>$08)|(DBongo_Ptr<<$08))&$FFFF)    ; $8054
				dc.w    (((DAC_88_Ptr>>$08)|(DAC_88_Ptr<<$08))&$FFFF)    ; $8059
                dc.w    (((DAC_89_Ptr>>$08)|(DAC_89_Ptr<<$08))&$FFFF)    ; $805E
                dc.w    (((DAC_8A_Ptr>>$08)|(DAC_8A_Ptr<<$08))&$FFFF)    ; $8063
                dc.w    (((DAC_8B_Ptr>>$08)|(DAC_8B_Ptr<<$08))&$FFFF)    ; $8068
                dc.w    (((DAC_8C_Ptr>>$08)|(DAC_8C_Ptr<<$08))&$FFFF)    ; $806D
                dc.w    (((DAC_8D_Ptr>>$08)|(DAC_8D_Ptr<<$08))&$FFFF)    ; $8072
                dc.w    (((DAC_8E_Ptr>>$08)|(DAC_8E_Ptr<<$08))&$FFFF)    ; $8077
                dc.w    (((DAC_8F_Ptr>>$08)|(DAC_8F_Ptr<<$08))&$FFFF)    ; $807C
                dc.w    (((DAC_90_Ptr>>$08)|(DAC_90_Ptr<<$08))&$FFFF)    ; $8081
                dc.w    (((DAC_91_Ptr>>$08)|(DAC_91_Ptr<<$08))&$FFFF)    ; $8086


                         
DKick_Setup:                                                  ; Offset_0x0F0036
                dc.b    $17
                dc.w    (((DKick_Size>>$08)|(DKick_Size<<$08))&$FFFF)         ; $0790
                dc.w    (((DKick_Data_Ptr>>$08)|(DKick_Data_Ptr<<$08))&$FFFF) ; $83BD                
DSnare_Setup:                                                  ; Offset_0x0F003B
                dc.b    $01
                dc.w    (((DSnare_Size>>$08)|(DSnare_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DSnare_Data_Ptr>>$08)|(DSnare_Data_Ptr<<$08))&$FFFF) ; $8B4D
DClap_Setup:                                                  ; Offset_0x0F0040
                dc.b    $06
                dc.w    (((DClap_Size>>$08)|(DClap_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DClap_Data_Ptr>>$08)|(DClap_Data_Ptr<<$08))&$FFFF) ; $8B4D
DScratch_Setup:                                                  ; Offset_0x0F0045
                dc.b    $08
                dc.w    (((DScratch_Size>>$08)|(DScratch_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DScratch_Data_Ptr>>$08)|(DScratch_Data_Ptr<<$08))&$FFFF) ; $8B4D
DTimpani_Setup:                                                  ; Offset_0x0F004A
                dc.b    $1B
                dc.w    (((DTimpani_Size>>$08)|(DTimpani_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DTimpani_Data_Ptr>>$08)|(DTimpani_Data_Ptr<<$08))&$FFFF) ; $8B4D
DTom_Setup:                                                  ; Offset_0x0F004F
                dc.b    $0A
                dc.w    (((DTom_Size>>$08)|(DTom_Size<<$08))&$FFFF)         ; $0300
                dc.w    (((DTom_Data_Ptr>>$08)|(DTom_Data_Ptr<<$08))&$FFFF) ; $80BD 
DBongo_Setup:                                                  ; Offset_0x0F0054
                dc.b    $1B
                dc.w    (((DBongo_Size>>$08)|(DBongo_Size<<$08))&$FFFF)         ; $0740 
                dc.w    (((DBongo_Data_Ptr>>$08)|(DBongo_Data_Ptr<<$08))&$FFFF) ; $B8D8
DAC_88_Setup:                                                  ; Offset_0x0F0054
                dc.b    $12
                dc.w    (((DTimpani_Size>>$08)|(DTimpani_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DTimpani_Data_Ptr>>$08)|(DTimpani_Data_Ptr<<$08))&$FFFF) ; $8B4D
DAC_89_Setup:                                                  ; Offset_0x0F004A
                dc.b    $15
                dc.w    (((DTimpani_Size>>$08)|(DTimpani_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DTimpani_Data_Ptr>>$08)|(DTimpani_Data_Ptr<<$08))&$FFFF) ; $8B4D
DAC_8A_Setup:                                                  ; Offset_0x0F004A
                dc.b    $1C
                dc.w    (((DTimpani_Size>>$08)|(DTimpani_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DTimpani_Data_Ptr>>$08)|(DTimpani_Data_Ptr<<$08))&$FFFF) ; $8B4D
DAC_8B_Setup:                                                  ; Offset_0x0F004A
                dc.b    $1D
                dc.w    (((DTimpani_Size>>$08)|(DTimpani_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DTimpani_Data_Ptr>>$08)|(DTimpani_Data_Ptr<<$08))&$FFFF) ; $8B4D
DAC_8C_Setup:                                                  ; Offset_0x0F004F
                dc.b    $02
                dc.w    (((DTom_Size>>$08)|(DTom_Size<<$08))&$FFFF)         ; $0300
                dc.w    (((DTom_Data_Ptr>>$08)|(DTom_Data_Ptr<<$08))&$FFFF) ; $80BD 
DAC_8D_Setup:                                                  ; Offset_0x0F004F
                dc.b    $05
                dc.w    (((DTom_Size>>$08)|(DTom_Size<<$08))&$FFFF)         ; $0300
                dc.w    (((DTom_Data_Ptr>>$08)|(DTom_Data_Ptr<<$08))&$FFFF) ; $80BD 
DAC_8E_Setup:                                                  ; Offset_0x0F004F
                dc.b    $08
                dc.w    (((DTom_Size>>$08)|(DTom_Size<<$08))&$FFFF)         ; $0300
                dc.w    (((DTom_Data_Ptr>>$08)|(DTom_Data_Ptr<<$08))&$FFFF) ; $80BD 
DAC_8F_Setup:                                                  ; Offset_0x0F0054
                dc.b    $08
                dc.w    (((DBongo_Size>>$08)|(DBongo_Size<<$08))&$FFFF)         ; $0740 
                dc.w    (((DBongo_Data_Ptr>>$08)|(DBongo_Data_Ptr<<$08))&$FFFF) ; $B8D8
DAC_90_Setup:                                                  ; Offset_0x0F0054
                dc.b    $0B
                dc.w    (((DBongo_Size>>$08)|(DBongo_Size<<$08))&$FFFF)         ; $0740 
                dc.w    (((DBongo_Data_Ptr>>$08)|(DBongo_Data_Ptr<<$08))&$FFFF) ; $B8D8
DAC_91_Setup:                                                  ; Offset_0x0F0054
                dc.b    $12
                dc.w    (((DBongo_Size>>$08)|(DBongo_Size<<$08))&$FFFF)         ; $0740 
                dc.w    (((DBongo_Data_Ptr>>$08)|(DBongo_Data_Ptr<<$08))&$FFFF) ; $B8D8

                
;-------------------------------------------------------------------------------
SndDAC_Start:

DKick_Data:
	BINCLUDE	"DAC/Kick.dpcm"
DKick_Data_End

DSnare_Data:
	BINCLUDE	"DAC/Snare.dpcm"
DSnare_Data_End

DClap_Data:
	BINCLUDE	"DAC/Clap.dpcm"
DClap_Data_End
	
DScratch_Data:
	BINCLUDE	"DAC/Scratch.dpcm"
DScratch_Data_End

DTimpani_Data:
	BINCLUDE	"DAC/Timpani.dpcm"
DTimpani_Data_End

DTom_Data:
	BINCLUDE	"DAC/Tom.dpcm"
DTom_Data_End

DBongo_Data:
	BINCLUDE	"DAC/Bongo.dpcm"
DBongo_Data_End

SndDAC_End

DKick_Ptr      equ (DKick_Setup&$FFFF)|$8000
DSnare_Ptr      equ (DSnare_Setup&$FFFF)|$8000
DClap_Ptr      equ (DClap_Setup&$FFFF)|$8000
DScratch_Ptr      equ (DScratch_Setup&$FFFF)|$8000
DTimpani_Ptr      equ (DTimpani_Setup&$FFFF)|$8000
DTom_Ptr      equ (DTom_Setup&$FFFF)|$8000
DBongo_Ptr      equ (DBongo_Setup&$FFFF)|$8000
DAC_88_Ptr      equ (DAC_88_Setup&$FFFF)|$8000
DAC_89_Ptr      equ (DAC_89_Setup&$FFFF)|$8000
DAC_8A_Ptr      equ (DAC_8A_Setup&$FFFF)|$8000
DAC_8B_Ptr      equ (DAC_8B_Setup&$FFFF)|$8000
DAC_8C_Ptr      equ (DAC_8C_Setup&$FFFF)|$8000
DAC_8D_Ptr      equ (DAC_8D_Setup&$FFFF)|$8000
DAC_8E_Ptr      equ (DAC_8E_Setup&$FFFF)|$8000
DAC_8F_Ptr      equ (DAC_8F_Setup&$FFFF)|$8000
DAC_90_Ptr      equ (DAC_90_Setup&$FFFF)|$8000
DAC_91_Ptr      equ (DAC_91_Setup&$FFFF)|$8000
;DAC_92_Ptr      equ (DAC_92_Setup&$FFFF)|$8000
;DAC_93_Ptr      equ (DAC_93_Setup&$FFFF)|$8000
;DAC_94_Ptr      equ (DAC_94_Setup&$FFFF)|$8000
;DAC_95_Ptr      equ (DAC_95_Setup&$FFFF)|$8000
;DAC_96_Ptr      equ (DAC_96_Setup&$FFFF)|$8000
;DAC_97_Ptr      equ (DAC_97_Setup&$FFFF)|$8000
;DAC_98_Ptr      equ (DAC_98_Setup&$FFFF)|$8000
;DAC_99_Ptr      equ (DAC_99_Setup&$FFFF)|$8000
;DAC_9A_Ptr      equ (DAC_9A_Setup&$FFFF)|$8000
;DAC_9B_Ptr      equ (DAC_9B_Setup&$FFFF)|$8000

DKick_Size         equ (DKick_Data_End-DKick_Data)  
DKick_Data_Ptr     equ (DKick_Data&$FFFF)|$8000 
DSnare_Size     	equ (DSnare_Data_End-DSnare_Data)  
DSnare_Data_Ptr 	equ (DSnare_Data&$FFFF)|$8000 
DClap_Size     	equ (DClap_Data_End-DClap_Data)  
DClap_Data_Ptr 	equ (DClap_Data&$FFFF)|$8000 
DScratch_Size     	equ (DScratch_Data_End-DScratch_Data)  
DScratch_Data_Ptr 	equ (DScratch_Data&$FFFF)|$8000 
DTimpani_Size     	equ (DTimpani_Data_End-DTimpani_Data)  
DTimpani_Data_Ptr 	equ (DTimpani_Data&$FFFF)|$8000 
DTom_Size         equ (DTom_Data_End-DTom_Data)   
DTom_Data_Ptr     equ (DTom_Data&$FFFF)|$8000
DBongo_Size         equ (DBongo_Data_End-DBongo_Data)   
DBongo_Data_Ptr     equ (DBongo_Data&$FFFF)|$8000

;-------------------------------------------------------------------------------
Offset_0x0F7304:
                align	$8000
;-------------------------------------------------------------------------------                   
SEGA_PCM_Data:                                                 ; Offset_0x0F8000
                binclude  "sounds\sega.pcm"
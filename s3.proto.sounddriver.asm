

; Z80 Bank $16
                align   $8000
Angel_Island_1_Snd_Data:                                       ; Offset_0x0B0000
                incbin  'data\sounds\aiz_1.snd'
Angel_Island_2_Snd_Data:                                       ; Offset_0x0B2210
                incbin  'data\sounds\aiz_2.snd'
Hydrocity_1_Snd_Data:                                          ; Offset_0x0B3F24
                incbin  'data\sounds\hz_1.snd'                
Hydrocity_2_Snd_Data:                                          ; Offset_0x0B5492
                incbin  'data\sounds\hz_2.snd'
Marble_Garden_1_Snd_Data:                                      ; Offset_0x0B6E51
                incbin  'data\sounds\mgz_1.snd'  
Marble_Garden_2_Snd_Data:                                      ; Offset_0x0B7468
                incbin  'data\sounds\mgz_2.snd'
; Z80 Bank $17    
                align   $8000
Carnival_Night_1_Snd_Data:                                     ; Offset_0x0B8000
                incbin  'data\sounds\cnz_1.snd'
Carnival_Night_2_Snd_Data:                                     ; Offset_0x0B9BBB
                incbin  'data\sounds\cnz_2.snd'                                                             
Flying_Battery_1_Snd_Data:                                     ; Offset_0x0BB99E
                incbin  'data\sounds\fbz_1.snd' 
Flying_Battery_2_Snd_Data:                                     ; Offset_0x0BBF36
                incbin  'data\sounds\fbz_2.snd'                                               
Icecap_1_Snd_Data:                                             ; Offset_0x0BC499
                incbin  'data\sounds\iz_1.snd'
Icecap_2_Snd_Data:                                             ; Offset_0x0BCA37
                incbin  'data\sounds\iz_2.snd'   
Launch_Base_1_Snd_Data:                                        ; Offset_0x0BD04B
                incbin  'data\sounds\lbz_1.snd'   
;-------------------------------------------------------------------------------
Asm_Code_2:                                                    ; Offset_0x0BFBA4
                dc.b    ' the screen.', $0D, $0A, $0D, $0A   
                dc.b    'DMAScrollArrows:', $0D, $0A  
                dc.b    '                Subq.w  #1,ArrowDelay                           ; Determine if arrow buffers or blanks should', $0D, $0A  
                dc.b    "                Bne.s   @NoTogg                                 ;  be DMA'ed this makes the arrows flash.", $0D, $0A, $0D, $0A                                                                                                                                          
                dc.b    '                Move.w  #15,ArrowDelay                          ; Reset delay between flashes.', $0D, $0A  
                dc.b    '                Eor.w   #1,ArrowToggle                          ; Toggle between blanks and arrows.', $0D, $0A, $0D, $0A
                dc.b    '@NoTogg:', $0D, $0A  
                dc.b    '                Tst.w   ArrowToggle                             ; Branch to relevent bit.', $0D, $0A  
                dc.b    '                Beq.s   @ArrowsOff', $0D, $0A, $0D, $0A 
                dc.b    '; ====== Arrows on, DMA the buffers. ======', $0D, $0A, $0D, $0A   
                dc.b    '                Lea     UpArrowBuffer,A0                        ; Source.', $0D, $0A  
                dc.b    '                Lea     ScrollBBase+(27*2)+(21*64),A1           ; Destination.', $0D, $0A  
                dc.b    '                Move.w  #1,D0                                   ; Number of words.', $0D, $0A  
                dc.b    '                Move.l  #VDP_VRAMWrite,D1                       ; Set to write to VRAM.   ', $0D, $0A     
                dc.b    '                Moveq   #2,D2                                   ; Auto increment.        ', $0D, $0A
                dc.b    '                Jsr     PushDMA                                 ; Move characters to VRAM.', $0D, $0A, $0D, $0A
                dc.b    '                Lea     DownArrowBuffer,A0                      ; Source.', $0D, $0A  
                dc.b    '                Lea     ScrollBBase+(27*2)+(26*64),A1           ; Destination.', $0D, $0A  
                dc.b    '                Move.w  #1,D0                 '  
;-------------------------------------------------------------------------------                
; Z80 Bank $18
                align   $8000
Launch_Base_2_Snd_Data:                                        ; Offset_0x0C0000
                incbin  'data\sounds\lbz_2.snd'                                              
Mushroom_Valley_1_Snd_Data:                                    ; Offset_0x0C252A
                incbin  'data\sounds\mvz_1.snd' 
Mushroom_Valley_2_Snd_Data:                                    ; Offset_0x0C2A9C
                incbin  'data\sounds\mvz_2.snd' 
Sandopolis_1_Snd_Data:                                         ; Offset_0x0C3005
                incbin  'data\sounds\sz_1.snd' 
Sandopolis_2_Snd_Data:                                         ; Offset_0x0C366F
                incbin  'data\sounds\sz_2.snd' 
Lava_Reef_1_Snd_Data:                                          ; Offset_0x0C3C62
                incbin  'data\sounds\lrz_1.snd' 
Lava_Reef_2_Snd_Data:                                          ; Offset_0x0C504F
                incbin  'data\sounds\lrz_2.snd' 
Sky_Sanctuary_Snd_Data:                                        ; Offset_0x0C6642
                incbin  'data\sounds\ssz.snd' 
Death_Egg_1_Snd_Data:                                          ; Offset_0x0C7954
                incbin  'data\sounds\dez_1.snd' 
; Z80 Bank $19  
                align   $8000
Death_Egg_2_Snd_Data:                                          ; Offset_0x0C8000
                incbin  'data\sounds\dez_2.snd'
Mini_Boss_Snd_Data:                                            ; Offset_0x0C8412
                incbin  'data\sounds\miniboss.snd'
Boss_Snd_Data:                                                 ; Offset_0x0C8742
                incbin  'data\sounds\boss.snd'
The_Doomsday_Snd_Data:                                         ; Offset_0x0C8C3E
                incbin  'data\sounds\tdz.snd'
Glowing_Spheres_Bonus_Stage_Snd_Data:                          ; Offset_0x0C9521
                incbin  'data\sounds\gs_bs.snd'
Special_Stage_Snd_Data:                                        ; Offset_0x0C9A84
                incbin  'data\sounds\ss.snd'
Slot_Machine_Bonus_Stage_Snd_Data:                             ; Offset_0x0CA31C
                incbin  'data\sounds\sm_bs.snd'
Gumball_Machine_Bonus_Stage_Snd_Data:                          ; Offset_0x0CAE04
                incbin  'data\sounds\gm_bs.snd'
Knuckles_Theme_Snd_Data:                                       ; Offset_0x0CBB19
                incbin  'data\sounds\knuckles.snd'
Azure_Lake_Snd_Data:                                           ; Offset_0x0CBE82
                incbin  'data\sounds\alz.snd'
Balloon_Park_Snd_Data:                                         ; Offset_0x0CC988
                incbin  'data\sounds\bpz.snd'
Desert_Palace_Snd_Data:                                        ; Offset_0x0CD620
                incbin  'data\sounds\dpz.snd'
;-------------------------------------------------------------------------------                
Asm_Code_3:                                                    ; Offset_0x0CF962
                dc.b    $0A
                dc.b    '                Lea     ScrollBBase+($b*64)+(27*2),A1', $0D, $0A
                dc.b    '                Jsr     Word_2GVRAM    ', $0D, $0A    
                dc.b    '                Move.w  #AsciiOffset+CHR_Palette0+CHR_HighPri,D5 ; Color is different if in impulse.', $0D, $0A, $0D, $0A
                dc.b    '                Bra     @DoneSeperators', $0D, $0A, $0D, $0A
                dc.b    '@NotImpulse:', $0D, $0A
                dc.b    "                Move.w  #AsciiOffset+CHR_Palette3+CHR_HighPri+'.',D0        ; Place decimal points and '/' seperators.", $0D, $0A
                dc.b    '                Lea     ScrollBBase+($5*64)+(28*2),A1           ', $0D, $0A           
                dc.b    '                Jsr     Word_2GVRAM     ', $0D, $0A     
                dc.b    '                Lea     ScrollBBase+($7*64)+(27*2),A1', $0D, $0A
                dc.b    '                Jsr     Word_2GVRAM     ', $0D, $0A     
                dc.b    '                Lea     ScrollBBase+($d*64)+(28*2),A1', $0D, $0A
                dc.b    '                Jsr     Word_2GVRAM     ', $0D, $0A     
                dc.b    "                Move.w  #AsciiOffset+CHR_Palette3+CHR_HighPri+'/',D0  ", $0D, $0A  
                dc.b    '                Lea     ScrollBBase+($9*64)+(27*2),A1', $0D, $0A
                dc.b    '                Jsr     Word_2GVRAM    ', $0D, $0A    
                dc.b    '                Lea     ScrollBBase+($b*64)+(27*2),A1', $0D, $0A
                dc.b    '                Jsr     Word_2GVRAM    ', $0D, $0A    
                dc.b    '                Move.w  #AsciiOffset+CHR_Palette3+CHR_HighPri,D5 ; Set up character color.', $0D, $0A, $0D, $0A
                dc.b    '@DoneSeperators:', $0D, $0A
                dc.b    '                Move.w  CurrentDistance,D7                      ; Get whole part of DISTANCE.', $0D, $0A
                dc.b    '                Moveq   #3,D6                                   ; Three characters.', $0D, $0A
                dc.b    "                Moveq   #'$',D2                                 ; Lead with a spaces.", $0D, $0A
                dc.b    '                Lea     ScrollBBase+($5*64)+(25*2),A1           ; Screen destination.', $0D, $0A
                dc.b    '                Jsr     PrintVal                                ; Print it.', $0D, $0A
                dc.b    '                Move.w  CurrentDistance+2,D7                    ; Get fractional part of DISTANCE.', $0D, $0A
                dc.b    '                Moveq   #2,D6                                   ; Two digits.', $0D, $0A
                dc.b    "                Move.w  #'0'"
;-------------------------------------------------------------------------------                                
; Z80 Bank $1A
                align   $8000
Chrome_Gadget_Snd_Data:                                        ; Offset_0x0D0000
                incbin  'data\sounds\cgz.snd'
Endless_Mine_Snd_Data:                                         ; Offset_0x0D224B
                incbin  'data\sounds\emz.snd'
Title_Screen_Snd_Data:                                         ; Offset_0x0D2993
                incbin  'data\sounds\ts.snd'
Credits_Snd_Data:                                              ; Offset_0x0D2DCC
                incbin  'data\sounds\credits.snd'
Time_Game_Over_Snd_Data:                                       ; Offset_0x0D383C
                incbin  'data\sounds\tgovr.snd'
Continue_Snd_Data:                                             ; Offset_0x0D3A99
                incbin  'data\sounds\continue.snd'
Level_Results_Snd_Data:                                        ; Offset_0x0D427A
                incbin  'data\sounds\results.snd'
Extra_Life_Snd_Data:                                           ; Offset_0x0D476A
                incbin  'data\sounds\1up.snd'
Got_Emerald_Snd_Data:                                          ; Offset_0x0D496A
                incbin  'data\sounds\emerald.snd'
Invincibility_Snd_Data:                                        ; Offset_0x0D4A38
                incbin  'data\sounds\invcblty.snd'
Competition_Menu_Snd_Data:                                     ; Offset_0x0D4CB8
                incbin  'data\sounds\2p_menu.snd'
Super_Sonic_Theme_Snd_Data:                                    ; Offset_0x0D5EAA
                incbin  'data\sounds\s_sonic.snd'
Data_Select_Menu_Snd_Data:                                     ; Offset_0x0D695E
                incbin  'data\sounds\menu.snd'
; Z80 Bank $1B
                align   $8000
Final_Boss_Snd_Data:                                           ; Offset_0x0D8000
                incbin  'data\sounds\f_boss.snd'
Panic_Snd_Data:                                                ; Offset_0x0D8592
                incbin  'data\sounds\panic.snd'                                 
;-------------------------------------------------------------------------------
; Offset_0x0D86C0:
                incbin  'data\unknown\dummy3.dat' 
Asm_Code_4:                                                    ; Offset_0x0DFEF2                
                dc.b    'L_No1,VIEW_NOT_FLIPPED,VIEW_SIZE_6', $0D, $0A
                dc.b    '                Dc.b    VIEW_PLANET10,VIEW_PAL_NoA,VIEW_FLIPPED,VIEW_SIZE_6', $0D, $0A, $0D, $0A

                dc.b    '                Dc.b    VIEW_PLANET4,VIEW_PAL_NoC,VIEW_FLIPPED,VIEW_SIZE_7', $0D, $0A
                dc.b    '                Dc.b    VIEW_PLANET10,VIEW_PAL_No1,VIEW_NOT_FLIPPED,VIEW_SIZE_7'  
;-------------------------------------------------------------------------------                                
Z80_Driver:                                                    ; Offset_0x0E0000
                incbin  'data\sounds\z80_drv.bin'
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
                dc.w    (((Music_20_Ptr>>$08)|(Music_20_Ptr<<$08))&$FFFF) ;$BE82
                dc.w    (((Music_21_Ptr>>$08)|(Music_21_Ptr<<$08))&$FFFF) ;$C988
                dc.w    (((Music_22_Ptr>>$08)|(Music_22_Ptr<<$08))&$FFFF) ;$D620
                
                dc.w    (((Music_23_Ptr>>$08)|(Music_23_Ptr<<$08))&$FFFF) ;$8000
                dc.w    (((Music_24_Ptr>>$08)|(Music_24_Ptr<<$08))&$FFFF) ;$A24B
                dc.w    (((Music_25_Ptr>>$08)|(Music_25_Ptr<<$08))&$FFFF) ;$A993
                dc.w    (((Music_26_Ptr>>$08)|(Music_26_Ptr<<$08))&$FFFF) ;$ADCC
                dc.w    (((Music_27_Ptr>>$08)|(Music_27_Ptr<<$08))&$FFFF) ;$B83C
                dc.w    (((Music_28_Ptr>>$08)|(Music_28_Ptr<<$08))&$FFFF) ;$BA99
                dc.w    (((Music_29_Ptr>>$08)|(Music_29_Ptr<<$08))&$FFFF) ;$C27A
                dc.w    (((Music_2A_Ptr>>$08)|(Music_2A_Ptr<<$08))&$FFFF) ;$C76A
                dc.w    (((Music_2B_Ptr>>$08)|(Music_2B_Ptr<<$08))&$FFFF) ;$C96A
                dc.w    (((Music_2C_Ptr>>$08)|(Music_2C_Ptr<<$08))&$FFFF) ;$CA38
                dc.w    (((Music_2D_Ptr>>$08)|(Music_2D_Ptr<<$08))&$FFFF) ;$CCB8
                dc.w    (((Music_2E_Ptr>>$08)|(Music_2E_Ptr<<$08))&$FFFF) ;$DEAA
                dc.w    (((Music_2F_Ptr>>$08)|(Music_2F_Ptr<<$08))&$FFFF) ;$E95E
                
                dc.w    (((Music_30_Ptr>>$08)|(Music_30_Ptr<<$08))&$FFFF) ;$8000
                dc.w    (((Music_31_Ptr>>$08)|(Music_31_Ptr<<$08))&$FFFF) ;$8592

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

DAC_Table:                                                     ; Offset_0x0F0000
                dc.w    (((DAC_81_Ptr>>$08)|(DAC_81_Ptr<<$08))&$FFFF)    ; $8036
                dc.w    (((DAC_82_Ptr>>$08)|(DAC_82_Ptr<<$08))&$FFFF)    ; $803B
                dc.w    (((DAC_83_Ptr>>$08)|(DAC_83_Ptr<<$08))&$FFFF)    ; $8040
                dc.w    (((DAC_84_Ptr>>$08)|(DAC_84_Ptr<<$08))&$FFFF)    ; $8045
                dc.w    (((DAC_85_Ptr>>$08)|(DAC_85_Ptr<<$08))&$FFFF)    ; $804A
                dc.w    (((DAC_86_Ptr>>$08)|(DAC_86_Ptr<<$08))&$FFFF)    ; $804F
                dc.w    (((DAC_87_Ptr>>$08)|(DAC_87_Ptr<<$08))&$FFFF)    ; $8054
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
                dc.w    (((DAC_92_Ptr>>$08)|(DAC_92_Ptr<<$08))&$FFFF)    ; $808B
                dc.w    (((DAC_93_Ptr>>$08)|(DAC_93_Ptr<<$08))&$FFFF)    ; $8090
                dc.w    (((DAC_94_Ptr>>$08)|(DAC_94_Ptr<<$08))&$FFFF)    ; $8095
                dc.w    (((DAC_95_Ptr>>$08)|(DAC_95_Ptr<<$08))&$FFFF)    ; $809A
                dc.w    (((DAC_96_Ptr>>$08)|(DAC_96_Ptr<<$08))&$FFFF)    ; $809F
                dc.w    (((DAC_97_Ptr>>$08)|(DAC_97_Ptr<<$08))&$FFFF)    ; $80A4
                dc.w    (((DAC_98_Ptr>>$08)|(DAC_98_Ptr<<$08))&$FFFF)    ; $80A9
                dc.w    (((DAC_99_Ptr>>$08)|(DAC_99_Ptr<<$08))&$FFFF)    ; $80AE
                dc.w    (((DAC_9A_Ptr>>$08)|(DAC_9A_Ptr<<$08))&$FFFF)    ; $80B3
                dc.w    (((DAC_9B_Ptr>>$08)|(DAC_9B_Ptr<<$08))&$FFFF)    ; $80B8                    
                         
DAC_81_Setup:                                                  ; Offset_0x0F0036
                dc.b    $04
                dc.w    (((DAC_81_Size>>$08)|(DAC_81_Size<<$08))&$FFFF)         ; $0790
                dc.w    (((DAC_81_Data_Ptr>>$08)|(DAC_81_Data_Ptr<<$08))&$FFFF) ; $83BD                
DAC_82_Setup:                                                  ; Offset_0x0F003B
                dc.b    $0E
                dc.w    (((DAC_82_To_85_Size>>$08)|(DAC_82_To_85_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DAC_82_To_85_Data_Ptr>>$08)|(DAC_82_To_85_Data_Ptr<<$08))&$FFFF) ; $8B4D
DAC_83_Setup:                                                  ; Offset_0x0F0040
                dc.b    $14
                dc.w    (((DAC_82_To_85_Size>>$08)|(DAC_82_To_85_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DAC_82_To_85_Data_Ptr>>$08)|(DAC_82_To_85_Data_Ptr<<$08))&$FFFF) ; $8B4D
DAC_84_Setup:                                                  ; Offset_0x0F0045
                dc.b    $1A
                dc.w    (((DAC_82_To_85_Size>>$08)|(DAC_82_To_85_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DAC_82_To_85_Data_Ptr>>$08)|(DAC_82_To_85_Data_Ptr<<$08))&$FFFF) ; $8B4D
DAC_85_Setup:                                                  ; Offset_0x0F004A
                dc.b    $20
                dc.w    (((DAC_82_To_85_Size>>$08)|(DAC_82_To_85_Size<<$08))&$FFFF)         ; $04C0
                dc.w    (((DAC_82_To_85_Data_Ptr>>$08)|(DAC_82_To_85_Data_Ptr<<$08))&$FFFF) ; $8B4D
DAC_86_Setup:                                                  ; Offset_0x0F004F
                dc.b    $04
                dc.w    (((DAC_86_Size>>$08)|(DAC_86_Size<<$08))&$FFFF)         ; $0300
                dc.w    (((DAC_86_Data_Ptr>>$08)|(DAC_86_Data_Ptr<<$08))&$FFFF) ; $80BD 
DAC_87_Setup:                                                  ; Offset_0x0F0054
                dc.b    $04
                dc.w    (((DAC_87_Size>>$08)|(DAC_87_Size<<$08))&$FFFF)         ; $0740 
                dc.w    (((DAC_87_Data_Ptr>>$08)|(DAC_87_Data_Ptr<<$08))&$FFFF) ; $B8D8
DAC_88_Setup:                                                  ; Offset_0x0F0059
                dc.b    $06
                dc.w    (((DAC_88_Size>>$08)|(DAC_88_Size<<$08))&$FFFF)         ; $1250
                dc.w    (((DAC_88_Data_Ptr>>$08)|(DAC_88_Data_Ptr<<$08))&$FFFF) ; $9FED
DAC_89_Setup:                                                  ; Offset_0x0F005E
                dc.b    $0A
                dc.w    (((DAC_89_Size>>$08)|(DAC_89_Size<<$08))&$FFFF)         ; $0A20 
                dc.w    (((DAC_89_Data_Ptr>>$08)|(DAC_89_Data_Ptr<<$08))&$FFFF) ; $C528
DAC_8A_Setup:                                                  ; Offset_0x0F0063
                dc.b    $14
                dc.w    (((DAC_8A_To_8B_Size>>$08)|(DAC_8A_To_8B_Size<<$08))&$FFFF)         ; $0160
                dc.w    (((DAC_8A_To_8B_Data_Ptr>>$08)|(DAC_8A_To_8B_Data_Ptr<<$08))&$FFFF) ; $B23D
DAC_8B_Setup:                                                  ; Offset_0x0F0068
                dc.b    $1B
                dc.w    (((DAC_8A_To_8B_Size>>$08)|(DAC_8A_To_8B_Size<<$08))&$FFFF)         ; $0160
                dc.w    (((DAC_8A_To_8B_Data_Ptr>>$08)|(DAC_8A_To_8B_Data_Ptr<<$08))&$FFFF) ; $B23D
DAC_8C_Setup:                                                  ; Offset_0x0F006D
                dc.b    $08
                dc.w    (((DAC_8C_Size>>$08)|(DAC_8C_Size<<$08))&$FFFF)         ; $006B
                dc.w    (((DAC_8C_Data_Ptr>>$08)|(DAC_8C_Data_Ptr<<$08))&$FFFF) ; $B39D
DAC_8D_Setup:                                                  ; Offset_0x0F0072
                dc.b    $0B
                dc.w    (((DAC_8D_To_8E_Size>>$08)|(DAC_8D_To_8E_Size<<$08))&$FFFF)         ; $04D0
                dc.w    (((DAC_8D_To_8E_Data_Ptr>>$08)|(DAC_8D_To_8E_Data_Ptr<<$08))&$FFFF) ; $B408
DAC_8E_Setup:                                                  ; Offset_0x0F0077
                dc.b    $11
                dc.w    (((DAC_8D_To_8E_Size>>$08)|(DAC_8D_To_8E_Size<<$08))&$FFFF)         ; $04D0
                dc.w    (((DAC_8D_To_8E_Data_Ptr>>$08)|(DAC_8D_To_8E_Data_Ptr<<$08))&$FFFF) ; $B408
DAC_8F_Setup:                                                  ; Offset_0x0F007C
                dc.b    $08
                dc.w    (((DAC_8F_Size>>$08)|(DAC_8F_Size<<$08))&$FFFF)         ; $0510 
                dc.w    (((DAC_8F_Data_Ptr>>$08)|(DAC_8F_Data_Ptr<<$08))&$FFFF) ; $C018
DAC_90_Setup:                                                  ; Offset_0x0F0081
                dc.b    $03
                dc.w    (((DAC_90_To_93_Size>>$08)|(DAC_90_To_93_Size<<$08))&$FFFF)         ; $0650
                dc.w    (((DAC_90_To_93_Data_Ptr>>$08)|(DAC_90_To_93_Data_Ptr<<$08))&$FFFF) ; $999D
DAC_91_Setup:                                                  ; Offset_0x0F0086
                dc.b    $07
                dc.w    (((DAC_90_To_93_Size>>$08)|(DAC_90_To_93_Size<<$08))&$FFFF)         ; $0650
                dc.w    (((DAC_90_To_93_Data_Ptr>>$08)|(DAC_90_To_93_Data_Ptr<<$08))&$FFFF) ; $999D
DAC_92_Setup:                                                  ; Offset_0x0F008B
                dc.b    $0A
                dc.w    (((DAC_90_To_93_Size>>$08)|(DAC_90_To_93_Size<<$08))&$FFFF)         ; $0650
                dc.w    (((DAC_90_To_93_Data_Ptr>>$08)|(DAC_90_To_93_Data_Ptr<<$08))&$FFFF) ; $999D
DAC_93_Setup:                                                  ; Offset_0x0F0090
                dc.b    $0E
                dc.w    (((DAC_90_To_93_Size>>$08)|(DAC_90_To_93_Size<<$08))&$FFFF)         ; $0650
                dc.w    (((DAC_90_To_93_Data_Ptr>>$08)|(DAC_90_To_93_Data_Ptr<<$08))&$FFFF) ; $999D
DAC_94_Setup:                                                  ; Offset_0x0F0095
                dc.b    $06
                dc.w    (((DAC_94_To_97_Size>>$08)|(DAC_94_To_97_Size<<$08))&$FFFF)         ; $0990
                dc.w    (((DAC_94_To_97_Data_Ptr>>$08)|(DAC_94_To_97_Data_Ptr<<$08))&$FFFF) ; $900D
DAC_95_Setup:                                                  ; Offset_0x0F009A
                dc.b    $0A
                dc.w    (((DAC_94_To_97_Size>>$08)|(DAC_94_To_97_Size<<$08))&$FFFF)         ; $0990
                dc.w    (((DAC_94_To_97_Data_Ptr>>$08)|(DAC_94_To_97_Data_Ptr<<$08))&$FFFF) ; $900D
DAC_96_Setup:                                                  ; Offset_0x0F009F
                dc.b    $0D
                dc.w    (((DAC_94_To_97_Size>>$08)|(DAC_94_To_97_Size<<$08))&$FFFF)         ; $0990
                dc.w    (((DAC_94_To_97_Data_Ptr>>$08)|(DAC_94_To_97_Data_Ptr<<$08))&$FFFF) ; $900D
DAC_97_Setup:                                                  ; Offset_0x0F00A4
                dc.b    $12
                dc.w    (((DAC_94_To_97_Size>>$08)|(DAC_94_To_97_Size<<$08))&$FFFF)         ; $0990
                dc.w    (((DAC_94_To_97_Data_Ptr>>$08)|(DAC_94_To_97_Data_Ptr<<$08))&$FFFF) ; $900D
DAC_98_Setup:                                                  ; Offset_0x0F00A9
                dc.b    $0B
                dc.w    (((DAC_98_To_9A_Size>>$08)|(DAC_98_To_9A_Size<<$08))&$FFFF)         ; $0D1F
                dc.w    (((DAC_98_To_9A_Data_Ptr>>$08)|(DAC_98_To_9A_Data_Ptr<<$08))&$FFFF) ; $CF48
DAC_99_Setup:                                                  ; Offset_0x0F00AE
                dc.b    $13
                dc.w    (((DAC_98_To_9A_Size>>$08)|(DAC_98_To_9A_Size<<$08))&$FFFF)         ; $0D1F
                dc.w    (((DAC_98_To_9A_Data_Ptr>>$08)|(DAC_98_To_9A_Data_Ptr<<$08))&$FFFF) ; $CF48
DAC_9A_Setup:                                                  ; Offset_0x0F00B3
                dc.b    $16
                dc.w    (((DAC_98_To_9A_Size>>$08)|(DAC_98_To_9A_Size<<$08))&$FFFF)         ; $0D1F
                dc.w    (((DAC_98_To_9A_Data_Ptr>>$08)|(DAC_98_To_9A_Data_Ptr<<$08))&$FFFF) ; $CF48
DAC_9B_Setup:                                                  ; Offset_0x0F00B8
                dc.b    $12
                dc.w    (((DAC_9B_Size>>$08)|(DAC_9B_Size<<$08))&$FFFF)         ; $169D  
                dc.w    (((DAC_9B_Data_Ptr>>$08)|(DAC_9B_Data_Ptr<<$08))&$FFFF) ; $DC67
                
;-------------------------------------------------------------------------------
DAC_86_Data:                                                   ; Offset_0x0F00BD
                incbin  'data\sounds\dacs\dac_86.bin' 
DAC_86_Data_End:                  
;-------------------------------------------------------------------------------                          
DAC_81_Data:                                                   ; Offset_0x0F03BD
                incbin  'data\sounds\dacs\dac_81.bin' 
DAC_81_Data_End:  
;-------------------------------------------------------------------------------
DAC_82_To_85_Data:                                             ; Offset_0x0F0B4D
                incbin  'data\sounds\dacs\dac82-85.bin' 
DAC_82_To_85_Data_End:  
;-------------------------------------------------------------------------------
DAC_94_To_97_Data:                                             ; Offset_0x0F100D
                incbin  'data\sounds\dacs\dac94-97.bin' 
DAC_94_To_97_Data_End: 
;-------------------------------------------------------------------------------
DAC_90_To_93_Data:                                             ; Offset_0x0F199D
                incbin  'data\sounds\dacs\dac90-93.bin' 
DAC_90_To_93_Data_End:       
;-------------------------------------------------------------------------------
DAC_88_Data:                                                   ; Offset_0x0F1FED
                incbin  'data\sounds\dacs\dac_88.bin' 
DAC_88_Data_End:  
;-------------------------------------------------------------------------------
DAC_8A_To_8B_Data:                                             ; Offset_0x0F323D
                incbin  'data\sounds\dacs\dac8A-8B.bin' 
DAC_8A_To_8B_Data_End:     
;-------------------------------------------------------------------------------
DAC_8C_Data:                                                   ; Offset_0x0F339D
                incbin  'data\sounds\dacs\dac_8C.bin' 
DAC_8C_Data_End:   
;-------------------------------------------------------------------------------
DAC_8D_To_8E_Data:                                             ; Offset_0x0F3408
                incbin  'data\sounds\dacs\dac8D-8E.bin' 
DAC_8D_To_8E_Data_End:                    
;-------------------------------------------------------------------------------
DAC_87_Data:                                                   ; Offset_0x0F38D8
                incbin  'data\sounds\dacs\dac_87.bin' 
DAC_87_Data_End:   
;-------------------------------------------------------------------------------
DAC_8F_Data:                                                   ; Offset_0x0F4018
                incbin  'data\sounds\dacs\dac_8F.bin' 
DAC_8F_Data_End:
;-------------------------------------------------------------------------------
DAC_89_Data:                                                   ; Offset_0x0F4528
                incbin  'data\sounds\dacs\dac_89.bin' 
DAC_89_Data_End:
;-------------------------------------------------------------------------------
DAC_98_To_9A_Data:                                             ; Offset_0x0F4F48
                incbin  'data\sounds\dacs\dac98-9A.bin' 
DAC_98_To_9A_Data_End:  
;-------------------------------------------------------------------------------
DAC_9B_Data:                                                   ; Offset_0x0F5C67
                incbin  'data\sounds\dacs\dac_9B.bin' 
DAC_9B_Data_End:
;-------------------------------------------------------------------------------
Offset_0x0F7304:
                incbin  'data\unknown\dummy6.dat'           
;-------------------------------------------------------------------------------                   
SEGA_PCM_Data:                                                 ; Offset_0x0F8000
                incbin  'data\sounds\sega.pcm'
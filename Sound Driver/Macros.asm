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
		
Music_01_Ptr equ (Angel_Island_1_Snd_Data&$FFFF)|$8000
Music_02_Ptr equ (Angel_Island_2_Snd_Data&$FFFF)|$8000  
Music_03_Ptr equ (Hydrocity_1_Snd_Data&$FFFF)|$8000 
Music_04_Ptr equ (Hydrocity_2_Snd_Data&$FFFF)|$8000 
Music_05_Ptr equ (Marble_Garden_1_Snd_Data&$FFFF)|$8000 
Music_06_Ptr equ (Marble_Garden_2_Snd_Data&$FFFF)|$8000
Music_07_Ptr equ (Carnival_Night_1_Snd_Data&$FFFF)|$8000
Music_08_Ptr equ (Carnival_Night_2_Snd_Data&$FFFF)|$8000
Music_09_Ptr equ (Flying_Battery_1_Snd_Data&$FFFF)|$8000
Music_0A_Ptr equ (Flying_Battery_2_Snd_Data&$FFFF)|$8000
Music_0B_Ptr equ (Icecap_1_Snd_Data&$FFFF)|$8000
Music_0C_Ptr equ (Icecap_2_Snd_Data&$FFFF)|$8000
Music_0D_Ptr equ (Launch_Base_1_Snd_Data&$FFFF)|$8000
Music_0E_Ptr equ (Launch_Base_2_Snd_Data&$FFFF)|$8000
Music_0F_Ptr equ (Mushroom_Valley_1_Snd_Data&$FFFF)|$8000
Music_10_Ptr equ (Mushroom_Valley_2_Snd_Data&$FFFF)|$8000
Music_11_Ptr equ (Sandopolis_1_Snd_Data&$FFFF)|$8000
Music_12_Ptr equ (Sandopolis_2_Snd_Data&$FFFF)|$8000
Music_13_Ptr equ (Lava_Reef_1_Snd_Data&$FFFF)|$8000
Music_14_Ptr equ (Lava_Reef_2_Snd_Data&$FFFF)|$8000
Music_15_Ptr equ (Sky_Sanctuary_Snd_Data&$FFFF)|$8000
Music_16_Ptr equ (Death_Egg_1_Snd_Data&$FFFF)|$8000
Music_17_Ptr equ (Death_Egg_2_Snd_Data&$FFFF)|$8000
Music_18_Ptr equ (Mini_Boss_Snd_Data&$FFFF)|$8000
Music_19_Ptr equ (Boss_Snd_Data&$FFFF)|$8000
Music_1A_Ptr equ (The_Doomsday_Snd_Data&$FFFF)|$8000
Music_1B_Ptr equ (Glowing_Spheres_Bonus_Stage_Snd_Data&$FFFF)|$8000
Music_1C_Ptr equ (Special_Stage_Snd_Data&$FFFF)|$8000
Music_1D_Ptr equ (Slot_Machine_Bonus_Stage_Snd_Data&$FFFF)|$8000
Music_1E_Ptr equ (Gumball_Machine_Bonus_Stage_Snd_Data&$FFFF)|$8000
Music_1F_Ptr equ (Knuckles_Theme_Snd_Data&$FFFF)|$8000
Music_20_Ptr equ (Azure_Lake_Snd_Data&$FFFF)|$8000
Music_21_Ptr equ (Balloon_Park_Snd_Data&$FFFF)|$8000
Music_22_Ptr equ (Desert_Palace_Snd_Data&$FFFF)|$8000
Music_23_Ptr equ (Chrome_Gadget_Snd_Data&$FFFF)|$8000
Music_24_Ptr equ (Endless_Mine_Snd_Data&$FFFF)|$8000
Music_25_Ptr equ (Title_Screen_Snd_Data&$FFFF)|$8000
Music_26_Ptr equ (Credits_Snd_Data&$FFFF)|$8000
Music_27_Ptr equ (Time_Game_Over_Snd_Data&$FFFF)|$8000
Music_28_Ptr equ (Continue_Snd_Data&$FFFF)|$8000
Music_29_Ptr equ (Level_Results_Snd_Data&$FFFF)|$8000
Music_2A_Ptr equ (Extra_Life_Snd_Data&$FFFF)|$8000
Music_2B_Ptr equ (Got_Emerald_Snd_Data&$FFFF)|$8000
Music_2C_Ptr equ (Invincibility_Snd_Data&$FFFF)|$8000
Music_2D_Ptr equ (Competition_Menu_Snd_Data&$FFFF)|$8000
Music_2E_Ptr equ (Super_Sonic_Theme_Snd_Data&$FFFF)|$8000
Music_2F_Ptr equ (Data_Select_Menu_Snd_Data&$FFFF)|$8000
Music_30_Ptr equ (Final_Boss_Snd_Data&$FFFF)|$8000
Music_31_Ptr equ (Panic_Snd_Data&$FFFF)|$8000



DAC_81_Ptr      equ (DAC_81_Setup&$FFFF)|$8000
DAC_82_Ptr      equ (DAC_82_Setup&$FFFF)|$8000
DAC_83_Ptr      equ (DAC_83_Setup&$FFFF)|$8000
DAC_84_Ptr      equ (DAC_84_Setup&$FFFF)|$8000
DAC_85_Ptr      equ (DAC_85_Setup&$FFFF)|$8000
DAC_86_Ptr      equ (DAC_86_Setup&$FFFF)|$8000
DAC_87_Ptr      equ (DAC_87_Setup&$FFFF)|$8000
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
DAC_92_Ptr      equ (DAC_92_Setup&$FFFF)|$8000
DAC_93_Ptr      equ (DAC_93_Setup&$FFFF)|$8000
DAC_94_Ptr      equ (DAC_94_Setup&$FFFF)|$8000
DAC_95_Ptr      equ (DAC_95_Setup&$FFFF)|$8000
DAC_96_Ptr      equ (DAC_96_Setup&$FFFF)|$8000
DAC_97_Ptr      equ (DAC_97_Setup&$FFFF)|$8000
DAC_98_Ptr      equ (DAC_98_Setup&$FFFF)|$8000
DAC_99_Ptr      equ (DAC_99_Setup&$FFFF)|$8000
DAC_9A_Ptr      equ (DAC_9A_Setup&$FFFF)|$8000
DAC_9B_Ptr      equ (DAC_9B_Setup&$FFFF)|$8000

DAC_81_Size           equ (DAC_81_Data_End-DAC_81_Data)  
DAC_81_Data_Ptr       equ (DAC_81_Data&$FFFF)|$8000 
DAC_82_To_85_Size     equ (DAC_82_To_85_Data_End-DAC_82_To_85_Data)  
DAC_82_To_85_Data_Ptr equ (DAC_82_To_85_Data&$FFFF)|$8000 
DAC_86_Size           equ (DAC_86_Data_End-DAC_86_Data)   
DAC_86_Data_Ptr       equ (DAC_86_Data&$FFFF)|$8000
DAC_87_Size           equ (DAC_87_Data_End-DAC_87_Data)   
DAC_87_Data_Ptr       equ (DAC_87_Data&$FFFF)|$8000
DAC_88_Size           equ (DAC_88_Data_End-DAC_88_Data)   
DAC_88_Data_Ptr       equ (DAC_88_Data&$FFFF)|$8000
DAC_89_Size           equ (DAC_89_Data_End-DAC_89_Data)   
DAC_89_Data_Ptr       equ (DAC_89_Data&$FFFF)|$8000
DAC_8A_To_8B_Size     equ (DAC_8A_To_8B_Data_End-DAC_8A_To_8B_Data)  
DAC_8A_To_8B_Data_Ptr equ (DAC_8A_To_8B_Data&$FFFF)|$8000 
DAC_8C_Size           equ (DAC_8C_Data_End-DAC_8C_Data)   
DAC_8C_Data_Ptr       equ (DAC_8C_Data&$FFFF)|$8000
DAC_8D_To_8E_Size     equ (DAC_8D_To_8E_Data_End-DAC_8D_To_8E_Data)  
DAC_8D_To_8E_Data_Ptr equ (DAC_8D_To_8E_Data&$FFFF)|$8000 
DAC_8F_Size           equ (DAC_8F_Data_End-DAC_8F_Data)   
DAC_8F_Data_Ptr       equ (DAC_8F_Data&$FFFF)|$8000
DAC_90_To_93_Size     equ (DAC_90_To_93_Data_End-DAC_90_To_93_Data)  
DAC_90_To_93_Data_Ptr equ (DAC_90_To_93_Data&$FFFF)|$8000 
DAC_94_To_97_Size     equ (DAC_94_To_97_Data_End-DAC_94_To_97_Data)  
DAC_94_To_97_Data_Ptr equ (DAC_94_To_97_Data&$FFFF)|$8000 
DAC_98_To_9A_Size     equ (DAC_98_To_9A_Data_End-DAC_98_To_9A_Data)  
DAC_98_To_9A_Data_Ptr equ (DAC_98_To_9A_Data&$FFFF)|$8000 
DAC_9B_Size           equ (DAC_9B_Data_End-DAC_9B_Data)   
DAC_9B_Data_Ptr       equ (DAC_9B_Data&$FFFF)|$8000  
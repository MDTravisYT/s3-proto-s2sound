Sound20_Null_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoiceNull
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG1, Sound20_Null_PSG1,	$F4, $00

; PSG1 Data
Sound20_Null_PSG1:
	smpsStop
	

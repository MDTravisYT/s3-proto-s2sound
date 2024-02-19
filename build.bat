@echo off

cd	"Sound Driver"
IF EXIST Music.bin del Music.bin

set USEANSI=n
asl -q -L -A -E -xx Music.asm
p2bin Music.p Music.bin -r 0x-0x

del Music.p
cd ..

IF EXIST s3built.bin move /Y s3built.bin s3built.prev.bin >NUL
asm68k.exe /k /p /o ae-,c+ Sonic3Prototype.asm, s3built.bin > log.txt
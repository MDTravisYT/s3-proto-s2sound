@echo off

echo Checking Built ROM with Original ROM...
IF EXIST s3built.bin ( fc /b s3built.bin s3.proto.bin 
)else echo s3built.bin does not exist.

pause

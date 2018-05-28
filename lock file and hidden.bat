cls
ECHO off
color 02
title Locker Folder And Hidden Folder Created By Ananda Rauf Maududi (CEO PT.MRVDevelopment) Created Dates: 28 Mei 2018
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo Apakah Anda Yakin Mau Mengkuncikan Folder  Anda dan Menyembunyikan Folder Anda ? (Ya / Tidak)
set/p "cho=>
if %cho%==Y goto LOCK

 
if %cho%==Ya goto LOCK
if %cho%==ya goto LOCK
if %cho%==y goto LOCK
if %cho%==tidak goto END
if %cho%==Tidak goto LOCK
if %cho%==n goto END
if %cho%==N goto LOCK
echo Invalid choice.
goto CONFIRM
:LOCK
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Maaf, Masukan Password Folder Anda Untuk Membuka Folder dan Menampilkan Kembali Folder Anda
set/p "pass=>"
if NOT %pass%== MASUKAN PASSWORD ANDA DISINI goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder Anda Terbuka
goto End
:FAIL
echo Maaf Password Anda Salah
goto end
:MDLOCKER
md Locker
echo Locker Berhasil Dibuat
goto End
:End
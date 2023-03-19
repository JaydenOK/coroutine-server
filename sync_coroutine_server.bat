@echo off

::::::::::::::  stop
echo Start Sync ...

D:/www/rsync/cwRsync_5.4/rsync.exe -avzP  --port=873 --delete --no-super --password-file=/cygdrive/D/www/rsync/cwRsync_5.4/pass.txt --exclude=logs/* --exclude=cache/* --exclude=.git/ --exclude=.idea/ /cygdrive/D/www/sw-www/swoole-coroutine-server/ root@192.168.92.208::swoole_coroutine_server

echo Success...
:: 延时
choice /t 9 /d y /n >nul
::pause
exit
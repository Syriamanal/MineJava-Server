@echo off
TITLE MineJava-Server server program for Minecraft: Pocket Edition +8.0
cd /d %~dp0
if exist bin\php\.exe (
	if exist bin\mintty.exe (
		start "" bin\mintty.exe -o Columns=88 -o Rows=32 -o AllowBlinking=0 -o FontQuality=3 -o CursorType=0 -o CursorBlinks=1 -h error -t "MineJava-Server" -i bin/pocketmine.ico -w max bin\php\php.exe -d enable_dl=On MineJava-Server.js --enable-ansi %*
	) else (
		bin\php\php.exe -d enable_dl=On PocketMine-MP.php %*
	)
) else (
	if exist bin\mintty.exe (
		start "" bin\mintty.exe -o Columns=88 -o Rows=32 -o AllowBlinking=0 -o FontQuality=3 -o CursorType=0 -o CursorBlinks=1 -h error -t "MineJava-Server" -i bin/pocketmine.ico -w max php -d enable_dl=On MineJava-Server.js --enable-ansi %*
	) else (
		php -d enable_dl=On MineJava-Server.js%*
	)
)


@echo off
color a
echo Escolha uma cor:
echo a. Azul
echo b. Verde
echo c. Vermelho
echo d. Amarelo

set /p cor=Digite a letra da cor desejada: 

if /i "%cor%" equ "a" (
    color b
) else if /i "%cor%" equ "b" (
    color a
) else if /i "%cor%" equ "c" (
    color c
) else if /i "%cor%" equ "d" (
    color e
) else (
    echo Escolha inválida. Usando cor padrão.
    color a
)
cls
echo TESTE PING
echo --------------------------
echo Digite o Ip a ser pingado:
set /p SERVER=


set LOG_FILE=ping_log_%SERVER%_.txt
cls
echo TESTE PING
echo --------------------------
echo Ping no %SERVER%...

:PING_LOOP
ping %SERVER% -n 1 >> %LOG_FILE%
timeout /nobreak /t 1 > nul
goto PING_LOOP

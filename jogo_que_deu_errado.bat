@echo off
title 'Voce vs Fazendeiros'
color zz
if "%1" neq "" ( goto %1)
:Menu
cls
echo ‘1. Iniciar’
echo ‘2. Instrucoes’
echo ‘3. Sair’
set /p answer=‘Insira o número da sua opcao e pressione Enter.’
if %answer%==1 goto ‘Iniciar_1’
if %answer%==2 goto 'Instrucos'
if %answer%==3 goto 'Sair'
:‘Sair’
echo Obrigado por jogar!
exit /b
Para as intrucoes, digite:
 :‘Instrucoes’
cls
echo ‘instrucoes'

echo.
echo 'corre'
pause 
goto menu
:Iniciar_1
cls
echo ‘Voce encontrou inimigos. A tropa dele possui:’
echo ‘3 fazendeiros’
echo ‘Voce possui altas chances de ganhar.’
set /p answer=‘Deseja correr ou lutar?’
if %answer%==‘Correr’ goto ‘Correr_1’
if %answer%==‘Lutar’ goto ‘Lutar_1’
:Correr_1
cls
echo Você conseguiu correr!
pause
goto ‘Iniciar_1’
:Lutar_1
echo Você escolher lutar.
echo A batalha está acirrada.
goto Luta_1_Loop
:‘Luta_1_Loop’
set /a num=%random%
if %num% gtr 4 goto ‘Luta_1_Loop’
if %num% lss 1 goto ‘Luta_1_Loop’
if %num%==1 goto ‘Perder_Fight_1’
if %num%==2 goto ‘Ganhar_Fight_1’
if %num%==3 goto ‘Ganhar_Fight_1’
if %num%==4 goto ‘Ganhar_Fight_1’
:‘Perder_Fight_1’
cls
echo Desculpe. Voce perdeu a batalha :(
pause
goto Menu
:‘Ganhar_Fight_1’
cls
echo Parabens. Voce ganhou a batalha!
set /p answer=‘Deseja salvar?’
if %answer%==‘Sim’ goto ‘Salvar’
if %answer%==‘Nao’ goto ‘Iniciar_2’
:‘Salvar’
goto ‘Iniciar_2’

@echo off
TITLE Teclab - Otimizador de pc v1
echo Teclab - Otimizador de pc v1
echo.
echo (C) Eike e Andre-Mr Bean - Todos direitos reservados. :: forked from Eike Straub
echo.
echo Este programa nao vai fazer nenhuma alteracao no seus arquivos se quiser voltar a este ponto e eliminar este programa do seu pc use a restauracao do sistema
echo.
echo.
Timeout 5 > NUL
cls
echo Permissao de administrador necessaria...
echo.
Timeout 3 > NUL
TAKEOWN /F Teclab.exe
cls
echo Permissao de Administrador garantida.
Timeout 3  > NUL
%windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
cls
echo Criando ponto de restauracao do sistema...
echo.
echo Por favor aguarde...
Timeout 3 > NUL
Echo Set SRP = GetObject("winmgmts:\\.\root\default:SystemRestore") >> enablesystemrestore.Vbs
Echo DSRP = SRP.Disable("") >> enablesystemrestore.Vbs
Echo ESRP = SRP.Enable("") >> enablesystemrestore.Vbs
Echo CSRP = SRP.CreateRestorePoint ("TYC Install", 0, 100) >> enablesystemrestore.Vbs
cls
Timeout 2 > NUL
start enablesystemrestore.Vbs
cls
Timeout 2 > NUL
cls
DEL enablesystemrestore.Vbs
cls
Timeout 2 > NUL
echo Ponto de restauracao do sistema concluida, caso voce precise de reversao .
Timeout 2 > NUL
echo.
echo.
echo.
echo Criando e iniciando um registro que ajusta e otimiza seu computador.
echo.
echo Criando script...
Timeout 5 > NUL
cls
echo Windows Registry Editor Version 5.00 >> fix.reg
echo. >> fix.reg
echo ; © EikeStraub >> fix.reg
echo ; Isso torna seu computador mais rápido e mais eficiente. O computador sera desligado mais rapidamente. >> fix.reg
echo ; Otimiza o disco rigido e a RAM e tambem configura para que os programas sejam abertos mais rapidamente e o Windows responda rapidamente >> fix.reg
echo Windows Registry Editor Version 5.00 >> fix.reg
echo. >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM] >> fix.reg
echo "Enable Aero Peek"=00000000 >> fix.reg
echo. >> fix.reg
echo ; Do not Animate windows when minimizing and maximizing >> fix.reg
echo [HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics] >> fix.reg
echo "MinAnimate"="0" >> fix.reg
echo. >> fix.reg
echo ; Disable Animations in Taskbar and Start Menu >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >> fix.reg
echo "TaskbarAnimations"="0" >> fix.reg
echo. >> fix.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >> fix.reg
echo "TaskbarAnimations"=- >> fix.reg
echo. >> fix.reg
echo ; Disable desktop composition >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM] >> fix.reg
echo "CompositionPolicy"="0" >> fix.reg
echo. >> fix.reg
echo ; Enable transparent glass >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM] >> fix.reg
echo "ColorizationOpaqueBlend"="0" >> fix.reg
echo. >> fix.reg
echo ; Disable Taskbar Thumbnail Previews >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM] >> fix.reg
echo "AlwaysHibernateThumbnails"=dword:00000001 >> fix.reg
echo. >> fix.reg
echo ; Disable Explorer Thumbnails (All Users) >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer] >> fix.reg
echo "DisableThumbnails"=dword:00000000 >> fix.reg
echo. >> fix.reg
echo ; Disable translucent selection rectangle >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >> fix.reg
echo "ListviewAlphaSelect"="0" >> fix.reg
echo. >> fix.reg
echo ; Dont show window contents while dragging >> fix.reg
echo [HKEY_CURRENT_USER\Control Panel\Desktop] >> fix.reg
echo "DragFullWindows"="1" >> fix.reg
echo. >> fix.reg
echo ; Dont smooth Edges of Screen Fonts >> fix.reg
echo [HKEY_CURRENT_USER\Control Panel\Desktop] >> fix.reg
echo "FontSmoothing"="2" >> fix.reg
echo [HKEY_CURRENT_USER\Control Panel\Desktop] >> fix.reg
echo "FontSmoothingType"=dword:00000002 >> fix.reg
echo. >> fix.reg
echo ; Use drop shadows for icon labels on the desktop >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >> fix.reg
echo "ListviewShadow"="1" >> fix.reg
echo. >> fix.reg
echo ; Disable visual styles on windows and buttons >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ThemeManager] >> fix.reg
echo "ThemeActive"="1" >> fix.reg
echo.  >> fix.reg
echo [HKEY_CURRENT_USER\Control Panel\Desktop] >> fix.reg
echo "UserPreferencesMask"=- >> fix.reg
echo. >> fix.reg
echo ; Fix corrupt icons >> fix.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer] >> fix.reg
echo "Max Cached Icons"="4096" >> fix.reg
echo "MaxCachedIcons"="4096" >> fix.reg
echo. >> fix.reg
echo ; Shuts off balloon notes >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >> fix.reg
echo “ShowInfoTip”=dword:00000000 >> fix.reg
echo “FolderContentsInfoTip”=dword:00000000 >> fix.reg
echo “StartButtonBalloonTip”=dword:00000000 >> fix.reg
echo “EnableBalloonTips”=dword:00000000 >> fix.reg
echo.  >> fix.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >> fix.reg
echo "ShowInfoTip"=dword:00000000 >> fix.reg
echo "EnableBalloonTips"=dword:00000000 >> fix.reg
echo "StartButtonBalloonTip"=dword:00000000 >> fix.reg
echo "FolderContentsInfoTip"=dword:00000000 >> fix.reg
echo. >> fix.reg
echo ; Disable thumbnail visor >> fix.reg
echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer] >> fix.reg
echo “DisableThumbsDBOnNetworkFolders”=dword:00000001 >> fix.reg
echo. >> fix.reg
echo ; Do not force Windows Update to restart your computer >> fix.reg
echo \SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU] >> fix.reg
echo “NoAutoRebootWithLoggedOnUsers”=dword:00000001 >> fix.reg
echo. >> fix.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer] >> fix.reg
echo “AlwaysUnloadDLL”=dword:00000001 >> fix.reg
echo. >> fix.reg
echo ; Start menu faster. Disables non-existent programs automatically >> fix.reg
echo [HKEY_CURRENT_USER\Control Panel\Desktop] >> fix.reg
echo "AutoEndTasks"="1" >> fix.reg
echo "HungAppTimeout"="1000" >> fix.reg
echo "MenuShowDelay"="8" >> fix.reg
echo "WaitToKillAppTimeout"="2000" >> fix.reg
echo "LowLevelHooksTimeout"="1000" >> fix.reg
echo "ForegroundLockTimeout"=dword:00000000 >> fix.reg
echo. >> fix.reg
echo [HKEY_CURRENT_USER\Control Panel\Mouse] >> fix.reg
echo "MouseHoverTime"="8" >> fix.reg
echo. >> fix.reg
echo ; Speed ​​up the internet >> fix.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched] >> fix.reg
echo “NonBestEfforLimit”=dword:00000000 >> fix.reg
echo. >> fix.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters] >> fix.reg
echo "BufferMultiplier"=dword:00000400 >> fix.reg
echo. >> fix.reg
echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings] >> fix.reg
echo "MaxConnectionsPerServer"=dword:00000014 >> fix.reg
echo "MaxConnectionsPer1_0Server"=dword:00000014 >> fix.reg
echo. >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings] >> fix.reg
echo "MaxConnectionsPerServer"=dword:00000014 >> fix.reg
echo "MaxConnectionsPer1_0Server"=dword:00000014 >> fix.reg
echo. >> fix.reg
echo ; Speeds up hard drive >> fix.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem] >> fix.reg
echo "NtfsDisable8dot3NameCreation"=dword:00000001 >> fix.reg
echo "NtfsDisableLastAccessUpdate"=dword:00000001 >> fix.reg
echo “NtfsMftZoneReservation”=dword:00000002 >> fix.reg
echo. >> fix.reg
echo ; Faster navigation, Hiding annoying bubbles. >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >> fix.reg
echo "LastActiveClick"=dword:00000001 >> fix.reg
echo “ExtendedUIHoverTime"=dword:00000001 >> fix.reg
echo “DesktopLivePreviewHoverTime”=dword:00000000 >> fix.reg
echo “EnableBalloonTips”=dword:00000000 >> fix.reg
echo. >> fix.reg
echo ; Speed ​​up the memory >> fix.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management] >> fix.reg
echo "PagedPoolSize"=dword:00000000 >> fix.reg
echo "NonPagedPoolSize"=dword:00000000 >> fix.reg
echo "DisablePagingExecutive"=dword:00000001 >> fix.reg
echo "LargeSystemCache"=dword:00000000 >> fix.reg
echo “IoPageLockLimit”=dword:00010000 >> fix.reg
echo. >> fix.reg
echo ; Turn off the computer faster >> fix.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control] >> fix.reg
echo "WaitToKillServiceTimeout"="2000" >> fix.reg
echo. >> fix.reg
echo ; Disable low system checks >> fix.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer] >> fix.reg
echo "NoLowDiskSpaceChecks"=dword:00000001 >> fix.reg
echo "LinkResolveIgnoreLinkInfo"=dword:00000001 >> fix.reg
echo "NoResolveSearch"=dword:00000001 >> fix.reg
echo "NoResolveTrack"=dword:00000001 >> fix.reg
echo "NoInternetOpenWith"=dword:00000001 >> fix.reg
cls
echo Ativando o script...
Timeout 3 > NUL
cls
regedit.exe /s fix.reg
cls
Echo Script ativado...
Timeout 3 > NUL
cls
echo Script encontrado no registro. remova o script. Nao precisa mais.
Timeout 3 > NUL
cls
DEL fix.reg
cls
echo O computador deve ser mais rapido agora.
echo.
echo Inicializando a limpeza completa do lixo no sistema...
timeout 5 > NUL
cls
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q "%appdata%\Microsoft\Windows\cookies\*.*"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%appdata%\Microsoft\Windows\Recent\*.*"
del /f /s /q %windir%\SoftwareDistribution\Download\*.*
cls
echo Iniciando script de inicializacao...
Timeout 3 > NUL
echo @echo off >> Teclab-Otimiz.bat
echo cls >> Teclab-Otimiz.bat
echo :: Desativando serviços desnecessarios = prestanda >> Teclab-otimiz.bat
echo :: Limpando arquivos desnecessarios. >> Teclab-Otimiz.bat
echo cls >> Teclab-Otimiz.bat
echo sc config LanmanServer start= auto >> Teclab-Otimiz.bat
echo sc config seclogon start= demand >> Teclab-Otimiz.bat
echo sc config ProtectedStorage start= demand >> Teclab-Otimiz.bat
echo sc config AeLookupSvc start= demand >> Teclab-Otimiz.bat
echo sc config WerSvc start= demand >> Teclab-Otimiz.bat
echo sc config RemoteRegistry start= demand >> Teclab-Otimiz.bat
echo sc config TabletInputService start= demand >> Teclab-Otimiz.bat
echo sc config BBSvc start= demand >> Teclab-Otimiz.bat
echo sc config ADSMService start= demand >> Teclab-Otimiz.bat
echo sc config AFBAgent start= demand >> Teclab-Otimiz.bat
echo sc config ASLDRService start= demand >> Teclab-Otimiz.bat
echo sc config ATKGFNEXSrv start= demand >> Teclab-Otimiz.bat
echo sc config SharedAccess start= auto >> Teclab-Otimiz.bat
echo sc config Mcx2Svc start= demand >> Teclab-Otimiz.bat
echo sc config NetTcpPortSharing start= demand >> Teclab-Otimiz.bat
echo sc config RemoteAccess start= demand >> Teclab-Otimiz.bat
echo sc config WMPNetworkSvc start= demand >> Teclab-Otimiz.bat
echo sc config FontCache3.0.0.0 start= demand >> Teclab-Otimiz.bat
echo sc config WSearch start= demand >> Teclab-Otimiz.bat
echo sc config DPS start= demand >> Teclab-Otimiz.bat
echo sc config TrkWks start= demand >> Teclab-Otimiz.bat
echo sc config iphlpsvc start= demand >> Teclab-Otimiz.bat
echo sc config lmhosts start= demand >> Teclab-Otimiz.bat
echo sc config LanmanWorkstation start= auto >> Teclab-Otimiz.bat
echo del /f /s /q "%appdata%\Microsoft\Windows\cookies\*.*" >> Teclab-Otimiz.bat
echo del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" >> Teclab-Otimiz.bat
echo del /f /s /q "%userprofile%\appdata\Local\Temp\*.*" >> Teclab-Otimiz.bat
echo del /f /s /q "%userprofile%\Local Settings\Temp\*.*"  >> Teclab-Otimiz.bat
echo del /f /s /q "%appdata%\Microsoft\Windows\Recent\*.*" >> Teclab-Otimiz.bat
echo del /f /s /q “%windir%\SoftwareDistribution\Download\*.*” >> Teclab-Otimiz.bat
echo del /f /s /q %windir%\SoftwareDistribution\Download\*.* >> Teclab-Otimiz.bat
echo del /f /s /q %windir%\Offline Web Pages\*.* >> Teclab-Otimiz.bat
echo del /f /s /q “%windir%\Offline Web Pages\*.*” >> Teclab-Otimiz.bat
echo del /f /s /q %windir%\Downloaded Program Files\*.* >> Teclab-Otimiz.bat
echo rd /s /q "%appdata%\Microsoft\Windows\cookies\” >> Teclab-Otimiz.bat
echo rd /s /q "%userprofile%\Local Settings\Temporary Internet Files\" >> Teclab-Otimiz.bat
echo rd /s /q "%userprofile%\appdata\Local\Temp\" >> Teclab-Otimiz.bat
echo rd /s /q "%userprofile%\Local Settings\Temp\"  >> Teclab-Otimiz.bat
echo rd /s /q "%appdata%\Microsoft\Windows\Recent\" >> Teclab-Otimiz.bat
echo rd /s /q %windir%\SoftwareDistribution\Download >> Teclab-Otimiz.bat
echo rd /s /q "%userprofile%\Local Settings\Temp\" & md "%userprofile%\Local Settings\Temp\"  >> Teclab-Otimiz.bat
echo rd /s /q %windir%\Temp & md %windir%\Temp >> Teclab-Otimiz.bat
echo rd /s /q %windir%\Offline Web Pages >> TYC-Teclab-Otimiz.bat
echo rd /s /q %windir%\Downloaded Program Files >> Teclab-Otimiz.bat
echo.  >> Teclab-Otimiz.bat
echo cls >> Teclab-Otimiz.bat
echo Teclab - Otimizador do Pc >> Teclab-Otimiz.bat
echo echo. >> Teclab-Otimiz.bat
echo echo Teclab- Otimizador do pc >> Teclab-Otimiz.bat
echo echo Version 1.0 >> Teclab-Otimiz.bat
echo echo. >> Teclab-Otimiz.bat
echo echo (C) 2018 Feito para o Grupo de Facebook do Teclab - Criado por Eike Straub e Andre-Mr Bean... >> Teclab-Otimiz.bat
echo echo. >> Teclab-Otimiz.bat
echo echo Este programa limpa arquivos incorretos e desabilita serviços desnecessarios >> Teclab-Otimiz.bat
echo echo no computador toda vez que o computador inicia >> Teclab-Otimiz.bat
echo echo e não vai prejudicar o seu computador, nem apagar arquivos importantes seus, se quiser desativar vai em iniciar e o apague da inicializacao.>> Teclab-Otimiz.bat
echo echo. >> Teclab-Otimiz.bat
echo echo Teclab - Brasil acima de tudo Deus acima de todos. >> Teclab-Otimiz.bat
echo echo. >> Teclab-Otimiz.bat
echo Timeout 10 >> Teclab-Otimiz.bat
echo %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f >> TYC-Tweakyourcomputer.bat
echo exit >> Teclab-Otimiz.bat
cls
echo Sending new script to startup...
Timeout 2 > NUL
xcopy "Teclab-Otimiz.bat" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup"
cls
timeout 2 > NUL
DEL Teclab-Otimiz.bat
cls
echo.
echo Teclab - Otimizador de PC 
echo Version 1.0
echo.
echo (C) Teclab Eike Straub e Andre-Mr Bean...
echo.
echo Este programa nao vai fazer ao seu computador qualquer dano. nao se preocupe.
echo.
echo.
echo Teclab-Otimizador de Pc. 
echo.
echo Uma reinicialização e necessária e comecara em breve...
Timeout 3 > NUL
echo.
Shutdown.exe /r /t 30
echo.
echo Salve seu trabalho. Seu computador reinicia em 30 segundos.
echo.
echo Não desligue o programa, ele fara isso sozinho.
echo.
echo Por favor aguarde...
Timeout 3 > NUL
exit

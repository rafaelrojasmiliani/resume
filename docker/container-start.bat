@echo off
for /F "tokens=1,2,3" %%A in ('netsh interface ip show addresses "vEthernet (Default Switch)" ^| findstr "IP Address"') DO (set xserverip=%%C)

rem START /B C:\"Program Files"\VcXsrv\vcxsrv.exe
docker pull rafa606/vim-with-latex
docker run -it ^
        --volume %CD%\..:/workspace ^
        --env="DISPLAY=%xserverip%:0.0" ^
        --entrypoint="/bin/bash" ^
        "rafa606/vim-with-latex" -c "addgroup --gid 11011 %USERNAME% --force-badname;  adduser --gecos \"\" --disabled-password  --uid 11011 --gid 11011 %USERNAME% --force-badname ; usermod -a -G video %USERNAME%; echo %USERNAME% ALL=\(ALL\) NOPASSWD:ALL >> /etc/sudoers; sudo -Eu %USERNAME%  bash"
}

main

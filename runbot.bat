@ECHO off

CHCP 65001 > NUL
CD /d "%~dp0"

youtube-dl --rm-cache-dir

IF EXIST %SYSTEMROOT%\py.exe (
    CMD /c %SYSTEMROOT%\py.exe -3.5 run.py
    GOTO end
)

python --version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO nopython

CMD /c python run.py
GOTO end

:nopython
ECHO ERROR: Python has either not been installed or not added to your PATH.

:end
pause
@echo off

REM Setup VIAME Paths (no need to set if installed to registry or already set up)

SET VIAME_INSTALL=.\..\..

CALL %VIAME_INSTALL%\setup_viame.bat

REM Run Pipeline

python.exe %VIAME_INSTALL%\configs\ingest_video.py --init -d videos ^
  --build-index --ball-tree -p pipelines\ingest_video.tut.pipe

pause
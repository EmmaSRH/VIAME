@echo off

REM Setup VIAME Paths (no need to set if installed to registry or already set up)

SET VIAME_INSTALL=.\..\..

CALL "%VIAME_INSTALL%\setup_viame.bat"

REM Extra path setup, in a future iteration this line will be deprecated

SET SPROKIT_PYTHON_MODULES=kwiver.processes;viame.processes;camtrawl_processes

REM Run Pipeline

pipeline_runner.exe -p "%VIAME_INSTALL%\configs\pipelines\measurement_default.gmm.tut.pipe"

pause

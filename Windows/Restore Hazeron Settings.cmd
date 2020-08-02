@ECHO OFF
CD /D "%~dp0"
reg import Controls.reg
reg import Settings.reg
reg import Widget.reg
ECHO Import finished.

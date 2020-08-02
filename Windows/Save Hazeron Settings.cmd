@ECHO OFF
CD /D "%~dp0"
reg export "HKEY_CURRENT_USER\Software\Software Engineering\Shores of Hazeron\Controls" Controls.reg
reg export "HKEY_CURRENT_USER\Software\Software Engineering\Shores of Hazeron\Settings" Settings.reg
reg export "HKEY_CURRENT_USER\Software\Software Engineering\Shores of Hazeron\Widget" Widget.reg
rar a -t -ag-YYYYMMDD -- SoH-settings.rar Controls.reg Settings.reg Widget.reg "Save Hazeron Settings.cmd" "Restore Hazeron Settings.cmd"
IF NOT ERRORLEVEL 1 (
  DEL /Q Controls.reg Settings.reg Widget.reg 2>&1
)
ECHO Export finished.

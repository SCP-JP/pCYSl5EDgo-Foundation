@echo off
pwsh -NoProfile -ExecutionPolicy Unrestricted -File "%~dp0renew-en.ps1" %1 "%1.en" "%1.eno"
@echo off
pwsh -NoProfile -ExecutionPolicy Unrestricted -File "%~dp0metadata.ps1" %~dp0../metadata/ %1
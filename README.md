# windows-dots

These are my dotfiles for Windows, focused on PowerShell and related tooling.

## Hardlink PowerShell profile

Create a hardlink from your profile location to this repo so PowerShell picks up the shared profile. Run these from the repo root so relative paths work.

PowerShell:

```powershell
New-Item -ItemType Directory -Path "$env:USERPROFILE\Documents\PowerShell" -Force
New-Item -ItemType HardLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$PWD\powershell\Microsoft.PowerShell_profile.ps1"
```

Command Prompt:

```cmd
mkdir "%USERPROFILE%\Documents\PowerShell"
mklink /H "%USERPROFILE%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" "%CD%\powershell\Microsoft.PowerShell_profile.ps1"
```

## Hardlink Windows Terminal settings

Create a hardlink from Windows Terminal's settings file to this repo. Run these from the repo root so relative paths work.

If you use Windows Terminal Preview, replace `Microsoft.WindowsTerminal_8wekyb3d8bbwe` with `Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe` in the paths below.

PowerShell:

```powershell
New-Item -ItemType Directory -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState" -Force
New-Item -ItemType HardLink -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$PWD\windows-terminal\settings.json"
```

Command Prompt:

```cmd
mkdir "%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
mklink /H "%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" "%CD%\windows-terminal\settings.json"
```

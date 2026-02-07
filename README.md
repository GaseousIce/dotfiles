# windows-dots

These are my dotfiles for Windows, focused on PowerShell and related tooling.

## Symlink PowerShell profile

Create a symlink from your profile location to this repo so PowerShell picks up the shared profile. You may need to run PowerShell as Administrator unless Developer Mode is enabled in Windows.

```powershell
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\Documents\repos\dotfiles\Microsoft.PowerShell_profile.ps1"
```

If the profile directory does not exist, create it first:

```powershell
New-Item -ItemType Directory -Path "$env:USERPROFILE\Documents\PowerShell" -Force
```

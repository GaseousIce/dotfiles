# Salesforce CLI autocomplete
. "C:\Users\ayush\AppData\Local\sf\autocomplete\functions\powershell\sf.ps1"

Invoke-Expression (&starship init powershell)

# Make Tab use menu-based completion in every session.
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

Remove-Item Alias:ls -Force -ErrorAction SilentlyContinue
Remove-Item Alias:ll -Force -ErrorAction SilentlyContinue
Remove-Item Alias:lt -Force -ErrorAction SilentlyContinue

function ls { eza -a --icons=always @args }
function ll { eza -al --icons=always @args }
function lt { eza -a --tree --level=1 --icons=always @args }

# Remove lyric and text files from the current directory tree.
function Remove-Lyrics {
	Get-ChildItem -Path "." -Include "*.lrc", "*.txt" -Recurse -File | Remove-Item -Force -Verbose
}

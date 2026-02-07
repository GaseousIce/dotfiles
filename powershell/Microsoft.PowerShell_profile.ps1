Invoke-Expression (&starship init powershell)

Remove-Item Alias:ls -Force -ErrorAction SilentlyContinue
Remove-Item Alias:ll -Force -ErrorAction SilentlyContinue
Remove-Item Alias:lt -Force -ErrorAction SilentlyContinue

function ls { eza -a --icons=always @args }
function ll { eza -al --icons=always @args }
function lt { eza -a --tree --level=1 --icons=always @args }
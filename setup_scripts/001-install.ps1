# Installation steps for a fresh Windows 11 computer

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

winget install --id Microsoft.PowerShell --source winget
Install-Module -Name CompletionPredictor
Install-Module -Name Terminal-Icons
cp ./Microsoft.PowerShell_profile.ps1 $PROFILE

winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Neovim.Neovim
#winget install BurntSushi.ripgrep.MSVC

choco install ripgrep -y

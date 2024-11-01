# Installation steps for a fresh Windows 11 computer

winget install --id Microsoft.PowerShell --source winget
Install-Module -Name CompletionPredictor
cp ./Microsoft.PowerShell_profile.ps1 $PROFILE

winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Neovim.Neovimwinget install Neovim.Neovim
winget install BurntSushi.ripgrep.MSVC


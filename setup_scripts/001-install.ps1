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

$UserBinDir = Join-Path $HOME "bin"
if (-not (Test-Path $UserBinDir)){
  New-Item -Type Directory $UserBinDir
}
curl https://luarocks.github.io/luarocks/releases/luarocks-3.11.1-windows-64.zip --output (Join-Path $UserBinDir "luarocks.zip")

cp .\bin\powershell\ $UserBinDir -R

cp .\nvim\ $HOME\AppData\Local\ -R -Force

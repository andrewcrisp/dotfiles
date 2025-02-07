$clean_detailed = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/clean-detailed.omp.json"
$atomic = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/atomic.omp.json"

$myconfSource = $atomic
$configDir = "~/.config/powershell/"
$myconfFile = Join-Path $configDir oh-my-posh.config.json

if (-not (Test-Path $configDir))
{
  New-Item -Type Directory $configDir 
}

if (-not (Test-Path $myconfFile))
{
  Invoke-WebRequest $myconfSource -OutFile $myconfFile
}

oh-my-posh --init --shell pwsh --config $myconfFile | Invoke-Expression

if ($host.Name -eq 'ConsoleHost')
{
	Import-Module -Name Terminal-Icons
  Import-Module -Name CompletionPredictor
	Set-PSReadLineOption -PredictionSource HistoryAndPlugin
	Set-PSReadLineOption -PredictionViewStyle ListView
	Set-PSReadLineOption -EditMode Windows
  Set-Alias -Name vim -Value nvim
}

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


$env:Path+=";C:\Users\AndrewCrisp\bin\luarocks\"

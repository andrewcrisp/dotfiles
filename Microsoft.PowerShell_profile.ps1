$clean_detailed = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/clean-detailed.omp.json"
$atomic = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/atomic.omp.json"

$myconf = $atomic

oh-my-posh --init --shell pwsh --config $myconf | Invoke-Expression

if ($host.Name -eq 'ConsoleHost')
{
	Import-Module -Name Terminal-Icons
  Import-Module -Name CompletionPredictor
	Set-PSReadLineOption -PredictionSource HistoryAndPlugin
	Set-PSReadLineOption -PredictionViewStyle ListView
	Set-PSReadLineOption -EditMode Windows
}


# Load posh-git example profile
. 'C:\tools\poshgit\dahlbyk-posh-git-c25f364\profile.example.ps1'

Rename-Item Function:\Prompt PoshGitPrompt -Force
function Prompt() {if(Test-Path Function:\PrePoshGitPrompt){++$global:poshScope; New-Item function:\script:Write-host -value "param([object] `$object, `$backgroundColor, `$foregroundColor, [switch] `$nonewline) " -Force | Out-Null;$private:p = PrePoshGitPrompt; if(--$global:poshScope -eq 0) {Remove-Item function:\Write-Host -Force}}PoshGitPrompt}

set-location C:\Projects
$Shell = $Host.UI.RawUI
$shell.WindowTitle= "!n`$4N!TY"
$shell.BackgroundColor = "Black"
Clear-Host
echo ' ^_^"V hai!'
echo " Welcome back MrCunninghamz! What shall we do today?!"
echo "`n"
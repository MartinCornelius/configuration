# Starting directory
set-location "C:\Users\Martin Cornelius\Programming\Studie\1.semester"

# Prompt settings
Import-Module posh-git
Import-Module oh-my-posh

# Extra options
$omp_config = Join-Path $PSScriptRoot ".\martincornelius.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
Import-Module -Name Terminal-Icons

# Alias
Set-Alias -Name vi -Value vim

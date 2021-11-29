$ErrorActionPreference = "Stop"

Import-Module sandersaares.devops-scripts

Get-TimeBasedNuGetVersionString $env:INPUT_VERSIONSTRING
#########################################################################################
#########################################################################################
#########################################################################################
# NOTES:
# - Made by João Gabriel Dos Reis Hermida Macêdo (joaomacedx@gmail.com)
# Script developed to read files of a certain type of extension and generate a list
#########################################################################################
#########################################################################################
#########################################################################################

Import-Module -DisableNameChecking '.\Modules\Functions\GetFilesByExtension.psm1'
Import-Module -DisableNameChecking '.\Modules\Functions\ExportArrayToCSV.psm1'

try {
  Write-Host "Initializing parameter loading"
  $configParams = (Get-Content '.\config.json' | Out-String | ConvertFrom-Json)
  $path = $configParams."files-path"
  $extension = $configParams."files-extension"

  Write-Host "Please wait, looking for files in the specified path"
  $files = Get-FilesByExtension -path $path  -extension $extension

  Export-ArrayToCSV -inputArray $files  -outputPath "./Files"
} catch [System.SystemException] {
  Write-Host "An error has occurred"
}

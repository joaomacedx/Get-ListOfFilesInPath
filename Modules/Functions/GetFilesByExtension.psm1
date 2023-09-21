#
#
# Function to get files from a specified path, according to the file extension, for example: ".pdf", ".dwg"
function Get-FilesByExtension {
  param (
    [Parameter(Mandatory = $true)]
    [string] $path,
    [Parameter(Mandatory = $true)]
    [string] $extension
  ) 
    $files = Get-ChildItem "$path" -Recurse | Where-Object {$_.Extension -eq $extension}
    $formattedFiles = $files | ForEach-Object {
      [PSCustomObject]@{
        Name = $_.Name
        Directory = $_.Directory.FullName
        CreationTime = $_.CreationTime
        LastWriteTime = $_.LastWriteTime
      }
  }

  return $formattedFiles
}
Export-ModuleMember -Function  Get-FilesByExtension

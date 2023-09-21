# Function to export array to csv file
function Export-ArrayToCSV {
  param (
    [Parameter(Mandatory = $true)]
    [array]$inputArray,

    [Parameter(Mandatory = $true)]
    [string]$outputPath
    )

    try {
      $InputArray | Export-Csv -Path $OutputPath
      Write-Host "Array successfully exported to $OutputPath."
    } catch {
      Write-Host "An error occurred while exporting the array to CSV: $_"
    }
}
Export-ModuleMember -Function  Export-ArrayToCSV 

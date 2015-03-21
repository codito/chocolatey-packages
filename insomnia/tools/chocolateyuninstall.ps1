$packageName = 'insomnia'

try
{
    $osBitness = Get-ProcessorBits
    $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

    Write-Host "Stopping insomnia if running..."
    Get-Process | Where-Object { $_.Name -like $packageName } | Stop-Process

    Write-Host "Removing $installDir"
    Remove-Item -Recurse -Force $installDir
}
catch {
  Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
  throw
}

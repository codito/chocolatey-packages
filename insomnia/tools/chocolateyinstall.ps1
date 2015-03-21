$packageName = 'insomnia'
$url = 'http://dlaa.me/Samples/Insomnia/Insomnia.zip'

try
{
    $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

    Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$installDir" -Url64bit ""
}
catch {
    throw $_.Exception
}

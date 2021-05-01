$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url64bit      = 'https://mullvad.net/media/app/MullvadVPN-2021.3.exe'

  checksum64    = 'c34580a8179141ea5fa9c1502b0c0784a40e93280cdcff8912f8b3190c196a17'
  checksumType64= 'sha256'

  silentArgs    = '/S'
}

Install-ChocolateyPackage @packageArgs

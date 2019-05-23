    
$ErrorActionPreference = 'Stop';
$packageName= '{{PackageName}}'
$url        = 'https://github.com/spinware/erni/blob/master/SymantecExtractor.exe?raw=true' 

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  silentArgs    = '/S'
  url           = $url
  Checksum 		= '{{checksum}}'
  ChecksumType 	= 'sha256'
}
Stop-Process -ProcessName symantec* -ErrorAction SilentlyContinue -Force
Install-ChocolateyPackage @packageArgs
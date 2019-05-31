$packageName = 'sonarqube-scanner-jar'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version = "3.3.0.1492"
$url = "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$version.zip"
$checksumType = 'sha256'
$checksum = '0fabd3fa2e10bbfc5cdf64765ff35e88e7937e48aad51d84401b9f36dbde3678'
Install-ChocolateyZipPackage $packageName $url $toolsDir -Checksum $checksum -ChecksumType $checksumType

Install-BinFile "sonar-scanner" "$toolsDir\sonar-scanner-$version\bin\sonar-scanner.bat"

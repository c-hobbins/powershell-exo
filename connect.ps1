$exops = Connect-ExchangeOnline -AppId "6676ec88-10b8-4ab9-9178-186819908e14" `
-CertificateFilePath "./certs/ssc-exo.pfx" `
-CertificatePassword (ConvertTo-SecureString -String "Password1!" -AsPlainText -Force) `
-Organization "sscsmarch.onmicrosoft.com" `
-ShowBanner:$false `
-LogLevel "All" `
-UseMultithreading:$true `
-LogDirectoryPath "./logs/EXOCmdletTelemetry/EXOCmdletTelemetry-yyyymmdd-hhmmss.csv" `
-SkipImportSession

Get-PSSession | Select-Object -Property State, Name
#Get-PSSession | Format-List
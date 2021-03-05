Disconnect-ExchangeOnline -Confirm:$false

Get-PSSession | Select-Object -Property State, Name
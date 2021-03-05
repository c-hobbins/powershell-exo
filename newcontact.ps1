New-MailContact -Name "Homer Simpson" `
-ExternalEmailAddress "homer.simpson@sscsmarch.onmicrosoft.com" `
| Set-MailContact -EmailAddresses "SMTP:homer.simpson@enerds.ca","smtp:homer.simpson@sscsmarch.onmicrosoft.com" 

New-MailContact -Name "Homer Simpson2" `
-ExternalEmailAddress "homer.simpson2@sscsmarch.onmicrosoft.com" `
| Set-MailContact -EmailAddresses "SMTP:homer.simpson2@enerds.ca","smtp:homer.simpson2@sscsmarch.onmicrosoft.com" 

New-MailContact -Name "Marge Simpson" `
-ExternalEmailAddress "marge.simpson@sscsmarch.onmicrosoft.com" `
| Set-MailContact -EmailAddresses "SMTP:marge.simpson@enerds.ca","smtp:marge.simpson@sscsmarch.onmicrosoft.com" 

New-MailContact -Name "Bart Simpson" `
-ExternalEmailAddress "bart.simpson@sscsmarch.onmicrosoft.com" 
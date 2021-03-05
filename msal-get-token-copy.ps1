$connectionDetails = @{
    'TenantId'     = 'f834d586-7ba4-42db-b4bf-aa3b47ed2b45';
    'ClientId'     = '6676ec88-10b8-4ab9-9178-186819908e14';
    'ClientSecret' = 'RAVMvLD~R~QcymMs7i1d.ZnvefR_ZEb9R1' | ConvertTo-SecureString -AsPlainText -Force;
    'Scope' = 'https://admin.exchange.microsoft.com/beta/MailContact/.default';
}

$token = Get-MsalToken @connectionDetails

$authHeader = @{
    'Authorization' = $token.CreateAuthorizationHeader();
    'client-request-id' = 'f834d586-7ba4-42db-b4bf-aa3b47ed2b45';
}

#$requestUrl = "https://graph.microsoft.com/v1.0/me"
#$requestUrl = "https://ps.outlook.com/adminApi/beta/f834d586-7ba4-42db-b4bf-aa3b47ed2b45/Mailbox('chad')"
$requestUrl = "https://admin.exchange.microsoft.com/beta/MailContact"

Invoke-RestMethod -Uri $requestUrl -Headers $authHeader

#https://outlook.office.com/adminApi/beta/6676ec88-10b8-4ab9-9178-186819908e14/sscsmarch.onmicrosoft.com/Recipient('chad')?isEncoded=true
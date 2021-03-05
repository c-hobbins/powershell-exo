$connectionDetails = @{
    'TenantId'     = 'f834d586-7ba4-42db-b4bf-aa3b47ed2b45';
    'ClientId'     = '6676ec88-10b8-4ab9-9178-186819908e14';
    'ClientSecret' = 'RAVMvLD~R~QcymMs7i1d.ZnvefR_ZEb9R1' | ConvertTo-SecureString -AsPlainText -Force;
    'Scope' = 'https://ps.outlook.com/.default';
}

$token = Get-MsalToken @connectionDetails

$authHeader = @{
    'Authorization' = $token.CreateAuthorizationHeader()
}

$requestUrl = "https://ps.outlook.com/adminApi/beta/f834d586-7ba4-42db-b4bf-aa3b47ed2b45/Recipient('Homer Simpson')"

Invoke-RestMethod -Uri $requestUrl -Headers $authHeader
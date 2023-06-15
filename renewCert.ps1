#This  is an script designed to renew the certificate
#Firt step need connect to  EMS
Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn

Get-ExchangeCertificate | fl



#New-ExchangeCertificate -GenerateRequest -SubjectName "CN=mail.contoso.com" -PrivateKeyExportable $true -KeySize 2048 -Path "C:\certificates\mail.contoso.com.csr"
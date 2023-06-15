#This  is an script designed to renew the certificate
#Firt step need connect to  EMS
Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn

Get-ExchangeCertificate | fl

$subjectName="CN=mail.herrod.xyz"

$path

New-ExchangeCertificate -GenerateRequest -SubjectName $subjectName -PrivateKeyExportable $true -KeySize 2048 -Path "C:\certificates\mail.contoso.com.csr"

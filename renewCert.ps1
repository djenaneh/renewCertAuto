#This  is an script designed to renew the certificate
#Firt step need connect to  EMS
Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn

Get-ExchangeCertificate | fl

$subjectName="CN=mail.herrod.xyz"

$path

New-ExchangeCertificate -GenerateRequest -SubjectName $subjectName -PrivateKeyExportable $true -KeySize 2048 -Path "C:\certificates\mail.contoso.com.csr"

#Submit the certificate request to a certification authority (CA) to obtain a new certificate. You can use a third-party CA or an internal CA[1].

#Import the new certificate by running the command 
Import-ExchangeCertificate -Path "C:\certificates\mail.contoso.com.cer" | Enable-ExchangeCertificate -Services "SMTP, IMAP, POP, IIS" 
#in the Exchange Management Shell. Replace "C:\certificates\mail.contoso.com.cer" with the path to your new certificate file[1].

#Verify that the new certificate is enabled for the correct services by running the command 
Get-ExchangeCertificate | fl 

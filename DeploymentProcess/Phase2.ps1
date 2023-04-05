Import-Module ActiveDirectory

# Read parameters from JSON file
$paramFile = "C:\params.txt"
$params = Get-Content $paramFile -Raw | ConvertFrom-Json

$domainName = $params.domainName
$domainNetbiosName = $params.domainNetbiosName
$domainAdminUsername = $params.domainAdminUsername
$domainAdminPassword = $params.domainAdminPassword

# Install Active Directory Domain Services
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Promote server to a domain controller
Install-ADDSForest `
-DomainName $domainName `
-DomainNetbiosName $domainNetbiosName `
-SafeModeAdministratorPassword (ConvertTo-SecureString $domainAdminPassword -AsPlainText -Force) `
-InstallDNS `
-Force
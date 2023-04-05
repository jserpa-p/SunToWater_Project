Import-Module ActiveDirectory


# Read parameters from JSON file
$paramFile = "C:\params.txt"
$params = Get-Content $paramFile -Raw | ConvertFrom-Json
$ouData = $params.OUs
$userData = $params.Users


# Create Organizational Units
foreach ($ou in $ouData) {
    New-ADOrganizationalUnit -Name $ou.Name -Path $ou.Path
}


# Create Users
foreach ($user in $userData) {
    $password = ConvertTo-SecureString $user.Password -AsPlainText -Force
    $userParams = @{
        Name = "$($user.FirstName) $($user.LastName)"
        UserPrincipalName = $user.UserPrincipalName
        Title = $user.Title
        AccountPassword = $password
        Enabled = $true
        Path = $user.OUPath
    }
    New-ADUser @userParams
}
# Read parameters from JSON file
$paramFile = "C:\params.txt"
$params = Get-Content $paramFile -Raw | ConvertFrom-Json
$ipv4Address = $params.ipv4Address
$subnetMask = $params.subnetMask
$gateway = $params.gateway
$dns = $params.dns
$newHostname = $params.newHostname


# Set static IPv4 address
New-NetIPAddress `
-InterfaceAlias "Ethernet" `
-IPAddress $ipv4Address `
-PrefixLength 24 `
-DefaultGateway $gateway

# Set DNS server
Set-DNSClientServerAddress `
-InterfaceAlias "Ethernet" `
-ServerAddresses $dns

# Rename server
Rename-Computer -NewName $newHostname -Restart

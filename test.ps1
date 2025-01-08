# Sample PowerShell script with intentional vulnerabilities

# Hardcoded credentials (DevSkim Rule: Use of hardcoded credentials)
$Username = "admin"
$Password = "P@ssw0rd123"

# Use of insecure protocol (DevSkim Rule: Use of insecure protocols)
Invoke-WebRequest -Uri "http://example.com/api/data"

# Weak cryptographic algorithm (DevSkim Rule: Use of weak cryptographic algorithm)
$plaintext = "SensitiveData"
$hash = [System.Text.Encoding]::UTF8.GetBytes($plaintext)
$md5 = [System.Security.Cryptography.MD5]::Create()
$hashed = $md5.ComputeHash($hash)
$hashedText = [System.BitConverter]::ToString($hashed).Replace("-", "").ToLower()
Write-Output "MD5 Hash: $hashedText"

# Using potentially dangerous function (DevSkim Rule: Dangerous function usage)
Invoke-Expression -Command "Get-Process"

# Output hardcoded credentials (DevSkim Rule: Potential exposure of sensitive information)
Write-Output "Using credentials: $Username / $Password"
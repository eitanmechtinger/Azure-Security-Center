param(
[Parameter(Mandatory = $True)] [string]$targetRgName,
[Parameter(Mandatory = $False)] [hashtable]$exclusionTags=@{}
)

$objectid = (Get-AzADServicePrincipal -DisplayName "Microsoft Defender for Cloud Servers Scanner Resource Provider").id

Register-AzResourceProvider -ProviderNamespace Microsoft.Security
New-AzDeployment -Location "West Europe" -targetRgName $targetRgName -exclusionTags $exclusionTags -principalId $objectid -TemplateUri uriuriuri

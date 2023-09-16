Install-Module -Name Az -Force -Scope CurrentUser
$PSVersionTable
Connect-AzAccount 

$resourceGroup = Get-AzResourceGroup
Write-Output $resourceGroup[1].ResourceGroupName


Invoke-Pester -Path "Azure.Resources/Test" -OutputFile "Azure.Resources/Test/Test_Report.xml" -OutputFormat NUnitXML


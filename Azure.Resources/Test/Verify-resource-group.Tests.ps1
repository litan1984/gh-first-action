$resourceGroup = Get-AzResourceGroup
Write-Output $resourceGroup
Describe 'Azure resources'{
    Context 'Azure resource group'{
        It 'Verify resource group'{
            $resourceGroup[1].ResourceGroupName | Should -Be "my-demo-rg1"
        }
    }
}
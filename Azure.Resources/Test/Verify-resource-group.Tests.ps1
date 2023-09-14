$resourceGroup = Get-AzResourceGroup
Wrire-Output "REsource group name is - $resourceGroup"
Describe 'Azure resources'{
    Context 'Azure resource group'{
        It 'Verify resource group'{
            $resourceGroup.Name | Should -Be "my-demo-rg1"
        }
    }
}
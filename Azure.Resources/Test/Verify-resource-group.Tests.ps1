Describe 'Azure resources'{
    Context 'Azure resource group'{
        It 'Verify resource group'{
            $resourceGroup = Get-AzResourceGroup
            Write-Output "Resource group list: $resourceGroup"
            $resourceGroup[1].ResourceGroupName | Should -Be "my-demo-rg1"
        }        
    }
}

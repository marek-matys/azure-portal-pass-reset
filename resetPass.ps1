Login-AzureRmAccount

$cred=Get-Credential

Set-AzureRmVMAccessExtension -ResourceGroupName "???" -VMName "???" `
    -Name "???" -Location "West Europe" -UserName $cred.GetNetworkCredential().Username `
    -Password $cred.GetNetworkCredential().Password -typeHandlerVersion "2.0"

    #https://docs.microsoft.com/pl-pl/azure/virtual-machines/virtual-machines-windows-reset-rdp?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json#vmaccess-extension-and-powershell---resource-manager
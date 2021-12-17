targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-testbicecarm'
  location: 'northeurope'
}

module sss 'arm/storage.json' = {
  name: 'pepep'
  scope: resourceGroup(rg.name)
  params: {
    storageAccounts_tflabsstate_name: 'fmiguelmaxinqueu'
  }
}

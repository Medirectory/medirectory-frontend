`import NpiTypeSerializer from './npi-type'`

ProviderSerializer = NpiTypeSerializer.extend
  attrs:
    organizations:
      embedded : 'always'

`export default ProviderSerializer`

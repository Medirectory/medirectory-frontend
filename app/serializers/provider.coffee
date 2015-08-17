`import NpiTypeSerializer from './npi-type'`

ProviderSerializer = NpiTypeSerializer.extend
  isNewSerializerAPI: true
  attrs:
    organizations:
      embedded : 'always'

`export default ProviderSerializer`

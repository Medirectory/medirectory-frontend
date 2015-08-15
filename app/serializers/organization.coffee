`import NpiTypeSerializer from './npi-type'`

OrganizationSerializer = NpiTypeSerializer.extend
  isNewSerializerAPI: true
  attrs:
    providers:
      embedded : 'always'

`export default OrganizationSerializer`

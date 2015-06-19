`import NpiTypeSerializer from './npi-type'`

OrganizationSerializer = NpiTypeSerializer.extend
  attrs:
    providers:
      embedded : 'always'

`export default OrganizationSerializer`

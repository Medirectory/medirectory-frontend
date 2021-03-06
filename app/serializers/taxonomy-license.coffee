`import DS from 'ember-data'`
`import { ActiveModelSerializer } from 'active-model-adapter'`

TaxonomyLicenseSerializer = ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  isNewSerializerAPI: true
  attrs:
    taxonomyCode:
      embedded : 'always'
)


`export default TaxonomyLicenseSerializer`

`import DS from 'ember-data'`

TaxonomyLicenseSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs: 
    taxonomyCode:
      embedded : 'always'
)


`export default TaxonomyLicenseSerializer`

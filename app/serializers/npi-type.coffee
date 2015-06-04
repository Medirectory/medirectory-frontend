`import DS from 'ember-data'`

NpiTypeSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  primaryKey: 'npi',
  attrs: 
    mailingAddress:
      embedded : 'always'
    practiceLocationAddress:
      embedded : 'always'
    otherProviderIdentifiers:
      embedded : 'always'
    taxonomyLicenses:
      embedded : 'always'
    taxonomyGroups:
      embedded : 'always'
)

`export default NpiTypeSerializer`

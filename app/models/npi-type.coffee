`import DS from 'ember-data'`

NpiType = DS.Model.extend 
  entityTypeCode: DS.attr('number'),
  replacementNpi: DS.attr('number'),
  enumerationDate: DS.attr('date'),
  lastUpdateDate: DS.attr('date'),
  npiDeactivationReasonCode: DS.attr('string'),
  npiDeactivationDate: DS.attr('date'),
  npiReactivationDate: DS.attr('date'),
  mailingAddress: DS.belongsTo('mailing-address'),
  practiceLocationAddress: DS.belongsTo('practice-location-address'),
  otherProviderIdentifiers: DS.hasMany('other-provider-identifier'),
  taxonomyLicenses: DS.hasMany('taxonomy-license'),
  taxonomyGroups: DS.hasMany('taxonomy-group')

  classificationSpecialties: ( ->
    @get('taxonomyLicenses').map((license)->
      license.get('taxonomyCode').get('classificationSpecialty')
    ).uniq()
  ).property('taxonomyLicenses.@each.taxonomyCode.classificationSpecialty')

  classificationSummary: (->
    @get('taxonomyLicenses').map((license)->
      license.get('taxonomyCode').get('classification')
    ).uniq().join(', ')
  ).property('taxonomyLicenses.@each.taxonomyCode.classificationSpecialty')
`export default NpiType`

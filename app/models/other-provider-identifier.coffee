`import DS from 'ember-data'`

# FIXME - Put this in the database?


OtherProviderIdentifier = DS.Model.extend
  identifier: DS.attr('string'),
  identifierTypeCode: DS.attr('string'),
  identifierState: DS.attr('string'),
  identifierIssuer: DS.attr('string'),
  entity: DS.hasMany('npi-type', {polymorphic: true, async:true}),

  identifierType: (->
    OtherProviderIdentifierTypeCodeTable = {
      '01': 'OTHER',
      '02': 'MEDICARE UPIN',
      '04': 'MEDICARE ID-TYPE UNSPECIFIED',
      '05': 'MEDICAID',
      '06': 'MEDICARE OSCAR/CERTIFICATION',
      '07': 'MEDICARE NSC',
      '08': 'MEDICARE PIN'
    }
    return OtherProviderIdentifierTypeCodeTable[@get('identifierTypeCode')]
  ).property('identifierTypeCode')

`export default OtherProviderIdentifier`

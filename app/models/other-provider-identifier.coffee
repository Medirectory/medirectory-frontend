`import DS from 'ember-data'`

OtherProviderIdentifier = DS.Model.extend 
  identifier: DS.attr('string'),
  identifierTypeCode: DS.attr('string'),
  identifierState: DS.attr('string'),
  identifierIssuer: DS.attr('string'),
  entity: DS.hasMany('npi-type', {polymorphic: true, async: true})

`export default OtherProviderIdentifier`

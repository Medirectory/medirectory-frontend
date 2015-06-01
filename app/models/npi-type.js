import DS from 'ember-data';

export default DS.Model.extend({
  entityTypeCode: DS.attr('number'),
  replacementNpi: DS.attr('number'),
  enumerationDate: DS.attr('date'),
  lastUpdateDate: DS.attr('date'),
  npiDeactivationReasonCode: DS.attr('string'),
  npiDeactivationDate: DS.attr('date'),
  npiReactivationDate: DS.attr('date'),
  mailingAddress: DS.belongsTo('mailing-address', {async: true}),
  practiceLocationAddress: DS.belongsTo('practice-location-address', {async: true}),
  otherProviderIdentifier: DS.hasMany('other-provider-identifier', {async: true}),
  taxonomyLicenses: DS.hasMany('taxonomy-license', {async: true}),
  taxonomyGroups: DS.hasMany('taxonomy-group', {async: true})
});

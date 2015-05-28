import DS from 'ember-data';

export default DS.Model.extend({
  mailing_address: DS.belongsTo('mailing-address', {async: true}),
  practice_location_address: DS.belongsTo('practice-location-address', {async: true}),
  other_provider_identifier: DS.hasMany('other-provider-identifier', {async: true}),
  taxonomy_licenses: DS.hasMany('taxonomy-license', {async: true}),
  taxonomy_groups: DS.hasMany('taxonomy-group', {async: true})
});

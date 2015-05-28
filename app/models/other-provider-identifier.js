import DS from 'ember-data';

export default DS.Model.extend({
  identifier: DS.attr('string'),
  identifier_type_code: DS.attr('string'),
  identifier_state: DS.attr('string'),
  identifier_issuer: DS.attr('string'),
  entity: DS.hasMany('npi-type', {polymorphic: true, async: true})
  
});

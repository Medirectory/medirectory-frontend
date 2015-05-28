import DS from 'ember-data';

export default DS.Model.extend({
  taxonomy_code: DS.attr('string'),
  license_number: DS.attr('string'),
  license_number_state_code: DS.attr('string'),
  primary_taxonomy_switch: DS.attr('string'),
  entity: DS.hasMany('npi-type', {polymorphic: true, async: true})

});

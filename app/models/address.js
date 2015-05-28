import DS from 'ember-data';

export default DS.Model.extend({
  first_line: DS.attr('string'),
  second_line: DS.attr('string'),
  city: DS.attr('string'),
  state: DS.attr('string'),
  postal_code: DS.attr('string'),
  country_code: DS.attr('string'),
  telephone_number: DS.attr('string'),
  fax_number: DS.attr('string'),
  entity: DS.hasMany('npi-type', {polymorphic: true, async: true})
});

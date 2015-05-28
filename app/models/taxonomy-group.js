import DS from 'ember-data';

export default DS.Model.extend({
  taxonomy_group: DS.attr('string'),
  entity: DS.hasMany('npi-type', {polymorphic: true, async: true})
  
});

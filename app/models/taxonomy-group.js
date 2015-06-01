import DS from 'ember-data';

export default DS.Model.extend({
  taxonomyGroup: DS.attr('string'),
  entity: DS.belongsTo('npi-type', {polymorphic: true, async: true})
  
});

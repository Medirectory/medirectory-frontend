import DS from 'ember-data';

export default DS.Model.extend({
  taxonomyCode: DS.attr('string'),
  licenseNumber: DS.attr('string'),
  licenseNumberStateCode: DS.attr('string'),
  primaryTaxonomySwitch: DS.attr('string'),
  entity: DS.belongsTo('npi-type', {polymorphic: true, async: true})

});

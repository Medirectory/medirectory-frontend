`import DS from 'ember-data'`

TaxonomyLicense = DS.Model.extend
  code: DS.attr('string'),
  licenseNumber: DS.attr('string'),
  licenseNumberStateCode: DS.attr('string'),
  primaryTaxonomySwitch: DS.attr('string'),
  entity: DS.belongsTo('npi-type', {polymorphic: true}),
  taxonomyCode: DS.belongsTo('taxonomy-code', { async: false })

`export default TaxonomyLicense`

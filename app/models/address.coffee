`import DS from 'ember-data'`

Address = DS.Model.extend 
  firstLine: DS.attr('string'),
  secondLine: DS.attr('string'),
  city: DS.attr('string'),
  state: DS.attr('string'),
  postalCode: DS.attr('string'),
  countryCode: DS.attr('string'),
  telephoneNumber: DS.attr('string'),
  faxNumber: DS.attr('string'),
  entity: DS.belongsTo('npi-type', {polymorphic: true})

`export default Address`

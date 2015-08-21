`import DS from 'ember-data'`

ElectronicService = DS.Model.extend
  address: DS.attr('string')
  integrationProfile: DS.attr('string')
  providerId: DS.attr('string')
  organizationId: DS.attr('string')

`export default ElectronicService`

`import Ember from 'ember'`

MatchingEsiComponent = Ember.Component.extend
  matches: Ember.computed 'entity', 'services.@each', ->
    entity = @get('entity')
    services = @get('services')
    switch entity.constructor.modelName
      when 'organization' then services.filterBy('organizationId', entity.id)
      when 'provider' then services.filterBy('providerId', entity.id)

`export default MatchingEsiComponent`

`import Ember from 'ember'`

ProvidersShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find('provider', params.provider_id);

`export default ProvidersShowRoute`

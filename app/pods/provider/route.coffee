`import Ember from 'ember'`

ProviderRoute = Ember.Route.extend
  model: (params) ->
    @store.find('provider', params.provider_id);

`export default ProviderRoute`

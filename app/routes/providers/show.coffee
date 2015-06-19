`import Ember from 'ember'`

ProvidersShowRoute = Ember.Route.extend
  model: (params) ->
    provider = @store.find('provider', params.provider_id)
    provider.then (provider) ->
      # If we got the provider from within an organization we won't have nested models; in that case, re-fetch
      provider.reload() unless provider.get('practiceLocationAddress')?
    provider

`export default ProvidersShowRoute`

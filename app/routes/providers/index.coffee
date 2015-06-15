`import Ember from 'ember'`

ProvidersIndexRoute = Ember.Route.extend
  queryParams:
    q:
      refreshModel: true
    fuzzy_q: 
      refreshModel: true
    offset:
      refreshModel: true
  model: (params) ->
    for key, value of params
      if not value
        delete params[key]

    if params
      @store.find('provider', params)
    else
      @store.find('provider')

`export default ProvidersIndexRoute`

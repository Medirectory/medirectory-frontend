`import Ember from 'ember'`

ProvidersIndexRoute = Ember.Route.extend
  queryParams:
    q:
      refreshModel: true
    fuzzy_q: 
      refreshModel: true
    name:
      refreshModel: true
    location: 
      refreshModel: true
    taxonomy:
      refreshModel: true
    npi: 
      refreshModel: true
    organization: 
      refreshModel: true
    offset:
      refreshModel: true
  resetController: (controller, isExiting, transition) ->
    if isExiting
      controller.set('q', null)
      controller.set('name', null)
      controller.set('location', null)
      controller.set('taxonomy', null)
      controller.set('npi', null)
      controller.set('organization', null)
  model: (params) ->
    for key, value of params
      if not value
        delete params[key]

    if params
      @store.find('provider', params)
    else
      @store.find('provider')

`export default ProvidersIndexRoute`

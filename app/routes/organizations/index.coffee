`import Ember from 'ember'`

OrganizationsIndexRoute = Ember.Route.extend
  queryParams:
    q:
      refreshModel: true
    fuzzy_q: 
      refreshModel: true
    name:
      refreshModel: true
    location: 
      refreshModel: true
    geo_zip: 
      refreshModel: true
    radius: 
      refreshModel: true
    taxonomy:
      refreshModel: true
    npi: 
      refreshModel: true
    provider: 
      refreshModel: true
    authorized_official: 
      refreshModel: true
    offset:
      refreshModel: true
  resetController: (controller, isExiting, transition) ->
    if isExiting
      controller.set('q', null)
      controller.set('name', null)
      controller.set('location', null)
      controller.set('geo_zip', null)
      controller.set('radius', null)
      controller.set('taxonomy', null)
      controller.set('npi', null)
      controller.set('provider', null)
      controller.set('authorized_official', null)
  model: (params) ->
    for key, value of params
      if not value
        delete params[key]

    if params
      @store.find('organization', params)
    else
      @store.find('organization')


`export default OrganizationsIndexRoute`

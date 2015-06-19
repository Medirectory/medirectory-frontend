`import Ember from 'ember'`

AdvancedSearchIndexRoute = Ember.Route.extend
  queryParams:
    name:
      refreshModel: true
    location: 
      refreshModel: true
    taxonomy:
      refreshModel: true
    npi:
      refreshModel: true
  model: (params) ->
    for key, value of params
      if not value || value == 'undefined'
        delete params[key]

    if params
      @store.find('provider', params)
      # Ember.RSVP.hash
      #   providers: @store.find('provider', params)
      #   organizations: @store.find('organization', params)
    else
      @store.find('provider')
      # Ember.RSVP.hash
      #   providers: @store.find('provider')
      #   organizations: @store.find('organization')

`export default AdvancedSearchIndexRoute`

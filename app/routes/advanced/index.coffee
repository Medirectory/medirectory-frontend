`import Ember from 'ember'`

AdvancedIndexRoute = Ember.Route.extend
  actions: 
    search: (router, form) ->
      params = {}
      for key, value of form
        if value || value != "undefined"
          params[key] = value
      router.transitionTo('providers/index', params)

`export default AdvancedIndexRoute`


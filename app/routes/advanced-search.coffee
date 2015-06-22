`import Ember from 'ember'`

AdvancedSearchRoute = Ember.Route.extend
  model: ->
    name: null
    location: null
    taxonomy: null
    npi: null
  actions: 
    submit: (params) ->
      console.log('hit on enter')
      @transitionTo('advanced-search/index', queryParams: params)
      false

`export default AdvancedSearchRoute`

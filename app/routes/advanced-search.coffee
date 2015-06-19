`import Ember from 'ember'`

AdvancedSearchRoute = Ember.Route.extend
  actions: 
    submit: (params) ->
      console.log('hit on enter')
      transitionTo('advanced-search/index', params)
      false

`export default AdvancedSearchRoute`

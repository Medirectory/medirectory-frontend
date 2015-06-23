`import Ember from 'ember'`

IndexController = Ember.Controller.extend  
  name: null
  location: null
  taxonomy: null
  npi: null
  organization: null
  basicSearch: true
  actions:
    submit: (params)->
      @transitionToRoute('providers/index', queryParams: params)
      false
    basic: ->
      @set('basicSearch', true)
    advanced: ->
      @set('basicSearch', false)

`export default IndexController`

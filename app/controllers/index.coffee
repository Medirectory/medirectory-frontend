`import Ember from 'ember'`

IndexController = Ember.Controller.extend  
  name: null
  location: null
  taxonomy: null
  npi: null
  organization: null
  basicSearch: true
  actions:
    submitBasic: (value)->
      @transitionToRoute('providers/index', queryParams: q: value)
      false
    submitAdvanced: (params)->
      @transitionToRoute('advanced-search/index', queryParams: params)
      false
    basic: ->
      @set('basicSearch', true)
    advanced: ->
      @set('basicSearch', false)

`export default IndexController`

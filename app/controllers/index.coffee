`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  actions:
    updateQuery: (value)->
      @transitionToRoute('providers/index', {queryParams: {q: @get('query')}})
      false

`export default IndexController`

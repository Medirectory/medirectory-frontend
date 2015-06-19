`import Ember from 'ember'`

AdvancedSearchComponent = Ember.Component.extend
  actions:
    submit: (params) ->
      @sendAction('submit', params)

`export default AdvancedSearchComponent`

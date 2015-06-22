`import Ember from 'ember'`

BasicSearchComponent = Ember.Component.extend
  actions:
    querySubmitted: ->
      @sendAction('submit', q: if @get('query') isnt '' then @get('query') else null)

`export default BasicSearchComponent`

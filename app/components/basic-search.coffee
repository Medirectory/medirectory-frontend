`import Ember from 'ember'`

BasicSearchComponent = Ember.Component.extend
  query: Ember.computed.oneWay 'q'
  actions:
    querySubmitted: ->
      @sendAction('submit', q: if @get('query') and @get('query') isnt '' then @get('query') else null)

`export default BasicSearchComponent`

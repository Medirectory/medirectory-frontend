`import Ember from 'ember'`

SearchResultListComponent = Ember.Component.extend
  actions:
    submitUpdate: (params) ->
      @sendAction('submit', params)

`export default SearchResultListComponent`

`import Ember from 'ember'`

AdvancedSearchIndexController = Ember.Controller.extend
  queryParams: ['name', 'location', 'taxonomy', 'npi']
  name: null
  location: null
  taxonomy: null
  npi: null
  offset: 0
  hasPrevious: ( ->
    parseInt(@get('offset')) > 0
    ).property('offset')
  hasNext: ( ->
    parseInt(@get('offset')) + @get('content.meta').resultsPerPage < @get('content.meta').totalResults
    ).property('offset', 'content.meta')
  previousOffset: ( ->
    previousOffset = parseInt(@get('offset')) - @get('content.meta').resultsPerPage
    Math.max(previousOffset, 0)
    ).property('offset', 'content.meta')
  nextOffset: ( ->
    parseInt(@get('offset')) + @get('content.meta').resultsPerPage
    ).property('offset', 'content.meta')
  actions:
    updateQuery: (value)->
      @set('q', value)
      @set('offset', 0)
      false

`export default AdvancedSearchIndexController`

`import Ember from 'ember'`

ProvidersIndexController = Ember.Controller.extend
  queryParams: ['q', 'fuzzy_q', 'offset']
  q: null
  fuzzy_q: null
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
  query: ( (key, newVal, oldVal)->
    if arguments.length > 1 #setter
      newVal
    else #getter
      @get('q')
    ).property('q')
  actions:
    updateQuery: (value)->
      @set('q', value)
      @set('offset', 0)
      false


`export default ProvidersIndexController`

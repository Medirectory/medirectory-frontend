`import Ember from 'ember'`

AdvancedSearchIndexController = Ember.Controller.extend
  queryParams: ['name', 'location', 'taxonomy', 'npi', 'organization']
  name: null
  location: null
  taxonomy: null
  npi: null
  organization: null
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
  # Eventually will want this to utilize one-way binding of componenets (when implemented)
  nameTemp: Ember.computed 'name', 
    get: ->
      @get('name')
    set: (key, newVal, oldVal)->
      newVal
  locationTemp: Ember.computed 'location', 
    get: ->
      @get('location')
    set: (key, newVal, oldVal)->
      newVal
  taxonomyTemp: Ember.computed 'taxonomy', 
    get: ->
      @get('taxonomy')
    set: (key, newVal, oldVal)->
      newVal
  npiTemp: Ember.computed 'npi', 
    get: ->
      @get('npi')
    set: (key, newVal, oldVal)->
      newVal
  orgTemp: Ember.computed 'organization', 
    get: ->
      @get('organization')
    set: (key, newVal, oldVal)->
      newVal
  actions:
    updateQuery: (params)->
      @set('name', params.name)
      @set('location', params.location)
      @set('taxonomy', params.taxonomy)
      @set('npi', params.npi)
      @set('organization', params.organization)
      @set('offset', 0)
      false

`export default AdvancedSearchIndexController`

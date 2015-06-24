`import Ember from 'ember'`

OrganizationsIndexController = Ember.Controller.extend
  needs: "index"
  queryParams: ['q', 'fuzzy_q', 'name', 'location', 'taxonomy', 'npi', 'provider', 'authorized_official', 'offset']
  q: null
  fuzzy_q: null
  name: null
  location: null
  taxonomy: null
  npi: null
  provider: null
  authorized_official: null
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
  provTemp: Ember.computed 'provider', 
    get: ->
      @get('provider')
    set: (key, newVal, oldVal)->
      newVal
  authOffTemp: Ember.computed 'authorized_official', 
    get: ->
      @get('authorized_official')
    set: (key, newVal, oldVal)->
      newVal
  query: Ember.computed 'q', 
    get: ->
      @get('q')
    set: (key, newVal, oldVal)->
      newVal
  actions:
    submitBasic: (params)->
      @set('q', params.q) if params.q
      @set('name', params.name) if params.name
      @set('location', params.location) if params.location
      @set('taxonomy', params.taxonomy) if params.taxonomy
      @set('npi', params.npi) if params.npi
      @set('provider', params.provider) if params.provider
      @set('authorized_official', params.authorized_official) if params.authorized_official
      @set('offset', 0)
      false

`export default OrganizationsIndexController`

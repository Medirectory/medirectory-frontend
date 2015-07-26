`import Ember from 'ember'`

ProvidersIndexController = Ember.Controller.extend
  needs: "index"
  queryParams: ['q', 'fuzzy_q', 'name', 'location', 'geo_zip', 'radius', 'taxonomy', 'npi', 'organization', 'offset']
  q: null
  fuzzy_q: null
  name: null
  location: null
  geo_zip: null
  radius: null
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
  geoZipTemp: Ember.computed 'geo_zip',
    get: ->
      @get('geo_zip')
    set: (key, newVal, oldVal)->
      newVal
  radiusTemp: Ember.computed 'radius',
    get: ->
      @get('radius')
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
  query: Ember.computed 'q',
    get: ->
      @get('q')
    set: (key, newVal, oldVal)->
      newVal
  actions:
    submitUpdate: (params)->
      console.log "actually setting"
      if @get('controllers.index.basicSearch')
        @set('q', params.q)
      else
        @set('name', params.name)
        @set('location', params.location)
        @set('geo_zip', params.geo_zip)
        @set('radius', params.radius)
        @set('taxonomy', params.taxonomy)
        @set('npi', params.npi)
        @set('organization', params.organization)
      @set('offset', 0)
      false


`export default ProvidersIndexController`

`import Ember from 'ember'`

OrganizationsIndexController = Ember.Controller.extend
  index: Ember.inject.controller('index')
  needs: ['index']
  queryParams: ['q', 'fuzzy_q', 'name', 'location', 'geo_zip', 'radius', 'taxonomy', 'npi', 'provider', 'authorized_official', 'offset']
  q: null
  fuzzy_q: null
  name: null
  location: null
  geo_zip: null
  radius: null
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
  actions:
    submitUpdate: (params)->
      if @get('index.basicSearch')
        @set('q', params.q)
      else
        @set('name', params.name)
        @set('location', params.location)
        @set('geo_zip', params.geo_zip)
        @set('radius', params.radius)
        @set('taxonomy', params.taxonomy)
        @set('npi', params.npi)
        @set('provider', params.provider)
        @set('authorized_official', params.authorized_official)
      @set('offset', 0)
      false

`export default OrganizationsIndexController`

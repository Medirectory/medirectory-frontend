`import Ember from 'ember'`

AdvancedSearchComponent = Ember.Component.extend
  nameTemp: Ember.computed.oneWay 'name'
  locationTemp: Ember.computed.oneWay 'location'
  geoZipTemp: Ember.computed.oneWay 'geo_zip'
  radiusTemp: Ember.computed.oneWay 'radius'
  taxonomyTemp: Ember.computed.oneWay 'taxonomy'
  npiTemp: Ember.computed.oneWay 'npi'
  organizationTemp: Ember.computed.oneWay 'organization'
  providerTemp: Ember.computed.oneWay 'provider'
  affiliatedProviderTemp: Ember.computed.oneWay 'affiliated_provider'
  authorizedOfficialTemp: Ember.computed.oneWay 'authorized_official'
  query: Ember.computed.oneWay 'q'
  didInsertElement: (->
    # constructs the suggestion engine

    Ember.$.getJSON('/api/v1/taxonomies.json').then (result)=>
      taxonomies = new Bloodhound
        datumTokenizer: Bloodhound.tokenizers.nonword
        queryTokenizer: Bloodhound.tokenizers.nonword
        # `states` is an array of state names defined in "The Basics"
        local: result.taxonomies

      $('.typeahead').typeahead
        hint: true
        highlight: true
        minLength: 1
      ,
        name: 'taxonomies'
        source: taxonomies
        limit: 8
    )
  getRealValue: ((property) ->
    if @get(property) and @get(property) isnt '' then @get(property) else null
    )
  actions:
    querySubmitted: ->
      @sendAction('submit',
        name: @getRealValue('nameTemp')
        location: @getRealValue('locationTemp')
        geo_zip:  @getRealValue('geoZipTemp')
        radius: @getRealValue('radiusTemp')
        taxonomy: @getRealValue('taxonomyTemp')
        npi: @getRealValue('npiTemp')
        organization: @getRealValue('organizationTemp')
        provider: @getRealValue('affiliatedProviderTemp')
        authorized_official: @getRealValue('authorizedOfficialTemp')
        )

`export default AdvancedSearchComponent`

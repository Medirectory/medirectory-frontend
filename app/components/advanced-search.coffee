`import Ember from 'ember'`

AdvancedSearchComponent = Ember.Component.extend
  setup: (->
    Ember.$.getJSON('/api/v1/taxonomies.json').then (result)=>
      taxonomies = for taxonomy, index in result.taxonomies
        id: index
        text: taxonomy
      @set('taxonomies', taxonomies) 
    ).on('init')
  actions:
    querySubmitted: ->
      @sendAction('submit', 
        name: if @get('name') isnt '' then @get('name') else null
        location: if @get('location') isnt '' then @get('location') else null
        taxonomy: if @get('taxonomy') isnt '' then @get('taxonomy') else null
        npi: if @get('npi') isnt '' then @get('npi') else null
        organization: if @get('organization') isnt '' then @get('organization') else null
        provider: if @get('affiliated_provider') isnt '' then @get('affiliated_provider') else null
        authorized_official: if @get('authorized_official') isnt '' then @get('authorized_official') else null
        )

`export default AdvancedSearchComponent`

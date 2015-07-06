`import Ember from 'ember'`

AdvancedSearchComponent = Ember.Component.extend
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

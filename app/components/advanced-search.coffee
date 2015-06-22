`import Ember from 'ember'`

AdvancedSearchComponent = Ember.Component.extend
  actions:
    querySubmitted: ->
      @sendAction('submit', 
        name: if @get('name') isnt '' then @get('name') else null
        location: if @get('location') isnt '' then @get('location') else null
        taxonomy: if @get('taxonomy') isnt '' then @get('taxonomy') else null
        npi: if @get('npi') isnt '' then @get('npi') else null
        organization: if @get('organization') isnt '' then @get('organization') else null
        )

`export default AdvancedSearchComponent`

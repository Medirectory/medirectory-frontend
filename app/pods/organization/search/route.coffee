`import Ember from 'ember'`

OrganizationSearchRoute = Ember.Route.extend
  model: (params) ->
    if params.fuzzy is 'true'
      this.get('queryParams').fuzzy_q = params.query
    else 
      this.get('queryParams').q = params.query  

    this.get('queryParams').offset = if isNaN(params.offset) then 0 else params.offset 
    console.log(this.get('queryParams'));
    @store.find('organization', this.get('queryParams'));

`export default OrganizationSearchRoute`

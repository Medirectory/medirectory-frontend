`import Ember from 'ember'`

OrganizationsShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find('organization', params.organization_id);

`export default OrganizationsShowRoute`

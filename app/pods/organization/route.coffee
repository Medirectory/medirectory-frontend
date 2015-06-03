`import Ember from 'ember'`

OrganizationRoute = Ember.Route.extend
  model: (params) ->
    @store.find('organization', params.organization_id);

`export default OrganizationRoute`

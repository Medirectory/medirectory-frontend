`import Ember from 'ember'`

OrganizationsOrganizationRoute = Ember.Route.extend
  model: (params) ->
    @store.find('organization', params.organization_id);

`export default OrganizationsOrganizationRoute`

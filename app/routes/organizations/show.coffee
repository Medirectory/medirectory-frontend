`import Ember from 'ember'`

OrganizationsShowRoute = Ember.Route.extend
  model: (params) ->
    organization = @store.find('organization', params.organization_id)
    organization.then (organization) ->
      # If we got the organization from within an organization we won't have nested models; in that case, re-fetch
      organization.reload() unless organization.get('practiceLocationAddress')?
    organization

`export default OrganizationsShowRoute`

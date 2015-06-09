`import Ember from 'ember'`

OrganizationsRoute = Ember.Route.extend
  queryParams: {
    q: {
      refreshModel: true
    },
    fuzzy_q: {
      refreshModel: true
    },
    offest: {
      refreshModel: true
    }
  },
  model: (params) ->
    for key, value of params
      if not value
        delete params[key]
    @store.findQuery('organization', params);

`export default OrganizationsRoute`

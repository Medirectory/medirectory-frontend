`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  resetController: (controller, isExiting, transition) ->
    if isExiting
      controller.set('query', null)
      controller.set('name', null)
      controller.set('location', null)
      controller.set('taxonomy', null)
      controller.set('npi', null)
      controller.set('organization', null)
      controller.set('provider', null)
      controller.set('authorized_official', null)

`export default IndexRoute`

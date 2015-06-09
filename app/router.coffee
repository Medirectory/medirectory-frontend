`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'providers'
  @route 'providers/provider', path: '/providers/:provider_id'
  @route 'organizations'
  @route 'organizations/organization', path: '/organizations/:organization_id'

`export default Router`
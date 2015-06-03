`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'organization', path: '/organizations/:organization_id'
  @route 'provider', path: '/providers/:provider_id'

`export default Router`
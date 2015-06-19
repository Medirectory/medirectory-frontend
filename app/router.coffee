`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'providers/index', path: '/providers'
  @route 'providers/show', path: '/providers/:provider_id'

  @route 'organizations/index', path: '/organizations'
  @route 'organizations/show', path: '/organizations/:organization_id'
  
  @route 'advanced-search', path:'/advanced-search'
  @route 'advanced-search/index', path:'/advanced-search-index'

`export default Router`

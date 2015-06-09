`import Ember from 'ember'`

ProvidersController = Ember.Controller.extend
  queryParams: ['q', 'fuzzy_q', 'offset'],
  q: null,
  fuzzy_q: null,
  offset: null

`export default ProvidersController`

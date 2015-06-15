`import Ember from 'ember'`

OrganizationsIndexController = Ember.Controller.extend
  queryParams: ['q', 'fuzzy_q', 'offset']
  q: null
  fuzzy_q: null
  offset: null

`export default OrganizationsIndexController`

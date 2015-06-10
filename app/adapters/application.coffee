`import DS from 'ember-data'`

ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v1'

`export default ApplicationAdapter`

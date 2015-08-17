`import DS from 'ember-data'`

ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v1'
  shouldBackgroundReloadRecord: (->
    false
    )

`export default ApplicationAdapter`

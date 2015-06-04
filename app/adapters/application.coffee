`import DS from 'ember-data'`

ApplicationAdapter = DS.ActiveModelAdapter.extend 
  namespace: 'api/v1',
  suffix: '.json',
  buildURL: (type, id) -> 
    # Currently done to maintain the ".json" extension without messing with Ember's id system
    @_super(type, id) + @get('suffix');


`export default ApplicationAdapter`

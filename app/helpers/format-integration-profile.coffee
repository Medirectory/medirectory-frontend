`import Ember from 'ember'`

FormatIntegrationProfileHelper = Ember.Helper.helper (value, options) ->
  return value.toString().replace(/([a-z])([A-Z])/g, '$1 $2')

`export default FormatIntegrationProfileHelper`

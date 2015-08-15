`import Ember from 'ember'`

FormatNumberHelper = Ember.Helper.helper (value, options) ->
  return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")

`export default FormatNumberHelper`

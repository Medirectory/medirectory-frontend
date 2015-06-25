`import Ember from 'ember'`

FormatNumberHelper = Ember.HTMLBars.makeBoundHelper (value, options) ->
  return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")

`export default FormatNumberHelper`

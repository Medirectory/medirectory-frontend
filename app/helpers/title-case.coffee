`import Ember from 'ember'`

TitleCaseHelper = Ember.Helper.helper (value, options) ->
  return value.toString().toLowerCase().replace(/_/g, ' ').replace(/\b([a-z\u00C0-\u00ff])/g, (_, initial) ->
    initial.toUpperCase()
  ).replace /(\s(?:de|a|o|e|da|do|em|ou|[\u00C0-\u00ff]))\b/ig, (_, match) ->
    match.toLowerCase()

`export default TitleCaseHelper`

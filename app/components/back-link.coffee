`import Ember from 'ember'`

BackLinkComponent = Ember.Component.extend
  actions:
    goBack: ->
      history.back(-1)

`export default BackLinkComponent`

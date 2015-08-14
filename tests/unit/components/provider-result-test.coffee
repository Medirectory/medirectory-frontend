`import { test, moduleForComponent } from 'ember-qunit'`

moduleForComponent 'provider-result', {
  # Specify the other units that are required for this test
  # needs: ['helper:link-to']
  unit: true
  setup: ->
    @registry.register 'service:-routing', Ember.Object.extend
      availableRoutes: -> ['index']
      hasRoute: (name) -> name == 'index'
      isActiveForRoute: -> true
      generateURL: -> "/"
}

test 'it renders', (assert) ->
  assert.expect 2

  # Creates the component instance
  component = @subject()
  assert.equal component._state, 'preRender'

  # Renders the component to the page
  @render()
  assert.equal component._state, 'inDOM'

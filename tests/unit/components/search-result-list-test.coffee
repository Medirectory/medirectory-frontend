`import { test } from 'ember-qunit'`

test 'it renders', (assert) ->
  assert.expect 2

  # Creates the component instance
  component = @subject()
  assert.equal component._state, 'preRender'

  # Renders the component to the page
  @render() # this fails
  assert.equal component._state, 'inDOM'

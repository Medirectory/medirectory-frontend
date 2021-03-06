`import { test, moduleForComponent } from 'ember-qunit'`

moduleForComponent 'back-link', {
  # Specify the other units that are required for this test
  needs: ['helper:fa-icon']
}

test 'it renders', (assert) ->
  assert.expect 2

  # Creates the component instance
  component = @subject()
  assert.equal component._state, 'preRender'

  # Renders the component to the page
  @render()
  assert.equal component._state, 'inDOM'

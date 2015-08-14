`import { test, moduleForComponent } from 'ember-qunit'`

moduleForComponent 'search-result-list', {
  # Specify the other units that are required for this test
  needs: ['helper:format-number','component:advanced-search']
}

test 'it renders', (assert) ->
  assert.expect 2

  # Creates the component instance
  component = @subject()
  assert.equal component._state, 'preRender'

  # Renders the component to the page
  @render() # this fails
  assert.equal component._state, 'inDOM'

`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'taxonomy-code', {
  # Specify the other units that are required for this test.
  needs: ['model:taxonomy-license']
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model

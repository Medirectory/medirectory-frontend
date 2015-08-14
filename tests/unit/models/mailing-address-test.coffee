`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'mailing-address', {
  # Specify the other units that are required for this test.
  needs: ['model:npi-type']
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model

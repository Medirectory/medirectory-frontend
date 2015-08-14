`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'npi-type', {
  # Specify the other units that are required for this test.
  needs: ['model:mailing-address', 'model:practice-location-address', 'model:other-provider-identifier', 'model:taxonomy-license', 'model:taxonomy-group']
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model

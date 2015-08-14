`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'provider', {
  # Specify the other units that are required for this test.
  needs: ['model:organization', 'model:mailing-address', 'model:practice-location-address', 'model:mailing-address', 'model:other-provider-identifier', 'model:taxonomy-license', 'model:taxonomy-group']
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model

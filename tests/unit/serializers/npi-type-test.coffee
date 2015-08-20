`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'serializer:npi-type', {
  # Specify the other units that are required for this test.
  needs: ['model:npi-type']
}

test 'it serializes records', (assert) ->
  record = @subject()

  serializedRecord = record.serialize()

  assert.ok serializedRecord

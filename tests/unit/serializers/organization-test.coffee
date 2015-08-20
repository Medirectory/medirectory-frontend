`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'serializer:organization', {
  # Specify the other units that are required for this test.
}

test 'it serializes records', (assert) ->
  record = @subject()

  serializedRecord = record.serialize()

  assert.ok serializedRecord

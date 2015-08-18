`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'adapter:application', 'ApplicationAdapter', {
  # Specify the other units that are required for this test.
  # needs: ['serializer:foo']
}


test 'it exists', (assert) ->
  adapter = @subject()
  assert.ok adapter

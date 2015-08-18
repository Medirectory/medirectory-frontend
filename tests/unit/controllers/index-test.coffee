`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:index', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}


test 'it exists', (assert) ->
  controller = @subject()
  assert.ok controller


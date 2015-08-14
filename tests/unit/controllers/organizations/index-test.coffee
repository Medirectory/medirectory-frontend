`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:organizations/index', {
  # Specify the other units that are required for this test.
  needs: ['controller:index']
}

# Replace this with your real tests.
test 'it exists', (assert) ->
  controller = @subject()
  assert.ok controller

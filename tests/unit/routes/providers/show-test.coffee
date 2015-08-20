`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:providers/show', {
  # Specify the other units that are required for this test.
  # needs: ['model:npi-type', 'model:organization', 'model:provider', 'model:mailing-address', 'model:practice-location-address', 'model:other-provider-identifier', 'model:taxonomy-license', 'model:taxonomy-group']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route

test 'get provider in model hook', (assert) ->
  route = @subject()

  params = { id: 1, name: 'Caring Medical Center', location: 'Jackson, MS', npi: 123456789, provider_id: 234567 }
  store =
    find: (type) ->
      new Ember.RSVP.Promise (resolve) ->
        resolve(params)

  route.set 'store', store

  # test the model hook
  Ember.run ->
    route.model(params).then (result) ->
      assert.deepEqual(result, params)

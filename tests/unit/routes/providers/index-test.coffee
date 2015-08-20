`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:providers/index', {
  # Specify the other units that are required for this test.
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route

test 'get providers in model hook', (assert) ->
  route = @subject()

  # mock the store.
  params = [{ id: 1, name: 'Bob Jones', location: 'Jackson, MS', npi: 123456789 }, { id: 2, name: 'Barbara Jones', location: 'Tacoma, WA', npi: 987654321 }]
  store =
    query: (type) ->
      new Ember.RSVP.Promise (resolve) ->
        resolve(params)

  route.set 'store', store

  # test the model hook
  Ember.run ->
    route.model().then (result) ->
      assert.deepEqual(result, params)

`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:providers/index', {
  # Specify the other units that are required for this test.
  needs: ['controller:index']
}

test 'it exists', (assert) ->
  controller = @subject()
  assert.ok controller

test 'calling the action submitUpdate does a basic search', (assert) ->
  assert.expect(2)
  controller = @subject()
  indexController = controller.get 'controllers.index'

  Ember.run ->
    indexController.set 'basicSearch', true

    # check the properties
    assert.equal controller.get('q'), null

    # trigger the action and send the params
    params =
      q: 'Doogie Howser Los Angeles Surgery'

    controller.send 'submitUpdate', params

    # check that the parameters have been updated
    assert.equal controller.get('q'), params['q']

test 'calling the action submitUpdate does an advanced search', (assert) ->
  assert.expect(16)
  controller = @subject()
  indexController = controller.get 'controllers.index'

  Ember.run ->
    indexController.set 'basicSearch', false

    # check the properties
    assert.equal controller.get('q'), null
    assert.equal controller.get('name'), null
    assert.equal controller.get('location'), null
    assert.equal controller.get('geo_zip'), null
    assert.equal controller.get('radius'), null
    assert.equal controller.get('taxonomy'), null
    assert.equal controller.get('npi'), null
    assert.equal controller.get('organization'), null

    # trigger the action and send the params
    params =
      name: 'Doogie Howser'
      location: 'Los Angeles'
      geo_zip: 91043
      radius: 200
      taxonomy: 'Surgery'
      npi: 123456789
      organization: 'Eastman'

    controller.send 'submitUpdate', params

    # check that the parameters have been updated
    assert.equal controller.get('q'), null
    assert.equal controller.get('name'), params['name']
    assert.equal controller.get('location'), params['location']
    assert.equal controller.get('geo_zip'), params['geo_zip']
    assert.equal controller.get('radius'), params['radius']
    assert.equal controller.get('taxonomy'), params['taxonomy']
    assert.equal controller.get('npi'), params['npi']
    assert.equal controller.get('organization'), params['organization']

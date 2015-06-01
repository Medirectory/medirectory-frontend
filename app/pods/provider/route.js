import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('provider', params.provider_id);
  }
});

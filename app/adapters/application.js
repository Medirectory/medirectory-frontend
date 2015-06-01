import DS from 'ember-data';
/* Used to automate serialization from underscore style to camelcase */
export default DS.ActiveModelAdapter.extend({
  host: 'http://localhost:3000/api/v1',
  suffix: '.json',
  buildURL: function(type, id) {
    // Currently done to maintain the ".json" extension without messing with Ember's id system
    return this._super(type, id) + this.get('suffix');
  }
});

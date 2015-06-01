import DS from 'ember-data';
/* Used to automate serialization from underscore style to camelcase */
export default DS.ActiveModelSerializer.extend({
  primaryKey: 'npi'
});
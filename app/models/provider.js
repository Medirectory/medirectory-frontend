import DS from "ember-data";

var Provider = DS.Model.extend({
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),

  fullName: function() {
    return this.get('firstName') + ' ' + this.get('lastName');
  }.property('firstName', 'lastName')
});

// Add a fixture to provider initial data
Provider.reopenClass({
  FIXTURES: [
    {id: 1, firstName: 'Bugs', lastName: 'Bunny'},
    {id: 2, firstName: 'Wile E.', lastName: 'Coyote'}
  ]
});

export default Provider;

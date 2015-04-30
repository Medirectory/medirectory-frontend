import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    addProvider: function() {
      // Create the model
      var provider = this.store.createRecord('provider', {
        firstName: this.get('firstName'),
        lastName: this.get('lastName')
      });

      // Save the model
      provider.save();

      // Reset the input field
      this.set('firstName', '');
      this.set('lastName', '');
    }
  }
});

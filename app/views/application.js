import Ember from 'ember';

export default Ember.View.extend({
  didInsertElement: function(){
    this.$(".button-collapse").sideNav();
  }
});

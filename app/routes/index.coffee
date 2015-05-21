`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  model: ->
    return [
      {
        header: 'What\'s otolaryngology?'
        text: 'Otolaryngologists diagnose and manage diseases of the ears, nose, sinuses, larynx (voice box), mouth, and throat, as well as structures of the neck and face.'
      }
      {
        header: ''
        text: '678,100 providers take Medicare'
      }
      {
        header: 'Most Popular Specialties'
        text: 'Internal Medicine, Family Medicine, Pharmacy, Student, Physical Therapy'
      }
      {
        header: 'A Unique Specialty'
        text: 'Biomedical Photographer'
      }
    ]

`export default IndexRoute`

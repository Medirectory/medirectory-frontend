`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  resetController: (controller, isExiting, transition) ->
    if isExiting
      controller.set('query', '')
      controller.set('name', '')
      controller.set('location', '')
      controller.set('taxonomy', '')
      controller.set('npi', '')
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

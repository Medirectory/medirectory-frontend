`import DS from 'ember-data'`

TaxonomyCode = DS.Model.extend
  code: DS.attr('string'),
  taxonomy_type: DS.attr('string'),
  classification: DS.attr('string'),
  specialization: DS.attr('string'),
  definition: DS.attr('string'),
  notes: DS.attr('string'),
  taxonomyLicenses: DS.hasMany('taxonomy-license', { async: false })

  classificationSpecialty: (->
    classification = @get('classification')
    specialty = @get('specialization')
    if specialty
      '%@ (%@)'.fmt(classification, specialty)
    else
      classification
  ).property('classification', 'specialization')


`export default TaxonomyCode`

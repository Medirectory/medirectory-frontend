`import DS from 'ember-data'`
`import NpiType from './npi-type'`

Provider = NpiType.extend
  lastNameLegalName: DS.attr('string'),
  firstName: DS.attr('string'),
  middleName: DS.attr('string'),
  namePrefix: DS.attr('string'),
  nameSuffix: DS.attr('string'),
  credential: DS.attr('string'),
  otherLastName: DS.attr('string'),
  otherFirstName: DS.attr('string'),
  otherMiddleName: DS.attr('string'),
  otherNamePrefix: DS.attr('string'),
  otherNameSuffix: DS.attr('string'),
  otherCredential: DS.attr('string'),
  otherLastNameTypeCode: DS.attr('number'),
  genderCode: DS.attr('string'),
  isSoleProprietor: DS.attr('string'),

  male: (->
    return @get('genderCode') == 'M'
  ).property('genderCode'),

  female: (->
    return @get('genderCode') == 'F'
  ).property('genderCode')

  fullName: (->
    return (@get('namePrefix') || '') + ' ' + (@get('firstName') || '') + ' ' + (@get('middleName') || '') + ' ' + (@get('lastNameLegalName') || '') + ' ' + (@get('nameSuffix') || '')
  ).property('namePrefix', 'firstName', 'middleName', 'lastNameLegalName', 'nameSuffix')

  otherFullName: (->
    return (@get('otherNamePrefix') || '') + ' ' + (@get('otherFirstName') || '') + ' ' + (@get('otherMiddleName') || '') + ' ' + (@get('otherLastName') || '') + ' ' + (@get('otherNameSuffix') || '')
  ).property('otherNamePrefix', 'otherFirstName', 'otherMiddleName', 'otherLastName', 'otherNameSuffix')

  classifcationSpecialties: ( ->
    holder = []
    taxonomies = @get('taxonomyLicenses')
    taxonomies.forEach((license)->
      classSpecialty = license.get('taxonomyCode').get('classificationSpecialty')
      holder.push(classSpecialty) if classSpecialty not in holder
    )
    holder
  ).property('taxonomyLicenses.@each.taxonomyCode.classificationSpecialty')

`export default Provider`

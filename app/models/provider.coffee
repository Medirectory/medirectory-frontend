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
  organizations: DS.hasMany('organization'),

  male: (->
    return @get('genderCode') == 'M'
  ).property('genderCode'),

  female: (->
    return @get('genderCode') == 'F'
  ).property('genderCode')

  fullName: (->
    name = (@get('namePrefix') || '') + ' ' + (@get('firstName') || '') + ' ' + (@get('middleName') || '') + ' ' + (@get('lastNameLegalName') || '') + ' ' + (@get('nameSuffix') || '')
    return name.trim()
  ).property('namePrefix', 'firstName', 'middleName', 'lastNameLegalName', 'nameSuffix')

  otherFullName: (->
    name = (@get('otherNamePrefix') || '') + ' ' + (@get('otherFirstName') || '') + ' ' + (@get('otherMiddleName') || '') + ' ' + (@get('otherLastName') || '') + ' ' + (@get('otherNameSuffix') || '')
    return name.trim()
  ).property('otherNamePrefix', 'otherFirstName', 'otherMiddleName', 'otherLastName', 'otherNameSuffix')

`export default Provider`

`import DS from 'ember-data'`

Address = DS.Model.extend
  firstLine: DS.attr('string'),
  secondLine: DS.attr('string'),
  city: DS.attr('string'),
  state: DS.attr('string'),
  postalCode: DS.attr('string'),
  countryCode: DS.attr('string'),
  telephoneNumber: DS.attr('string'),
  faxNumber: DS.attr('string'),
  entity: DS.belongsTo('npi-type', {polymorphic: true}),

  streetAddress: (->
    return (@get('firstLine') || '') + ' ' + (@get('secondLine') || '')
  ).property('firstLine', 'secondLine')

  fullAddress: (->
    address = (@get('firstLine') || '') + ' ' +  (@get('city') || '') + ' ' +  (@get('state') || '') + ' ' +  (@get('postalCode').substring(0,5) || '')
    return address.trim()
  ).property('firstLine', 'city', 'state', 'postalCode')

  mapLink: (->
    address = (@get('firstLine') || '') + ' ' + (@get('city') || '') + ' ' +  (@get('state') || '') + ' ' +  (@get('postalCode').substring(0,5) || '')
    return 'http://maps.google.com/?q=' + address.trim()
  ).property('firstLine', 'city', 'state', 'postalCode')

  formattedPostal: (->
    postal = @get('postalCode')
    if postal.length == 9 # probably an american ZIP
      return postal.substring(0,5) + '-' + postal.substring(5,9)
    else
      return postal
  ).property('postalCode')

  formattedPhone: (->
    phoneNumber = @get('telephoneNumber')
    if phoneNumber && phoneNumber.length == 10 # probably an american phone number
      areaCode = phoneNumber.substring(0,3)
      exchange = phoneNumber.substring(3,6)
      number = phoneNumber.substring(6,10)
      return '(' + areaCode + ') ' + exchange + '-' + number
    else
      return phoneNumber
  ).property('telephoneNumber')

  formattedFax: (->
    faxNumber = @get('faxNumber')
    if faxNumber && faxNumber.length == 10 # probably an american phone number
      areaCode = faxNumber.substring(0,3)
      exchange = faxNumber.substring(3,6)
      number = faxNumber.substring(6,10)
      return '(' + areaCode + ') ' + exchange + '-' + number
    else
      return faxNumber
  ).property('faxNumber')


`export default Address`

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
    return @get('firstLine') + ' ' + @get('secondLine')
  ).property('firstLine', 'secondLine')

  formattedPhone: (->
    phoneNumber = @get('telephoneNumber')
    if phoneNumber.length == 10 # probably an american phone number
      areaCode = phoneNumber.substring(0,3)
      exchange = phoneNumber.substring(3,6)
      number = phoneNumber.substring(6,10)
      return '(' + areaCode + ') ' + exchange + '-' + number
    else
      return phoneNumber

  ).property('telephoneNumber')

`export default Address`

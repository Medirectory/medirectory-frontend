import DS from 'ember-data';
import NpiType from './npi-type';

export default NpiType.extend({
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
  isSoleProprietor: DS.attr('string')
});

import DS from 'ember-data';
import NpiType from './npi-type';

export default NpiType.extend({
  ein: DS.attr('string'),
  organizationNameLegalBusinessName: DS.attr('string'),
  otherOrganizationName: DS.attr('string'),
  otherOrganizationNameTypeCode: DS.attr('string'),
  authorizedOfficialLastName: DS.attr('string'),
  authorizedOfficialFirstName: DS.attr('string'),
  authorizedOfficialMiddleName: DS.attr('string'),
  authorizedOfficialNamePrefix: DS.attr('string'),
  authorizedOfficialNameSuffix: DS.attr('string'),
  authorizedOfficialCredential: DS.attr('string'),
  authorizedOfficialTitleorPosition: DS.attr('string'),
  authorizedOfficialTelephoneNumber: DS.attr('string'),
  isOrganizationSubpart: DS.attr('string'),
  parentOrganizationLbn: DS.attr('string'),
  parentOrganizationTin: DS.attr('string')  
});

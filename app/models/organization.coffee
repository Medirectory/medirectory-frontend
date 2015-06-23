`import DS from 'ember-data'`
`import NpiType from './npi-type'`

Organization = NpiType.extend 
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
  parentOrganizationTin: DS.attr('string'),
  providers: DS.hasMany('provider')

  fullAuthorizedName: (->
    name = (@get('authorizedOfficialNamePrefix') || '') + ' ' + (@get('authorizedOfficialFirstName') || '') + ' ' + (@get('authorizedOfficialMiddleName') || '') + ' ' + (@get('authorizedOfficialLastName') || '') + ' ' + (@get('authorizedOfficialNameSuffix') || '')
    #return the name unless the name is null only whitespace, otherwise null.
    name unless /\S/.test(name)
    ).property('authorizedOfficialNamePrefix', 'authorizedOfficialFirstName', 'authorizedOfficialMiddleName', 'authorizedOfficialLastName', 'authorizedOfficialNameSuffix')


`export default Organization`

import DS from 'ember-data';
import NpiType from './npi-type.js';

export default NpiType.extend({
  npi: DS.attr('number'),
  entity_type_code: DS.attr('number'),
  ein: DS.attr('string'),
  replacement_npi: DS.attr('number'),
  organization_name_legal_business_name: DS.attr('string'),
  other_organization_name: DS.attr('string'),
  other_organization_name_type_code: DS.attr('string'),
  enumeration_date: DS.attr('date'),
  last_update_date: DS.attr('date'),
  npi_deactivation_code: DS.attr('string'),
  npi_deactivation_date: DS.attr('date'),
  npi_reactivation_date: DS.attr('date'),
  authorized_official_last_name: DS.attr('string'),
  authorized_official_first_name: DS.attr('string'),
  authorized_official_middle_name: DS.attr('string'),
  authorized_official_name_prefix: DS.attr('string'),
  authorized_official_name_suffix: DS.attr('string'),
  authorized_official_credential: DS.attr('string'),
  authorized_official_titleor_position: DS.attr('string'),
  authorized_official_telephone_number: DS.attr('string'),
  is_organization_subpart: DS.attr('string'),
  parent_organization_lbn: DS.attr('string'),
  parent_organization_tin: DS.attr('string')  
});

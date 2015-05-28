import DS from 'ember-data';
import NpiType from './npi-type.js';

export default NpiType.extend({
  npi: DS.attr('number'),
  entity_type_code: DS.attr('number'),
  replacement_npi: DS.attr('number'),
  last_name_legal_name: DS.attr('string'),
  first_name: DS.attr('string'),
  middle_name: DS.attr('string'),
  name_prefix: DS.attr('string'),
  name_suffix: DS.attr('string'),
  credential: DS.attr('string'),
  other_last_name: DS.attr('string'),
  other_first_name: DS.attr('string'),
  other_middle_name: DS.attr('string'),
  other_name_prefix: DS.attr('string'),
  other_name_suffix: DS.attr('string'),
  other_credential: DS.attr('string'),
  other_last_name_type_code: DS.attr('number'),
  enumeration_date: DS.attr('date'),
  last_update_date: DS.attr('date'),
  npi_deactivation_reason_code: DS.attr('string'),
  npi_deactivation_date: DS.attr('date'),
  npi_reactivation_date: DS.attr('date'),
  gender_code: DS.attr('string'),
  is_sole_proprietor: DS.attr('string')
});

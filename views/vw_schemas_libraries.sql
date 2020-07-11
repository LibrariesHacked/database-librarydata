create view vw_schemas_libraries as
select
  a.name as "Local authority",
  l.name as "Library name",
  l.address_1 as "Address 1",
  l.postcode as "Postcode",
  l.unique_property_reference_number as "Unique property reference number",
  case when l.statutory then 'Yes' else 'No' end as "Statutory",
  t.name as "Library type",
  l.year_opened as "Year opened",
  l.year_closed as "Year closed",
  l.monday_staffed_hours as "Monday staffed hours",
  l.tuesday_staffed_hours as "Tuesday staffed hours",
  l.wednesday_staffed_hours as "Wednesday staffed hours",
  l.thursday_staffed_hours as "Thursday staffed hours",
  l.friday_staffed_hours as "Friday staffed hours",
  l.saturday_staffed_hours as "Saturday staffed hours",
  l.sunday_staffed_hours as "Sunday staffed hours",
  l.monday_unstaffed_hours as "Monday unstaffed hours",
  l.tuesday_unstaffed_hours as "Tuesday unstaffed hours",
  l.wednesday_unstaffed_hours as "Wednesday unstaffed hours",
  l.thursday_unstaffed_hours as "Thursday unstaffed hours",
  l.friday_unstaffed_hours as "Friday unstaffed hours",
  l.saturday_unstaffed_hours as "Saturday unstaffed hours",
  l.sunday_unstaffed_hours as "Sunday unstaffed hours",
  case when l.colocated then 'Yes' else 'No' end as "Co-located",
  l.colocated_with as "Co-located with",
  l.notes as "Notes",
  l.url as "URL",
  l.email_address as "Email address"
from schemas_libraries l
join schemas_local_authority a on a.code = l.local_authority_code
join schemas_library_type t on t.id = l.library_type_id;

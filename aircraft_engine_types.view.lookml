- view: aircraft_engine_types
  fields:

  - dimension: aircraft_engine_type_id
    primary_key: true
    type: yesno
    sql: ${TABLE}.aircraft_engine_type_id

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - measure: count
    type: count
    drill_fields: [aircraft_engine_type_id, aircraft.count, aircraft_engines.count, aircraft_models.count]


- view: aircraft
  fields:

  - dimension: address1
    type: string
    sql: ${TABLE}.address1

  - dimension: address2
    type: string
    sql: ${TABLE}.address2

  - dimension_group: air_worth
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.air_worth_date

  - dimension: aircraft_engine_code
    type: string
    sql: ${TABLE}.aircraft_engine_code

  - dimension: aircraft_engine_type_id
    type: yesno
    # hidden: true
    sql: ${TABLE}.aircraft_engine_type_id

  - dimension: aircraft_model_code
    type: string
    sql: ${TABLE}.aircraft_model_code

  - dimension: aircraft_serial
    type: string
    sql: ${TABLE}.aircraft_serial

  - dimension: aircraft_type_id
    type: yesno
    # hidden: true
    sql: ${TABLE}.aircraft_type_id

  - dimension_group: cert_issue
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.cert_issue_date

  - dimension: certification
    type: string
    sql: ${TABLE}.certification

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: county
    type: string
    sql: ${TABLE}.county

  - dimension: fract_owner
    type: string
    sql: ${TABLE}.fract_owner

  - dimension_group: last_action
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_action_date

  - dimension: mode_s_code
    type: string
    sql: ${TABLE}.mode_s_code

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: region
    type: string
    sql: ${TABLE}.region

  - dimension: registrant_type_id
    type: yesno
    sql: ${TABLE}.registrant_type_id

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: status_code
    type: string
    sql: ${TABLE}.status_code

  - dimension: tail_num
    type: string
    sql: ${TABLE}.tail_num

  - dimension_group: year_built
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.year_built

  - dimension: zip
    type: string
    sql: ${TABLE}.zip

  - measure: count
    type: count
    drill_fields: [name, aircraft_types.aircraft_type_id, aircraft_engine_types.aircraft_engine_type_id]


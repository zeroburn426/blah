- view: zipcodes
  fields:

  - dimension: zipcode_id
    primary_key: true
    type: number
    sql: ${TABLE}.zipcode_id

  - dimension: allocation
    type: number
    sql: ${TABLE}.allocation

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: population
    type: number
    sql: ${TABLE}.population

  - dimension: state_code
    type: string
    sql: ${TABLE}.state_code

  - dimension: state_fips
    type: yesno
    sql: ${TABLE}.state_fips

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: [zipcode_id, name]


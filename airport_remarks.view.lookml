- view: airport_remarks
  fields:

  - dimension: airport_remark_id
    primary_key: true
    type: number
    sql: ${TABLE}.airport_remark_id

  - dimension: element_name
    type: string
    sql: ${TABLE}.element_name

  - dimension: remark
    type: string
    sql: ${TABLE}.remark

  - dimension: site_number
    type: string
    sql: ${TABLE}.site_number

  - measure: count
    type: count
    drill_fields: [airport_remark_id, element_name]


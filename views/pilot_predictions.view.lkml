# The name of this view in Looker is "Pilot Predictions"
view: pilot_predictions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `employeedata.pilot_predictions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Average Montly Hours" in Explore.

  dimension: average_montly_hours {
    type: number
    sql: ${TABLE}.average_montly_hours ;;
  }

  dimension: departments {
    type: string
    sql: ${TABLE}.Departments ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: last_evaluation {
    type: number
    sql: ${TABLE}.last_evaluation ;;
  }

  dimension: number_project {
    type: number
    sql: ${TABLE}.number_project ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_project {
    type: sum
    sql: ${number_project} ;;  }
  measure: average_number_project {
    type: average
    sql: ${number_project} ;;  }

  dimension: prediction_label {
    type: number
    sql: ${TABLE}.prediction_label ;;
  }

  dimension: prediction_score {
    type: number
    sql: ${TABLE}.prediction_score ;;
  }

  dimension: promotion_last_5years {
    type: number
    sql: ${TABLE}.promotion_last_5years ;;
  }

  dimension: quit_the_company {
    type: number
    sql: ${TABLE}.Quit_the_Company ;;
  }

  dimension: salary {
    type: string
    sql: ${TABLE}.salary ;;
  }

  dimension: satisfaction_level {
    type: number
    sql: ${TABLE}.satisfaction_level ;;
  }

  dimension: time_spend_company {
    type: number
    sql: ${TABLE}.time_spend_company ;;
  }

  dimension: work_accident {
    type: number
    sql: ${TABLE}.Work_accident ;;
  }
  measure: count {
    type: count
  }
}

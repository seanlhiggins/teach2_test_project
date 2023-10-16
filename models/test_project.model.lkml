connection: "bq-flights"

# include all the views
# include: "/views/**/*.view"
include: "/views/aircraft.view.lkml"
include: "/views/airports.view.lkml"
include: "/views/carriers.view.lkml"
include: "/views/flights.view.lkml"

datagroup: test_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_project_default_datagroup

explore: airports {}

explore: flights {}

explore: aircraft {}

explore: carriers {}

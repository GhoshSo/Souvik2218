# Define the database connection to be used for this model.
connection: "thelook"
include: "/explores"

# include all the views
include: "/views/**/*.view"
include: "/views"
include: "/Souvik_Dashboard_Issue.dashboard.lookml"
include: "/views/users.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: souvik2218_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: souvik2218_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Souvik2218"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.



explore: imgsrc1onerroralert2 {}

explore: topten {}

explore: account {}

explore: billion_orders {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  # join: users {
  #   type: left_outer
  #   sql_on: ${orders.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
}

explore: connection_reg_r3 {}


explore: mkb_derived {}


explore: dept {}

explore: employees {}

explore: events {
  # join: users {
  #   type: left_outer
  #   sql_on: ${events.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
}

explore: fakeorders {
  join: orders {
    type: left_outer
    sql_on: ${fakeorders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  # join: users {
  #   type: left_outer
  #   sql_on: ${orders.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
}

explore: fatal_error_user_derived_base {}

explore: flights {}

explore: human {}

explore: hundred_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  # join: users {
  #   type: left_outer
  #   sql_on: ${orders.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
}

explore: hundred_million_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  # join: users {
  #   type: left_outer
  #   sql_on: ${orders.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
#}




# explore: inventory_items {
#   join: products {
#     type: left_outer
#     sql_on: ${inventory_items.product_id} = ${products.id} ;;
#     relationship: many_to_one
#   }
# }

# explore: orders {
  # join: users {
  #   type: left_outer
  #   sql_on: ${orders.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
}

# explore: order_items {
#   join: orders {
#     type: left_outer
#     sql_on: ${order_items.order_id} = ${orders.id} ;;
#     relationship: many_to_one
#   }

#   join: inventory_items {
#     type: left_outer
#     sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
#     relationship: many_to_one
#   }

  # join: users {
  #   type: left_outer
  #   sql_on: ${orders.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }

#   join: products {
#     type: left_outer
#     sql_on: ${inventory_items.product_id} = ${products.id} ;;
#     relationship: many_to_one
#   }
# }

explore: order_items_vijaya {
  join: orders {
    type: left_outer
    sql_on: ${order_items_vijaya.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items_vijaya.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  # join: users {
  #   type: left_outer
  #   sql_on: ${orders.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_status_vijaya {}

explore: pegdates {}

explore: person {}

explore: persons {}

explore: persons2 {}

explore: products {}

explore: salary {
  join: dept {
    type: left_outer
    sql_on: ${salary.dept_id} = ${dept.dept_id} ;;
    relationship: many_to_one
  }
}

explore: saralooker {
  # join: users {
  #   type: left_outer
  #   sql_on: ${saralooker.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
}

explore: schema_migrations {}

explore: sindhu {
  # join: users {
  #   type: left_outer
  #   sql_on: ${sindhu.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
}

explore: ten_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${ten_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  # join: users {
  #   type: left_outer
  #   sql_on: ${orders.user_id} = ${users.id} ;;
  #   relationship: many_to_one
  # }
}

explore: test {}

# explore: users {}



explore: vvimgsrc1onerroralert2ll {}

explore: xin_test_for_bug2 {}

explore: xss_test {}

explore: xss_test_1 {}

explore: xss_test_10 {}

explore: xss_test_11 {}

explore: xss_test_12 {}

explore: xss_test_13 {}

explore: xss_test_14 {}

explore: xss_test_15 {}

explore: xss_test_16 {}

explore: xss_test_2 {}

explore: xss_test_4 {}

explore: xss_test_5 {}

explore: xss_test_6 {}

explore: xss_test_7 {}

explore: xss_test_8 {}

explore: xss_test_9 {}

week_start_day: saturday

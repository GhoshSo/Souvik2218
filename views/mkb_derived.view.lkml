view: mkb_derived {
  derived_table: {
    sql: SELECT
          order_items.id  AS `order_items.id`,
          order_items.phone  AS `order_items.phone`,
          CASE
            WHEN orders.status = 'complete' THEN "yes"
          ELSE "no"
          END  AS `orders.status_ysno`,
          orders.status AS `orders.status`,
          AVG(order_items.sale_price ) AS `order_items.average_sale_price`,
          COUNT(DISTINCT orders.id ) AS `orders.count`
      FROM demo_db.order_items  AS order_items
      LEFT JOIN demo_db.orders  AS orders ON order_items.order_id = orders.id
      GROUP BY
          1,
          2,
          3,
          4
      ORDER BY
          AVG(order_items.sale_price ) DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_items_id {
    type: number
    sql: ${TABLE}.`order_items.id` ;;
  }

  dimension: order_items_phone {
    type: string
    sql: ${TABLE}.`order_items.phone` ;;
  }

  dimension: orders_status_ysno {
    type: string
    sql: ${TABLE}.`orders.status_ysno` ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }

  dimension: order_items_average_sale_price {
    type: number
    sql: ${TABLE}.`order_items.average_sale_price` ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.`orders.count` ;;
  }

  set: detail {
    fields: [
      order_items_id,
      order_items_phone,
      orders_status_ysno,
      orders_status,
      order_items_average_sale_price,
      orders_count
    ]
  }
}

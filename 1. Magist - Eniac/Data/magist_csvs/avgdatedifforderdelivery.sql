select order_status, AVG(DATEDIFF(IFNULL(order_delivered_customer_date, NOW()), IFNULL(order_purchase_timestamp, NOW()))) as duration
from orders
where order_status = 'delivered'
;
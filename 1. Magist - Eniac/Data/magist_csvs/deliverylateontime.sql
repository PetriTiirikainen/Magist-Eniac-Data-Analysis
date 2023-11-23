select order_status, SUM((DATEDIFF(IFNULL(order_delivered_customer_date, NOW()), IFNULL(order_estimated_delivery_date, NOW()))) > 0)
from orders
where order_status = 'delivered'
;
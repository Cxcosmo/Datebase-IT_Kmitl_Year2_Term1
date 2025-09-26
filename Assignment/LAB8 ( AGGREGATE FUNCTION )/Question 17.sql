SELECT      IFNULL(state, 'No Data') `state`,
            SUM(IFNULL(creditLimit, 0)) / COUNT(customerNumber) `Average Credit`
FROM        customers
GROUP BY    state;
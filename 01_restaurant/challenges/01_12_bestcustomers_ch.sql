-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT COUNT(Orders.OrderID) AS OrderCount, Customers.FirstName, Customers.LastName, Customers.Email
FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Orders.CustomerID
ORDER BY OrderCount DESC
LIMIT 15;
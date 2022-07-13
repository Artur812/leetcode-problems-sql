-- Input: 
-- Customers table:
-- +----+-------+
-- | id | name  |
-- +----+-------+
-- | 1  | Joe   |
-- | 2  | Henry |
-- | 3  | Sam   |
-- | 4  | Max   |
-- +----+-------+
-- Orders table:
-- +----+------------+
-- | id | customerId |
-- +----+------------+
-- | 1  | 3          |
-- | 2  | 1          |
-- +----+------------+
-- 
-- id is the primary key column for this table.
-- customerId is a foreign key of the ID from the Customers table.
-- Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
-- 
-- Write an SQL query to report all customers who never order anything.
-- 
-- Output: 
-- +-----------+
-- | Customers |
-- +-----------+
-- | Henry     |
-- | Max       |
-- +-----------+

SELECT name AS Customers
FROM Customers
WHERE id NOT IN(SELECT customerId FROM Orders);

-- Employees table:
-- +-------------+---------+--------+
-- | employee_id | name    | salary |
-- +-------------+---------+--------+
-- | 2           | Meir    | 3000   |
-- | 3           | Michael | 3800   |
-- | 7           | Addilyn | 7400   |
-- | 8           | Juan    | 6100   |
-- | 9           | Kannon  | 7700   |
-- +-------------+---------+--------+
-- 
-- Write an SQL query to calculate the bonus of each employee. 
-- The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee name does not start with the character 'M'. 
-- The bonus of an employee is 0 otherwise.
-- 
-- Return the result table ordered by employee_id.

SELECT
   employee_id,
   CASE
        WHEN employee_id % 2 = 0 OR LEFT(name, 1) = 'M' THEN 0
        ELSE salary
   END as bonus
FROM Employees
ORDER BY employee_id;

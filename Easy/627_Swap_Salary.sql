-- Salary table:
-- +----+------+-----+--------+
-- | id | name | sex | salary |
-- +----+------+-----+--------+
-- | 1  | A    | m   | 2500   |
-- | 2  | B    | f   | 1500   |
-- | 3  | C    | m   | 5500   |
-- | 4  | D    | f   | 500    |
-- +----+------+-----+--------+
-- 
-- Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.
-- 
-- Note that you must write a single update statement, do not write any select statement for this problem.

UPDATE Salary
SET sex = 
(
    CASE
        WHEN sex = 'f' THEN 'm'
        ELSE 'f'
    END
)

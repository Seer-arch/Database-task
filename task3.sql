SELECT DISTINCT T.name
FROM instructor AS T, instructor AS S
WHERE T.salary > S.salary AND S.dept_name = 'History';

SELECT 'like' = 'LIKE';
SELECT 'like' = 'like';

SELECT * FROM department
WHERE lower(dept_name) ~~ '%sci%';



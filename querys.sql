-- Example 1st
CREATE TABLE public.employee
(
    id INTEGER,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);
-- Example 2nd File to: "./employee.sql"
-- Example 3rd
UPDATE employee SET name = CONCAT(name, ' Güncellendi') WHERE birthday < '01/01/1994';
UPDATE employee SET name = CONCAT(name, ' İlk 5 sıra.') WHERE id < 5;
UPDATE employee SET name = CONCAT(name, ' Son 5 sıra.') WHERE id > 45;
UPDATE employee SET name = CONCAT(name, ' yaşlanmışsın') WHERE  birthday < '01/01/1990';
UPDATE employee SET name = CONCAT(name, ' işte genç.') WHERE  birthday > '01/01/2000';
-- Example 4th
DELETE FROM employee WHERE id > 45;
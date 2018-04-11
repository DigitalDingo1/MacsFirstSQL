
SELECT * FROM education.facilities;
SELECT * FROM workexperience.companies;
SELECT * FROM workexperience.responsibilities;
GROUP BY companies;
SELECT * FROM workexperience.companies;
ALTER TABLE workexperience.companies ADD COLUMN titles TEXT;

SELECT DISTINCT title FROM workexperience.titles;

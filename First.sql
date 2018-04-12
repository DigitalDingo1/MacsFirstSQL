-- Original queries
SELECT * FROM education.facilities;
SELECT * FROM workexperience.companies;
SELECT * FROM workexperience.responsibilities;
GROUP BY companies;
SELECT * FROM workexperience.companies;
ALTER TABLE workexperience.companies ADD COLUMN titles TEXT;

SELECT DISTINCT title FROM workexperience.titles;

--ANSWERS:
-- Simple select all statement on a table that's given to you
SELECT * FROM education.facilities;

-- Another select all, but this time you're forced to use pgAdmin to navigate and explore the database
SELECT * FROM workexperience.companies;

-- Key here is to use a join on two tables, matching specific values on both tables. You then must explicitly state to only show the specified fields
-- You are also giving each table an alias, right after you call the table you put the alias right after
-- Furthermore, you're naming the columns that will be displayed. This is handy for exports.
SELECT responsibility.description as Responsibility, company.CompanyName as Company
	FROM workexperience.companies company JOIN
	workexperience.responsibilities responsibility
	ON company.Id = responsibility.companyId;
	
-- Idea here is similar to the last exercise, you're going to join on a value, give aliases, and select specific fields
SELECT company.CompanyName as Company, title.title
	FROM workexperience.companies company JOIN
	workexperience.titles title
	ON company.Id = title.companyId;

SELECT company.name, SUBSTRING(users.email, (LOCATE('@', users.email))+1) AS `domain`, COUNT(*) AS `counter of users` FROM company
JOIN users ON company.id_company = users.company GROUP BY `domain`, company.name ORDER BY company.name;

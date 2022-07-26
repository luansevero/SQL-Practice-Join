--Questão 1:
SELECT u.id, u.name, c.name as city FROM users u JOIN cities c ON u."cityId"= c.id
--Questão 2:
SELECT t.id, u1.name as writer , u2.name as recipient, t.message FROM testimonials t JOIN users u1 ON t."writerId"= u1.id JOIN users u2 ON t."recipientId" = u2.id
--Questão 3:
SELECT u.id, u.name, c.name as course, s.name as school, e."endDate" FROM users u JOIN educations e ON u.id = e."userId" JOIN courses c ON c.id = e."courseId" JOIN schools s ON s.id = e."schoolId" WHERE e."status" = 'finished' AND u.id = 30
--Questão 4
SELECT u.id, u.name, r.name as role, c.name as company, e."startDate" FROM experiences e JOIN users u ON e."userId" = u.id JOIN roles r ON e."roleId" = r.id JOIN companies c ON e."companyId" = c.id WHERE e."endDate" IS null AND u.id = 50;
--Questão Bônus:
SELECT comp.id,s.name as school,c.name as course, comp.name as company, r.name as role FROM companies comp JOIN jobs j ON comp.id = j."companyId" JOIN roles r ON j."roleId" = r.id JOIN applicants a ON j.id = a."jobId" JOIN educations e ON a."userId" = e."userId" JOIN schools s ON e."schoolId" = s.id JOIN courses c ON e."courseId" = c.id WHERE comp.id = 10 AND j.active = true;

--Для каждой компании найдите количество учебных заведений, которые окончили её сотрудники. Выведите название компании и число уникальных названий учебных заведений. Составьте топ-5 компаний по количеству университетов.

SELECT co.name,  COUNT(DISTINCT ed.instituition)
FROM people as pe
JOIN education as ed ON pe.id=ed.person_id
JOIN company as co ON pe.company_id = co.id
GROUP BY co.name
ORDER BY COUNT(DISTINCT ed.instituition) DESC
LIMIT 5
--Отобразите имя и фамилию всех сотрудников стартапов. Добавьте поле с названием учебного заведения, которое окончил сотрудник, если эта информация известна.


SELECT p.first_name, p.last_name, e.instituition
FROM people as p
LEFT JOIN education as e on p.id=e.person_id
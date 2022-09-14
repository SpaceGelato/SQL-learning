--Создайте поле с категориями:
--Для фондов, которые инвестируют в 100 и более компаний, назначьте категорию high_activity.
--Для фондов, которые инвестируют в 20 и более компаний до 100, назначьте категорию middle_activity.
--Если количество инвестируемых компаний фонда не достигает 20, назначьте категорию low_activity.
--Отобразите все поля таблицы fund и новое поле с категориями.

SELECT *,
    CASE
    when invested_companies >= 100 THEN 'high_activity'
    when invested_companies < 100 AND invested_companies >= 20 THEN 'middle_activity'
    when invested_companies < 20 THEN 'low_activity'
    END
FROM fund
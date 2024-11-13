CREATE MATERIALIZED VIEW projet_task_count AS
SELECT
    p.projet_id,
    p.name,
    COUNT(t.task_id) AS task_count
FROM
    projet p
        LEFT JOIN
    task t ON p.projet_id = t.projet_id
GROUP BY
    p.projet_id;

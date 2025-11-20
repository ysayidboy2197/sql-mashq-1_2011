SELECT
    first_name,
    last_name,
    email
FROM users
WHERE city = 'Toshkent';

SELECT *
FROM users
WHERE created_at > '2024-03-31'
  AND last_login >= '2024-11-01'
  AND last_login <  '2024-12-01';

SELECT
    region,            -- yoki viloyat
    COUNT(*) AS user_count
FROM users
GROUP BY region
ORDER BY user_count DESC;

SELECT COUNT(*) AS active_gmail_users
FROM users
WHERE email LIKE '%@gmail.com'
  AND status = 'active';

SELECT *
FROM users
ORDER BY created_at DESC
LIMIT 5;

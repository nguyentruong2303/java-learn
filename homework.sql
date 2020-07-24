
1.
SELECT NAME,MAX(mount)
FROM user
INNER JOIN salary
ON user.id = salary.user_id


1.
select name 
from user
where id = (select user_id from salary where mount = (select max(mount) from salary))
1.
SELECT a.name
FROM user a, salary b
WHERE a.id= b.user_id
GROUP BY b.user_id
ORDER BY AVG(b.mount) DESC
LIMIT 1
//2.teacher
SELECT a.name ,SUM(c.mount)
FROM dprtmt a, user b, salary c
WHERE a.id= b.dprtmt_id AND b.id= c.user_id
GROUP BY b.dprtmt_id
ORDER BY SUM(c.mount) DESC
LIMIT 1
2.
SELECT (SUM(mount)),d.name 
FROM user a
INNER JOIN salary s
ON a.id = s.user_id
INNER JOIN dprtmt d
ON a.id = d.id
3.//teach
SELECT a.name ,avg(c.mount)
FROM rank a, user b, salary c
WHERE a.id= b.rank_id AND b.id= c.user_id
GROUP BY b.rank_id
ORDER BY avg(c.mount) DESC
LIMIT 1

3.

SELECT (AVG(s.mount)) AS totalmount,r.name
FROM user a
INNER JOIN rank r
ON a.rank_id = r.id
INNER JOIN salary s
ON a.id = s.user_id
GROUP BY r.name
ORDER BY totalmount DESC
LIMIT 1
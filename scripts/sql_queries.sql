SELECT *
FROM top;

SELECT Certificate, AVG(`Gross(in million dollars)`) AS million_dollars
FROM top
GROUP BY Certificate
ORDER BY million_dollars DESC;

SELECT Certificate, AVG(Rate) AS rating
FROM top
GROUP BY Certificate
ORDER BY rating DESC;

SELECT Certificate, COUNT(Rate) AS count
FROM top
GROUP BY Certificate
ORDER BY count DESC;

SELECT `Year`
FROM top;

SELECT `Year`, COUNT(`Year`)
FROM top
GROUP BY `Year`
ORDER BY `Year`;

SELECT *
FROM top
ORDER BY Rate DESC, Metascore DESC
LIMIT 10;

SELECT avg(Votes)
FROM top;

SELECT *
FROM top;

SELECT director, COUNT(*) AS appearances
FROM(
	SELECT Director1 AS director FROM top
	WHERE Director1 != ""
	UNION ALL
	SELECT Director2 AS director FROM top
	WHERE Director2 != ""
	UNION ALL
	SELECT Director3 AS director FROM top
	WHERE Director3 != ""
) AS all_directors
GROUP BY director
ORDER BY appearances DESC;

SELECT actor, COUNT(*) AS appearances
FROM(
	SELECT Actor1 AS actor FROM top
	WHERE Actor1 != ""
	UNION ALL
	SELECT Actor2 AS actor FROM top
	WHERE Actor2 != ""
	UNION ALL
	SELECT Actor3 AS actor FROM top
	WHERE Actor3 != ""
    UNION ALL
    SELECT Actor4 AS actor FROM top
	WHERE Actor4 != ""
) AS all_actors
GROUP BY actor
ORDER BY appearances DESC;

UPDATE top
SET Genre3 = TRIM(Genre3);

SELECT genre, COUNT(*) AS appearances
FROM(
	SELECT Genre1 AS genre FROM top
	WHERE Genre1 != ""
	UNION ALL
	SELECT Genre2 AS genre FROM top
	WHERE Genre2 != ""
	UNION ALL
	SELECT Genre3 AS genre FROM top
	WHERE Genre3 != ""
) AS all_genre
GROUP BY genre
ORDER BY appearances DESC;

SELECT *
FROM top
WHERE `Gross(in million dollars)` IS NOT NULL
ORDER BY `Gross(in million dollars)` DESC;

SELECT now();

SELECT current_date;

SELECT current_time;

-- increment and decrement data

SELECT (NOW() + INTERVAL '1 day') AS "increment_day";

SELECT (NOW() + INTERVAL '1 week') AS "increment_week";

SELECT (NOW() + INTERVAL '1 month') AS "increment_month";

-- extract part of timestamp

SELECT date_part('hour', now()) AS "date_part_hour";

SELECT date_part('minute', now()) AS "date_part_minute";

SELECT date_part('seconds', now()) AS "date_part_seconds";

SELECT date_part('day', now()) AS "date_part_day";

SELECT date_part('week', now()) AS "date_part_week";

SELECT date_part('month', now()) AS "date_part_month";

SELECT date_part('year', now()) AS "date_part_year";

-- extract as string

SELECT to_char(now(), 'day') AS "to_char_day";

SELECT to_char(now(), 'month') AS "to_char_month";


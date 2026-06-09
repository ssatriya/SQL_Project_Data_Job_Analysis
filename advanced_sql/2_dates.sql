-- SELECT
--     job_title_short AS title,
--     job_location AS location,
--     job_posted_date :: DATE AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date,
--     EXTRACT(
--         MONTH
--         FROM
--             job_posted_date
--     ) AS MONTH,
--     EXTRACT(
--         YEAR
--         FROM
--             job_posted_date
--     ) AS year
-- FROM
--     job_postings_fact
-- LIMIT
--     5;
SELECT
    count(job_id) AS job_posted_count,
    EXTRACT(
        MONTH
        FROM
            job_posted_date
    ) AS MONTH
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    MONTH
ORDER BY
    job_posted_count DESC;
DROP TABLE IF EXISTS requests;

CREATE TABLE requests (
    id SERIAL PRIMARY KEY,
    url TEXT,
    status_code INTEGER,
    response_time NUMERIC
);

INSERT INTO requests (url, status_code, response_time) VALUES
('site1.com', 200, -1),
('site2.com', 404, 1.5),
('site3.com', 500, 3.1),
('site4.com', 200, 0.4),
('site5.com', 301, 5.0),
('site6.com', 200, 0.3),
('site7.com', 666, 6.6);

SELECT 
    url, 
    status_code, 
    CASE
        WHEN status_code = 200 THEN 'Success'
        WHEN status_code = 404 THEN 'Not found - retrying'
        WHEN status_code >= 500 THEN 'Server error - backing off'
        ELSE 'Unexpected status'
    END AS status_message
FROM requests;

SELECT 
    url, 
    response_time, 
    CASE
        WHEN response_time < 1 THEN 'Fast'
        WHEN response_time <= 3 THEN 'Medium'
        ELSE 'Slow'
    END AS speed_label
FROM requests;

SELECT COUNT(*) FROM requests WHERE status_code NOT IN (200) AND response_time > 2;

SELECT url, status_code, response_time
FROM requests
WHERE status_code = 200
ORDER BY response_time ASC; 

SELECT
    url, 
    status_code, 
    response_time, 
    CASE   
        WHEN response_time < 1 THEN 'Fast'
        WHEN response_time <= 3 THEN 'Medium'
        ELSE 'Slow'
    END AS speed_label
FROM requests
WHERE status_code NOT IN (200) 
ORDER BY response_time DESC; 

SELECT status_code, COUNT(*), STRING_AGG(url, ', ') AS sites
FROM requests
GROUP BY status_code; 

SELECT
    COUNT(CASE WHEN response_time < 1 THEN 1 END) AS fast_count,
    COUNT(CASE WHEN response_time >= 1 AND response_time <= 3 THEN 1 END) AS medium_count,
    COUNT(CASE WHEN response_time > 3 THEN 1 END) AS slow_count
FROM requests;

INSERT INTO requests (url, status_code, response_time) VALUES ('badtest.com', 200, -1);
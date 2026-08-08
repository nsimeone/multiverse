-- DROP TABLE IF EXISTS checks; 
-- DROP TABLE IF EXISTS sites;

-- CREATE TABLE sites (
--    id SERIAL PRIMARY KEY, 
--    url TEXT
--);

--CREATE TABLE checks (
--    id SERIAL PRIMARY KEY, 
--    site_id INTEGER REFERENCES sites(id),
--    status_code INTEGER, 
--    checked_at TIMESTAMP DEFAULT NOW()
--); 

INSERT INTO sites (url) VALUES ('site1.com'), ('site2.com'); 
INSERT INTO checks (site_id, status_code) VALUES (1, 200), (1, 404), (1, 500); 
INSERT INTO checks (site_id, status_code) VALUES (2, 200), (2, 404), (2, 500); 


SELECT * FROM sites; 
SELECT * FROM checks; 

SELECT sites.url, checks.status_code, checks.checked_at
FROM sites
JOIN checks ON sites.id = checks.site_id
WHERE status_code !=200
ORDER BY checks.checked_at DESC; 


SELECT sites.url, COUNT(checks.id) AS total_checks
FROM sites
JOIN checks ON sites.id = checks.site_id 
WHERE status_code !=200
GROUP BY sites.url;

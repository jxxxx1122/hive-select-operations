
-- Full table query
SELECT * FROM score;

-- Query specific columns
SELECT sid, cid FROM score;

-- Count total rows
SELECT COUNT(1) FROM score;

-- Query scores greater than 60
SELECT * FROM score WHERE sscore > 60;

-- Query scores between 80 and 100
SELECT * FROM score WHERE sscore BETWEEN 80 AND 100;

-- Query scores that are NULL
SELECT * FROM score WHERE sscore IS NULL;

-- Query scores equal to 80 or 90
SELECT * FROM score WHERE sscore IN (80, 90);

-- Query average score by student ID
SELECT sid, AVG(sscore) AS avg_score FROM score GROUP BY sid;

-- Query students with average score greater than 85
SELECT sid, AVG(sscore) AS avg_score FROM score GROUP BY sid HAVING avg_score > 85;

-- Order scores globally
SELECT * FROM score ORDER BY sscore;

-- Sort scores within partitions
SELECT * FROM score DISTRIBUTE BY sid SORT BY sscore;

DROP VIEW A;
DROP VIEW B;

CREATE VIEW A AS
SELECT * FROM frequency
UNION
SELECT 'q' as docid, 'washington' as term, 1 as count 
UNION
SELECT 'q' as docid, 'taxes' as term, 1 as count
UNION 
SELECT 'q' as docid, 'treasury' as term, 1 as count;

CREATE VIEW B AS
SELECT * FROM A
WHERE docid = 'q';

SELECT frequency.docid, SUM(frequency.count*B.count)
FROM frequency, B
WHERE frequency.term = B.term
GROUP BY frequency.docid
ORDER BY 2 DESC limit 10;

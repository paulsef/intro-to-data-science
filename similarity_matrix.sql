drop view A;
drop view B;
CREATE VIEW A AS
	SELECT * FROM frequency
	WHERE docid = '10080_txt_crude';
CREATE VIEW B AS
	SELECT * FROM frequency
	WHERE docid = '17035_txt_earn';
SELECT SUM(A.count*B.count)
FROM A, B
WHERE A.term = B.term;
SELECT A.row_number, B.column_number, SUM(A.value*B.value)
FROM A, B
WHERE A.column_number = B.row_number
GROUP BY A.row_number, B.column_number

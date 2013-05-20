The SQL code here is designed to implement aspects of linear alebra on a database.

multiply.sql takes a SQL database (matrix.db) with two matrices, A and B and performs matrix multiplcation on them. The matrices are sparse and of the form (row_number, col_number, value) where value = 0 has been removed. 

similarity_matrix.sql takes the reuters database which is of the form (docid, term, count) and creates a similarity matrix of two documents based on the terms found therein. (This similarity matrix is not normalized).

keyword_search treats a search term, in this case the phrase "washing taxes treasury", as a document. It then performs the same actions as similarity_matrix.sql between the phrase-as-document and the entire database and returns the top ten most similar results. 
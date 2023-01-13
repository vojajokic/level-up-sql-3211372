-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published, COUNT(DISTINCT(Title)) AS PubCount, 
  GROUP_CONCAT(DISTINCT(Title))
FROM Books
GROUP BY Published
ORDER BY PubCount DESC;

SELECT Books.Title, COUNT(Loans.LoanID) AS LoanCount
FROM Loans
JOIN Books ON Loans.BookID=Books.BookID
GROUP BY Books.Title
ORDER BY LoanCount DESC
Limit 5;
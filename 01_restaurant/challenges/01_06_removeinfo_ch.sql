-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

UPDATE Reservations SET Date = NULL WHERE ReservationID IN
(SELECT Reservations.ReservationID
FROM Reservations
JOIN Customers ON Reservations.CustomerID=Customers.CustomerID
WHERE Customers.FirstName='Norby' AND Reservations.Date > '2022-07-24')
-- Obratiti pažnju da može da postoji više termina za klijenta u budućnosti (treba brisati samo jedan!!!)
SELECT *
FROM Reservations
JOIN Customers ON Reservations.CustomerID=Customers.CustomerID
WHERE Customers.FirstName='Norby' 

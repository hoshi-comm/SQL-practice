\COPY(
WITH sales AS(
    SELECT
      date_trunc('month', i.InvoiceDate) AS month,
      g.name AS genre,
      il.Quantity * il.UnitPrice AS revenue
    FROM Invoiceline AS il
    JOIN Invoice AS i ON il.InvoiceId = i.InvoiceId
    JOIN Track AS t ON il.TrackId = t.TrackId
    JOIN Genre AS g ON t.GenreId = g.GenreId
)
SELECT month, genre, SUM(revenue) AS revenue
FROM sales
GROUP BY month, genre
ORDER BY month, genre

) TO 'export/monthly_genre_sales.csv' WITH CSV HEADER;

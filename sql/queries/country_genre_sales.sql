\copy ( 
WITH sales AS (
  SELECT
    c.country AS country,
    g.name    AS genre,
    il.quantity * il.unitprice AS revenue
  FROM invoiceline AS il
  JOIN invoice  AS i ON i.invoiceid   = il.invoiceid
  JOIN customer AS c ON c.customerid  = i.customerid
  JOIN track    AS t ON t.trackid     = il.trackid
  JOIN genre    AS g ON g.genreid     = t.genreid
)
SELECT
  country,
  genre,
  SUM(revenue) AS revenue
FROM sales
GROUP BY country, genre

) TO 'export/country_genre_revenue.csv' WITH CSV HEADER;
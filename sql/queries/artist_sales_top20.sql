\copy (
WITH sales AS(
    SELECT
    il.unitprice * il.quantity AS revenue,
    ar.name AS Artist

    FROM invoiceline AS il
    JOIN invoice  AS i ON i.invoiceid   = il.invoiceid
    JOIN track    AS t ON t.trackid     = il.trackid
    JOIN genre    AS g ON g.genreid     = t.genreid
    JOIN album   AS al ON al.albumid  = t.albumid
    JOIN artist  AS ar ON ar.artistid = al.artistid

)
SELECT 
Artist,SUM(revenue) AS total_revenue
FROM sales
GROUP BY Artist
ORDER BY total_revenue DESC
LIMIT 20

) TO 'export/artist_sales_top20.csv' WITH CSV HEADER;
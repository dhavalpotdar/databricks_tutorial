-- Databricks notebook source
-- Which artists released the most songs each year?
SELECT
  artist_name,
  count(artist_name)
AS
  num_songs,
  year
FROM
  songs_data
WHERE
  year > 0
GROUP BY
  artist_name,
  year
ORDER BY
  num_songs DESC,
  year DESC;

-- COMMAND ----------

 -- Find songs for your DJ list
 SELECT
   artist_name,
   title,
   tempo
 FROM
   songs_data
 WHERE
   time_signature = 4
   AND
   tempo between 100 and 140;

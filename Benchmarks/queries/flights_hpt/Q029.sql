SELECT
  ##TAB##.carrier_name as key0,
  AVG(##TAB##.depdelay) AS x,
  AVG(##TAB##.arrdelay) AS y,
  COUNT(*) AS size
FROM
  ##TAB##
WHERE
  (
    (
      ##TAB##.dep_timestamp_9 >= TIMESTAMP(9) '1996-07-26 16:30:06.000000000'
      AND ##TAB##.dep_timestamp_9 < TIMESTAMP(9) '1997-05-16 16:30:06.000000000'
    )
  )
GROUP BY
  key0
ORDER BY
  size DESC
LIMIT
  50

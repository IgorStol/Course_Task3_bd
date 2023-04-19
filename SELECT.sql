SELECT COUNT(*)
  FROM albums
  INNER JOIN treacks ON albums.alb_id = treacks.alb_id
  where alb_release BETWEEN '2019-01-01'::date AND '2020-12-31'::date

SELECT mus_name 
FROM musicians  
WHERE mus_name NOT IN ( 
    SELECT mus_name 
    FROM musicians 
    INNER JOIN mus_alb ON mus_alb.mus_id = musicians.mus_id
  	INNER JOIN albums ON albums.alb_id = mus_alb.alb_id 
    WHERE alb_release BETWEEN '2020-01-01'::date AND '2020-12-31'::date
);

SELECT alb_name, AVG(treacks.tr_duration)
  FROM albums
  INNER JOIN treacks ON albums.alb_id = treacks.alb_id
  GROUP BY alb_name;

SELECT DISTINCT mus_name
  FROM musicians
  INNER JOIN mus_alb ON mus_alb.mus_id = musicians.mus_id
  INNER JOIN albums ON albums.alb_id = mus_alb.alb_id
  WHERE alb_release >= '2021-01-01'::date OR alb_release <= '2019-12-31'::date;

SELECT DISTINCT Com_Name FROM COMPILATION, MUSICIANS, MUS_ALB, ALBUMS, TREACKS, COM_TREACKS
  WHERE (MUSICIANS.MUS_NAME = 'The Smiths')
  AND (MUSICIANS.MUS_ID = MUS_ALB.MUS_ID)
  AND (MUS_ALB.ALB_ID = ALBUMS.ALB_ID)
  AND (ALBUMS.ALB_ID = TREACKS.ALB_ID)
  AND (TREACKS.TR_ID = COM_TREACKS.TR_ID)
  AND (COM_TREACKS.COM_ID = COMPILATION.COM_ID)

SELECT DISTINCT alb_name 
	FROM albums 
	INNER JOIN mus_alb ON mus_alb.alb_id = albums.alb_id
	INNER JOIN musicians ON musicians.mus_id = mus_alb.mus_id 
	INNER JOIN gen_mus ON gen_mus.mus_id = musicians.mus_id 
	GROUP BY alb_name, gen_mus.mus_id  
	HAVING COUNT(gen_mus.gen_id) > 1;

SELECT ALB_NAME FROM
  (SELECT ALBUMS.ALB_NAME, COUNT(GENRES.GEN_ID) AS GEN_COUNT FROM ALBUMS, MUSICIANS, MUS_ALB, GEN_MUS, GENRES
  WHERE (ALBUMS.ALB_ID = MUS_ALB.ALB_ID)
    AND (MUS_ALB.MUS_ID = MUSICIANS.MUS_ID)
    AND (MUSICIANS.MUS_ID = GEN_MUS.MUS_ID)
    AND (GEN_MUS.GEN_ID = GENRES.GEN_ID)
    GROUP BY ALB_NAME) AS t
WHERE GEN_COUNT > 1;

SELECT tr_name
  FROM treacks
  LEFT JOIN com_treacks ON com_treacks.tr_id = treacks.tr_id
  LEFT JOIN compilation ON compilation.com_id = com_treacks.tr_id
  WHERE com_name IS NULL;

SELECT Mus_Name FROM Musicians, Albums, Mus_Alb, TREACKS
  WHERE (TR_DURATION = (SELECT MIN(TR_DURATION) FROM TREACKS))
  AND (TREACKS.Alb_ID = Albums.Alb_ID)
  AND (Albums.Alb_ID = Mus_Alb.Alb_ID)
  AND (Mus_Alb.Mus_ID = Musicians.Mus_ID);

SELECT ALB_NAME FROM
  (SELECT ALB_NAME, COUNT(TR_NAME) AS TR_COUNT FROM ALBUMS, TREACKS
  WHERE TREACKS.ALB_ID = ALBUMS.ALB_ID
  GROUP BY ALB_NAME) AS t
    where TR_COUNT = (SELECT MIN(TR_COUNT) FROM (SELECT ALB_NAME, COUNT(TR_NAME) AS TR_COUNT FROM ALBUMS, TREACKS
    WHERE TREACKS.ALB_ID = ALBUMS.ALB_ID
    GROUP BY ALB_NAME) AS t)

SELECT ALB_NAME
FROM albums JOIN treacks ON treacks.alb_id = albums.alb_id
GROUP BY albums.alb_id
HAVING COUNT(tr_name) = (
    SELECT COUNT(tr_name) FROM treacks
    GROUP BY albums.alb_id
    ORDER BY 1
    LIMIT 1
);









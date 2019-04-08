INSERT INTO 300_imdb_titles_hub_titles
SELECT DISTINCT
	MD5(CONCAT(
		COALESCE(TRIM(UPPER(originalTitle)),''), '|',
		COALESCE(TRIM(UPPER(startYear)),'')
	)) 300_IMDB_TITLES_HUB_TITLES_HKEY,
	? BATCH_ID,
	LOAD_DATETIME,
	RECORD_SOURCE,
	originalTitle,
	startYear
FROM pandora.200_tximdb_titles_basics
WHERE titleType IN ('short','video','movie','tvMovie','tvSpecial')
AND NOT EXISTS(
	SELECT 1
	FROM 300_imdb_titles_hub_movie
	WHERE 300_imdb_titles_hub_movie.originalTitle =
			200_tximdb_title_basics.originalTitle
	AND 300_imdb_titles_hub_movie.startYear =
			200_tximdb_title_basics.startYear
)
AND LOAD_DATETIME = '${LOAD_DATETIME}'
drop database if exists pandora;
create database pandora;
CREATE TABLE pandora.200_txtimdb_titles_basics
(
  tconst VARCHAR(9)
, titleType VARCHAR(50)
, primaryTitle VARCHAR(2000)
, originalTitle VARCHAR(2000)
, isAdult TINYINT
, startYear VARCHAR(50)
, endYear VARCHAR(50)
, runtimeMinutes VARCHAR(100)
, genres VARCHAR(500)
, load_datetime DATETIME(6)
, load_source TINYTEXT
);

CREATE TABLE pandora.200_txtimdb_titles_akas
(
  titleId VARCHAR(9)
, ordering BIGINT
, title MEDIUMTEXT
, region VARCHAR(100)
, language VARCHAR(100)
, types VARCHAR(50)
, attributes VARCHAR(200)
, isOriginalTitle TINYINT
, load_datetime DATETIMe(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.200_txtimdb_titles_names
(
  nconst VARCHAR(100)
, primaryName VARCHAR(1000)
, birthYear VARCHAR(100)
, deathYear VARCHAR(100)
, primaryProfession VARCHAR(1000)
, knownForTitles VARCHAR(1000)
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.200_txtimdb_titles_crew
(
  tconst VARCHAR(100)
, directors TEXT
, writers TEXT
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.200_txtimdb_titles_episodes
(
  tconst VARCHAR(100)
, parentTconst VARCHAR(100)
, seasonNumber VARCHAR(100)
, episodeNumber VARCHAR(100)
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.200_txtimdb_titles_principals
(
  tconst VARCHAR(100)
, ordering BIGINT
, nconst VARCHAR(100)
, category VARCHAR(1000)
, job VARCHAR(1000) 
, characters TEXT
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.200_txtimdb_titles_ratings
(
  tconst VARCHAR(100)
, averageRating DOUBLE
, numVotes BIGINT
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
drop database if exists pandora;
create database pandora;
CREATE TABLE pandora.titles
(
  tconst VARCHAR(9)
, titleType VARCHAR(5)
, primaryTitle VARCHAR(200)
, originalTitle VARCHAR(200)
, isAdult BIGINT
, startYear VARCHAR(15)
, endYear VARCHAR(15)
, runtimeMinutes VARCHAR(5)
, genres VARCHAR(25)
, load_time DATETIME(6)
, load_source TINYTEXT
);

CREATE TABLE pandora.titles_akas
(
  titleId VARCHAR(9)
, ordering BIGINT
, title VARCHAR(200)
, region VARCHAR(3)
, language VARCHAR(5)
, types VARCHAR(11)
, attributes VARCHAR(200)
, isOriginalTitle BIGINT
, load_datetime DATETIMe(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.names
(
  nconst VARCHAR(9)
, primaryName VARCHAR(100)
, birthYear VARCHAR(4)
, deathYear VARCHAR(4)
, primaryProfession VARCHAR(100)
, knownForTitles VARCHAR(100)
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.crew
(
  tconst VARCHAR(9)
, directors VARCHAR(100)
, writers VARCHAR(100)
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.episodes
(
  tconst VARCHAR(9)
, parentTconst VARCHAR(9)
, seasonNumber VARCHAR(5)
, episodeNumber VARCHAR(5)
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.principals
(
  tconst VARCHAR(9)
, ordering BIGINT
, nconst VARCHAR(9)
, category VARCHAR(15)
, job VARCHAR(100)
, characters TEXT
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
CREATE TABLE pandora.ratings
(
  tconst VARCHAR(9)
, averageRating DOUBLE
, numVotes BIGINT
, load_datetime DATETIME(6)
, load_source TINYTEXT
)
;
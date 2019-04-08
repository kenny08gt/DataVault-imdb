-- create schema pandora;
use pandora;
show tables;
select * from ibdm_titles;
describe names;
select * from names;
show tables;
select * from titles_akas;
select * from crew;
select * from episodes;
select * from principals;
drop table ratings;
select * from ratings;

select e.* from episodes e join ratings r on r.tconst = e.tconst;

SELECT
  (SELECT COUNT(*) FROM 200_txtimdb_titles_crew ) as crew_count,
  (SELECT COUNT(*) FROM 200_txtimdb_titles_episodes) as episodes_count,
  (SELECT COUNT(*) FROM 200_txtimdb_titles_names) as names_count,
  (SELECT COUNT(*) FROM 200_txtimdb_titles_principals) as principals_count,
  (SELECT COUNT(*) FROM 200_txtimdb_titles_ratings) as ratings_count,
  (SELECT COUNT(*) FROM 200_txtimdb_titles_basics) as titles_count,
  (SELECT COUNT(*) FROM 200_txtimdb_titles_akas) as akas_count;
  
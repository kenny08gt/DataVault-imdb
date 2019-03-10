create schema pandora;
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

SELECT
  (SELECT COUNT(*) FROM crew ) as crew_count, 
  (SELECT COUNT(*) FROM episodes) as episodes_count,
  (SELECT COUNT(*) FROM names) as names_count,
  (SELECT COUNT(*) FROM principals) as principals_count,
  (SELECT COUNT(*) FROM ratings) as ratings_count,
  (SELECT COUNT(*) FROM titles) as titles_count,
  (SELECT COUNT(*) FROM titles_akas) as akas_count;
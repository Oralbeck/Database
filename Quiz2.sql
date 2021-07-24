--Part1
--Task 2
-- (D) There are 3 equal to tuples(2,5,3);(1,2,3);(4,5,6).But there are only (2,5,3) answers
--Task 4
-- (B) Because in first loan number is null and null=null is null therefore the first will not affect
--Task 5
-- (C) Because sum of b is equal to 10 but c is equal to 9
--Task 1
-- (C) Because only in this case BCD has are equal with one row from S
--Task 3
-- (A) I don't know why , but my mind say me choose A )))



--Part2
--Task 6
select title , avg (stars) from Movie t1 left join Rating t2 on t1.mId=t2.mID
group by title order by avg(stars) desc,title
--Task 7
select distinct on(t1.mID,t2.stars) t1.title , t2.stars
from Movie t1 left join Rating t2 on t1.mID = t2.mID order by title , stars
--Task 8
select name from Reviewer where rID in (select distinct rIDfrom Rating where ratingDate is null)
--Task 9
create materialized view noRatingMovies as select title from Movie where mID not in(select mID from Rating)
--Task 10
create user postgres with encrypted password 'postges';
grant select on noRatingMovies to postgres;
grant update on noRatingMovies to postgres;
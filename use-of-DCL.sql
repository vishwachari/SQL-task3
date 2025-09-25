use library_db;

-- 1) select * (everything)
select * from books;

-- select specific columns
select title, isbn, published_year, copies from books;

-- where = and in
select * from books where published_year = 1997;
select * from books where author_id in (1,2,3);

-- and / or
select title, copies
from books
where copies > 1 and published_year >= 1990;

select title, published_year
from books
where published_year is null or author_id is null;

-- like
select title from books where title like '%guide%';

-- between
select title, published_year from books where published_year between 1940 and 2005;

-- order by
select title, published_year from books order by published_year desc;
select name, joined_date from members order by joined_date asc;

-- limit and offset
-- get top 5 most recently joined members
select * from members order by joined_date desc limit 5;

-- limit and offset
select * from books order by book_id asc limit 2, 3;

-- distinct
select distinct published_year from books;
select title as book_title, copies as stock from books;

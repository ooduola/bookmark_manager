## How to create a table

CREATE TABLE bookmarks (id serial PRIMARY KEY, url VARCHAR (60)) ;

## How to list any existing rows in the bookmarks table

=# SELECT * FROM bookmarks ;

## How to instert into the table

=# INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com'), ('http://askjeeves.com'), 
('http://twitter.com'),('http://www.google.com') ;


## How to delete from a row from the table using id. (select row you want to delete example below id = 3)

=# DELETE FROM bookmarks WHERE id = 3 ;

## How to update a table 

=# UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE id = 2 ;
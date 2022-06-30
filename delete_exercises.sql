USE codeup_test_db;

SELECT * FROM albums;

SELECT * From albums WHERE release_date > 1991;
DELETE From albums WHERE release_date > 1991;

SELECT * FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';

SELECT * FROM albums WHERE artist = 'Whitney Houston / Various artists';
DELETE FROM albums WHERE artist = 'Whitney Houston / Various artists';


# Albums released after 1991
# Albums with the genre 'disco'
# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
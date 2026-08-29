Table: Movies

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| movie_id      | int     |
| title         | varchar |
+---------------+---------+
movie_id is the primary key (column with unique values) for this table.
title is the name of the movie.
Each movie has a unique title.
Table: Users

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| name          | varchar |
+---------------+---------+
user_id is the primary key (column with unique values) for this table.
The column 'name' has unique values.
Table: MovieRating

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| movie_id      | int     |
| user_id       | int     |
| rating        | int     |
| created_at    | date    |
+---------------+---------+
(movie_id, user_id) is the primary key (column with unique values) for this table.
This table contains the rating of a movie by a user in their review.
created_at is the user's review date. 
 

Write a solution to:

Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.


Solution:

SELECT
    (
        SELECT u.name
        FROM MovieRating mr
        JOIN Users u ON u.user_id = mr.user_id
        GROUP BY mr.user_id
        ORDER BY COUNT(*) DESC, u.name ASC
        LIMIT 1
    ) AS results

UNION ALL

SELECT
    (
        SELECT m.title
        FROM MovieRating mr
        JOIN Movies m ON m.movie_id = mr.movie_id
        WHERE mr.created_at >= '2020-02-01' AND mr.created_at <= '2020-02-29'
        GROUP BY mr.movie_id
        ORDER BY AVG(mr.rating) DESC, m.title ASC
        LIMIT 1
    );

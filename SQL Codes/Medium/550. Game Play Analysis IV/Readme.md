# Game Play Analysis IV — Next-Day Retention Fraction

## Problem
Given an Activity table recording player logins (player_id, device_id, event_date, games_played), report the fraction of players who logged in again on the day immediately following their first login, rounded to 2 decimal places.

## Table Schema

Column	         |           Type	                 |     Description

player_id	       |             int	               |      Player identifier 

device_id	       |             int	               |         Device used

event_date	     |             date	               |       Date of login/activity

games_played	   |             int	               |        Games played before logout (may be 0)

Primary key: (player_id, event_date) — each player has at most one record per day.

## Approach

Find each player's first login date using MIN(event_date) grouped by player_id.

Self-join back to Activity where event_date = first_date + 1 day to identify next-day returns.

Numerator: count distinct players who returned the next day.

Denominator: count distinct players in the table.

Divide and round to 2 decimal places.

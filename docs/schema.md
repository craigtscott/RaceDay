# Schema
## users
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
username         | string    | not null, indexed, unique
name             | string    | not null, indexed
email            | string    | not null, indexed, unique
phone            | string    | not null
password_digest  | string    | not null
session_token    | string    | not null, unique
  * **has_many** races
  * **has_many** teams

## teams
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
name             | string    | not null, indexed
logo             | string    |
  * **has_many** races
  * **has_many** users [through team members]

## team_members
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
team_id          | string    | not null, indexed
user_id          | string    | not_null
  * **has_many** races
  * **has_many** users

## races
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
name             | string    | not null, indexed
date             | string    | not null, indexed
track            | string    | not null
team_id          | integer   | not null
  * **belongs_to** team
  * **has_many** checkpoints
  * **has_many** race_members

## race_members
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
team_id          | integer   | not null, indexed
user_id          | integer   | not null, indexed
race_id          | integer   | not null, indexed
bib_number       | string    | not null, indexed
type             | string    | not null, indexed
  * **belongs_to** race
  * **belongs_to** team
  * **has_many** users [through team members]

## checkpoints
column name      | data type | details
-----------------|-----------|--------
id               | integer   | not null, primary key
name             | string    | not_null, indexed
race_id          | string    | not null, indexed
coordinates      | string    | not_null
place_in_race    | integer   | not_null
  * **belongs_to** race
  * **belongs_to** team [through race]

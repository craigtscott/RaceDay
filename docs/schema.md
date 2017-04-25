# Schema

* bib number
  * race_id
  * user_id
  * bib number (indexed)

* Checkpoints
  * race_id
  * name unique to the race, but not the table; add race-name to front?

* Team Members [Join Table]
  * team_id
  * user_id
  * Team
    * has_many races
    * has_many members
    * permissions set
    * person_type: competitor, volunteer, organizer

* Race Members [Join Table]
  * team_id
  * user_id
  * race_id

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

  has_many races
  has_many teams

  ## races
  column name      | data type | details
  -----------------|-----------|--------
  id               | integer   | not null, primary key
  name             | string    | not null
  date             | string    | not null, indexed
  track            | string    | not null
  team_id          | string    | not null, unique

  belongs_to team

  has_many checkpoints
  has_many race_members

  ## team
  column name      | data type | details
  -----------------|-----------|--------
  id               | integer   | not null, primary key
  name             | string    | not null, indexed
  logo             | string    |

  has_many races
  has_many users [through team members]

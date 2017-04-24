# Schema
  * Races
    * Name
    * Date
    * team_id

    * has_many Checkpoints
    * has_many Competitors
    * has many Coaches/Volunteers

    * belongs_to Head Coach/ Organizer
    * belongs_to team
    * can't add to race if race has passed

  * bib number
    * race_id
    * user_id
    * bib number (indexed)

  * Checkpoints
    * race_id
    * name unique to the race, but not the table; add race-name to front?


  * Team
    * has_many races
    * has_many members
    * permissions set
    * person_type: competitor, volunteer, organizer

  * Team Members [Join Table]
    * team_id
    * user_id

  * Race Members [Join Table]
    * team_id
    * user_id
    * race_id

  * Users
    * username
    * password_digest
    * session_token
    * has_many races through race_org
    * belongs_to team



    ## users
    column name      | data type | details
    -----------------|-----------|--------
    id               | integer   | not null, primary key
    username         | string    | not null, indexed, unique
    email            | string    | not null, indexed, unique
    name             | string    | not null, indexed
    password_digest  | string    | not null
    session_token    | string    | not null, unique


    ## recipes
    column name      | data type | details
    -----------------|-----------|--------
    id               | integer   | not null, primary key
    name             | string    | not null, indexed
    tag_id           | integer   | not null, indexed
    directions       | text      | not null
    image_url        | string    | not null
    user_id          | integer   | not null, indexed
    ingredients      |text       | not null

    belongs_to user
    belongs_to tag

    ## tags
    column name      | data type | details
    -----------------|-----------|--------
    id               | integer   | not null, primary key
    name             | string    | not null, indexed
    img              | string    | not null

    ## comments
    column name      | data type | details
    -----------------|-----------|--------
    id               | integer   | not null, primary key
    description      | string    | not null, indexed
    recipe_id        | integer   | not null, indexed
    user_id          | integer   | not null, indexed

    belongs_to user
    belongs_to recipe

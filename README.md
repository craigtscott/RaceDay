# Flow
  1. Head coach creates a route/race
  2. Head coach adds checkpoints (w/ unique names for race)
  3. Head coach emails volunteers/coaches to sign up for race (includes race link)
  4. Head coach emails competitors with link to signup/login
  5. Volunteers sign up
  6. Competitors signup and log bib names
  7. Race starts
    * volunteer/coach locations auto log
    * volunteer/coach dropdown for tracks they are in charge of (bicyclists etc.)
  8. Intervals are logged

# Ideas
  * Checkpoints/Waterstops uniquely named for race
  * tracks coaches within 10ft
  * Coach dropdown for what track they are logging
  * Intervals?

# Potential technologies
  * Rails
  * React.js
  * Swyft/React Native
  * Voice technology
  * Google Maps
  * Pacing?

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

  * Permissions
    * organizers
      * set permissions
      * create checkpoints
    * volunteers
      * update competitor checkpoint pass
      * change their checkpoint
    * competitors

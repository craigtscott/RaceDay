# User Flow
## Adding Race Members to Races
### Steps
  1. Coach sends out link to Race
  2. User clicks on "Enter Race" button
  3. "Enter Race" button adds User to Race Members
  4. Race controller **update function** handling:
    * checks if User type is a competitor or a coach
    * if a competitor can only add self to a race
    * if a coach can update checkpoints as well as add team memebers to race

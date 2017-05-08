# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  { username: 'coach1', name: 'Joe Bob1', email: 'joe1@compuserve.com', password: 'password'},
  { username: 'coach2', name: 'Joe Bob2', email: 'joe2@compuserve.com', password: 'password'},
  { username: 'coach3', name: 'Joe Bob3', email: 'joe3@compuserve.com', password: 'password'},
  { username: 'person1', name: 'Ann Bob1', email: 'ann1@compuserve.com', password: 'password'},
  { username: 'person2', name: 'Ann Bob2', email: 'ann2@compuserve.com', password: 'password'},
  { username: 'person3', name: 'Ann Bob3', email: 'ann3@compuserve.com', password: 'password'},
  { username: 'person4', name: 'Ann Bob4', email: 'ann4@compuserve.com', password: 'password'},
  { username: 'person5', name: 'Ann Bob5', email: 'ann5@compuserve.com', password: 'password'},
              ])

Team.create!([
  { name: 'Team 1'},
  { name: 'Team 2'},
  { name: 'Team 3'}
  ])

Race.create!([
  { name: 'race1', date: Date.new(2021, 01, 01), track: 'track', team_id: 1 },
  { name: 'race2', date: Date.new(2022, 02, 02), track: 'track', team_id: 1 },
  { name: 'race3', date: Date.new(2023, 03, 03), track: 'track', team_id: 1 },
  { name: 'race4', date: Date.new(2024, 04, 04), track: 'track', team_id: 2 },
  { name: 'race5', date: Date.new(2025, 05, 05), track: 'track', team_id: 3 }
            ])

TeamMember.create!([
  { team_id: 1, user_id: 1 },
  { team_id: 1, user_id: 4 },
  { team_id: 1, user_id: 5 },
  { team_id: 1, user_id: 6 },
  { team_id: 2, user_id: 2 },
  { team_id: 2, user_id: 5 },
  { team_id: 2, user_id: 6 },
  { team_id: 2, user_id: 7 },
  { team_id: 3, user_id: 3 },
  { team_id: 3, user_id: 6 },
  { team_id: 3, user_id: 7 },
  { team_id: 3, user_id: 8 }
                    ])

RaceMember.create!([
  {team_id: 1, user_id: 1, race_id: 1, bib_number: 0000, classification: 'coach'},
  {team_id: 1, user_id: 4, race_id: 1, bib_number: 0004, classification: 'competitor'},
  {team_id: 1, user_id: 5, race_id: 1, bib_number: 0005, classification: 'competitor'},
  {team_id: 1, user_id: 6, race_id: 1, bib_number: 0006, classification: 'competitor'},
  {team_id: 2, user_id: 2, race_id: 2, bib_number: 0000, classification: 'coatch'},
  {team_id: 2, user_id: 5, race_id: 2, bib_number: 0005, classification: 'competitor'},
  {team_id: 2, user_id: 6, race_id: 2, bib_number: 0006, classification: 'competitor'},
  {team_id: 2, user_id: 7, race_id: 2, bib_number: 0007, classification: 'competitor'},
  {team_id: 3, user_id: 3, race_id: 3, bib_number: 0000, classification: 'coach'},
  {team_id: 3, user_id: 6, race_id: 3, bib_number: 0006, classification: 'competitor'},
  {team_id: 3, user_id: 7, race_id: 3, bib_number: 0007, classification: 'competitor'},
  {team_id: 3, user_id: 8, race_id: 3, bib_number: 1008, classification: 'competitor'}
  ])

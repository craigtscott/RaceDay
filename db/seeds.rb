# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
            {username: 'coach1', name: 'Joe Bob1', email: 'joe1@compuserve.com'},
            {username: 'coach2', name: 'Joe Bob2', email: 'joe2@compuserve.com'},
            {username: 'coach3', name: 'Joe Bob3', email: 'joe3@compuserve.com'},
            {username: 'person1', name: 'Ann Bob1', email: 'ann1@compuserve.com'},
            {username: 'person2', name: 'Ann Bob2', email: 'ann2@compuserve.com'},
            {username: 'person3', name: 'Ann Bob3', email: 'ann3@compuserve.com'},
            {username: 'person4', name: 'Ann Bob4', email: 'ann4@compuserve.com'},
            {username: 'person5', name: 'Ann Bob5', email: 'ann5@compuserve.com'},
            ])

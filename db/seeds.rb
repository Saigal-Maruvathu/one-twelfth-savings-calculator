# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  [ "harry", "potter", "harrypotter@email.com", "password" ],
  [ "busta", "rhymes", "bustarhymes@email.com", "password" ],
  [ "serena", "williams", "serenawilliams@email.com", "password" ],
  [ "barack", "obama", "barackobama@email.com", "password" ]
]

user_list.each do |fname, lname, email, encrypted_password|
    User.create( fname: fname, lname: lname, email: email, password: encrypted_password)
end

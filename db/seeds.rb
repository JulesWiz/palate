# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create ([
  {
    email:                 "test@example.com",
    password:              "123",
    password_confirmation: "123",
    first_name:            "Jules",
    last_name:             "Wiz",
    description:           "I love shopping",
    facebook:              "JulesWiz",
    mobile_number:         "73827832",
    street_address1:       "3892, Vandelay Building",
    street_address2:       "Cantosian Street",
    city:                  "Kowloon",
    country:               "Hong Kong"
  }
])
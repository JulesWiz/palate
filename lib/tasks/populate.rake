require 'populator'
require 'faker'

namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do

    # [User].each(&:delete_all)

    User.populate 5 do |user|
      user.email                  = Faker::Internet.email
      user.password               = "123"
      user.password_confirmation  = "123"
      user.first_name             = Faker::Name.first_name
      user.last_name              = Faker::Name.last_name
      user.description            = Faker::Lorem.sentence
      user.facebook               = Faker::Internet.user_name
      user.mobile_number          = Faker::PhoneNumber.cell_phone
      user.street_address1        = Faker::Address.street_address
      user.street_address2        = Faker::Address.secondary_address
      user.city                   = Faker::Address.city
      user.country                = Faker::Address.country
    end
  end
end
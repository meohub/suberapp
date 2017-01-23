# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Something is wrong with the following thingy by "Admin"
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email

User.create!([
                 {
                     email: "ali.ihsan.tertemiz@gmail.com",
                     encrypted_password: "$2a$11$VQi2TtR/K/3uaENi4Ml0seOKPBEkjC/bnZVkxEkHF0PjOGgxZQVg2",
                     reset_password_token: nil,
                     reset_password_sent_at: nil,
                     remember_created_at: nil,
                     sign_in_count: 1,
                     current_sign_in_at: "2017-01-22 02:54:00",
                     last_sign_in_at: "2017-01-22 02:54:00",
                     current_sign_in_ip: "127.0.0.1",
                     last_sign_in_ip: "127.0.0.1",
                     name: "Ali Ihsan Tertemiz",
                     confirmation_token: "-SC8i2s8Dbe732MSHsNQ",
                     confirmed_at: "2017-01-22 02:53:53",
                     confirmation_sent_at: "2017-01-22 02:53:45",
                     unconfirmed_email: nil,
                     role: "admin",
                     invitation_token: nil,
                     invitation_created_at: nil,
                     invitation_sent_at: nil,
                     invitation_accepted_at: nil,
                     invitation_limit: nil,
                     invited_by_type: nil,
                     invited_by_id: nil,
                     invitations_count: 0,
                     password: "marlon",
                     password_confirmation: "marlon"
                 }
             ])

# Fill up the contacts table with lovely people
Contact.create!(
    name: "Mehmet",
    surname: "Ozgul",
    phone_number: "4044140010",
    email: "lemehmet@gmail.com",
    address: "116 Pattillo Way",
    city: "Decatur",
    zip: "30030",
    state: "GA",
    country: "USA",
    notes: "A very fantastic person",
    created_at: Time.zone.now,
    updated_at: Time.zone.now
)

#Required by the Faker
# I18n.reload!

500.times do |n|

  Contact.create(
      name: Faker::Name.first_name,
      surname: Faker::Name.last_name,
      phone_number: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      address: Faker::Address.street_address,
      city: Faker::Address.city,
      zip: Faker::Address.zip_code,
      state: Faker::Address.state_abbr.to_s,
      country: "USA",
      notes: Faker::ChuckNorris.fact
  )
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# User.create!([
#                  {
#                      email: "ali.ihsan.tertemiz@gmail.com",
#                      encrypted_password: "$2a$11$VQi2TtR/K/3uaENi4Ml0seOKPBEkjC/bnZVkxEkHF0PjOGgxZQVg2",
#                      reset_password_token: nil,
#                      reset_password_sent_at: nil,
#                      remember_created_at: nil,
#                      sign_in_count: 1,
#                      current_sign_in_at: "2017-01-22 02:54:00",
#                      last_sign_in_at: "2017-01-22 02:54:00",
#                      current_sign_in_ip: "127.0.0.1",
#                      last_sign_in_ip: "127.0.0.1",
#                      name: "Ali Ihsan Tertemiz",
#                      confirmation_token: "-SC8i2s8Dbe732MSHsNQ",
#                      confirmed_at: "2017-01-22 02:53:53",
#                      confirmation_sent_at: "2017-01-22 02:53:45",
#                      unconfirmed_email: nil,
#                      role: "admin",
#                      invitation_token: nil,
#                      invitation_created_at: nil,
#                      invitation_sent_at: nil,
#                      invitation_accepted_at: nil,
#                      invitation_limit: nil,
#                      invited_by_type: nil,
#                      invited_by_id: nil,
#                      invitations_count: 0,
#                      password: "marlon",
#                      password_confirmation: "marlon"
#                  }
#              ])

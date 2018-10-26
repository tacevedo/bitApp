# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Exchange.destroy_all
Currency.destroy_all
Historic.destroy_all
5.times do |i|
   u = User.create!(email: "email#{i}@gmail.com", password:"123456" )
   puts "user listo #{u.id}"
   e = Exchange.create!(name: "exchange #{i}", url: "url/echange#{i}")
   puts "ex listo"
   c = Currency.create!(name: "currencie #{i}")
   puts "curren listo"
   5.times do |j|
     # h= Historic.create(date: Time.now, value: 1000, users: u, exchanges: e, currencies: c)
     #  h.save!

     # h = Historic.new(date: Time.now, value: 1000)
     # h.users << u
     # h.exchanges << e
     # h.currencies << c
     # h.save

   end
#
# u.save!
# e.save!
# c.save!
# h.save!
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

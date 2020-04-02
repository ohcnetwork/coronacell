# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@gmail.com", password: "pass123", password_confirmation: "pass123", role: :admin)
pan1 = Panchayat.create(name: "Pan 1")
pan2 = Panchayat.create(name: "Pan 2")
User.create(email: "pan1@gmail.com", password: "pass123", password_confirmation: "pass123", role: :panchayat_admin, panchayat_id: pan1.id)

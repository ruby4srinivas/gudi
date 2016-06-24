# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.
Country.find_or_create_by(country_name: 'India')
puts 'default Country created'
State.find_or_create_by(state_name: 'Andhra Pradesh',state_id: 28, country_id: 1)
State.find_or_create_by(state_name: 'Telengana',state_id: 29, country_id: 1)
puts 'default states created'
District.find_or_create_by(district_name: 'Adilabad',district_id: 532, state_id: 29)
District.find_or_create_by(district_name: 'Nizamabad',district_id: 533, state_id: 29)
District.find_or_create_by(district_name: 'Karimnagar',district_id: 534, state_id: 29)
District.find_or_create_by(district_name: 'Medak',district_id: 535, state_id: 29)
puts 'default districts created'
SubDistrict.find_or_create_by(sub_district_name: 'Tamsi',sub_district_id: 4305, district_id: 532)
SubDistrict.find_or_create_by(sub_district_name: 'Jainad',sub_district_id: 4307, district_id: 532)
SubDistrict.find_or_create_by(sub_district_name: 'Bela',sub_district_id: 4308, district_id: 532)
SubDistrict.find_or_create_by(sub_district_name: 'Talamadugu',sub_district_id: 4309, district_id: 532)
SubDistrict.find_or_create_by(sub_district_name: 'Gudihathnoor',sub_district_id: 4310, district_id: 532)

SubDistrict.find_or_create_by(sub_district_name: 'Ranjal',sub_district_id: 4357, district_id: 533)
SubDistrict.find_or_create_by(sub_district_name: 'Navipet',sub_district_id: 4358, district_id: 533)
SubDistrict.find_or_create_by(sub_district_name: 'Nandipet',sub_district_id: 4359, district_id: 533)
SubDistrict.find_or_create_by(sub_district_name: 'Armur',sub_district_id: 4360, district_id: 533)
SubDistrict.find_or_create_by(sub_district_name: 'Balkonda',sub_district_id: 4361, district_id: 533)


SubDistrict.find_or_create_by(sub_district_name: 'Ibrahimpatnam',sub_district_id: 4393, district_id: 534)
SubDistrict.find_or_create_by(sub_district_name: 'Mallapur',sub_district_id: 4394, district_id: 534)
SubDistrict.find_or_create_by(sub_district_name: 'Raikal',sub_district_id: 4395, district_id: 534)
SubDistrict.find_or_create_by(sub_district_name: 'Sarangapur',sub_district_id: 4396, district_id: 534)
SubDistrict.find_or_create_by(sub_district_name: 'Dharmapuri',sub_district_id: 4397, district_id: 534)


SubDistrict.find_or_create_by(sub_district_name: 'Kangti',sub_district_id: 4450, district_id: 535)
SubDistrict.find_or_create_by(sub_district_name: 'Manoor',sub_district_id: 4451, district_id: 535)
SubDistrict.find_or_create_by(sub_district_name: 'Narayankhed',sub_district_id: 4452, district_id: 535)
SubDistrict.find_or_create_by(sub_district_name: 'Kalher',sub_district_id: 4453, district_id: 535)
SubDistrict.find_or_create_by(sub_district_name: 'Shankarampet (A)',sub_district_id: 4454, district_id: 535)
puts 'default sub districts created'
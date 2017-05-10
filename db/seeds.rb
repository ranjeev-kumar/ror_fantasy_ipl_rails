# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Franchise.create(name: 'DD', owner_name: 'Delhi', captain: 'Zaheer Khan')
Franchise.create(name: 'KXIP', owner_name: 'Punjab', captain: 'Glenn Maxwell')
Franchise.create(name: 'KKR', owner_name: 'Kolkata', captain: 'Gautam Gambhir')
Franchise.create(name: 'MI', owner_name: 'Mumbai', captain: 'Rohit Sharma')
Franchise.create(name: 'RCB', owner_name: 'Banglore', captain: 'Virat Kohli')
Franchise.create(name: 'SRH', owner_name: 'Hydrabad', captain: 'David Warner')
Franchise.create(name: 'RPS', owner_name: 'Pune', captain: 'Steve Smith')
Franchise.create(name: 'GL', owner_name: 'Rajkot', captain: 'Suresh Raina')




json = ActiveSupport::JSON.decode(File.read('teams/dd.json'))
json.each do |dd|
  Player.create!(name: dd[1]['full_name'], franchise_id: 1)
end

json = ActiveSupport::JSON.decode(File.read('teams/kxip.json'))
json.each do |kxip|
  Player.create!(name: kxip[1]['full_name'], franchise_id: 2)
end

json = ActiveSupport::JSON.decode(File.read('teams/kkr.json'))
json.each do |kkr|
  Player.create!(name: kkr[1]['full_name'], franchise_id: 3)
end

json = ActiveSupport::JSON.decode(File.read('teams/mi.json'))
json.each do |mi|
  Player.create!(name: mi[1]['full_name'], franchise_id: 4)
end

json = ActiveSupport::JSON.decode(File.read('teams/rcb.json'))
json.each do |rcb|
  Player.create!(name: rcb[1]['full_name'], franchise_id: 5)
end

json = ActiveSupport::JSON.decode(File.read('teams/srh.json'))
json.each do |srh|
  Player.create!(name: srh[1]['full_name'], franchise_id: 6)
end

json = ActiveSupport::JSON.decode(File.read('teams/rps.json'))
json.each do |rps|
  Player.create!(name: rps[1]['full_name'], franchise_id: 7)
end

json = ActiveSupport::JSON.decode(File.read('teams/gl.json'))
json.each do |gl|
  Player.create!(name: gl[1]['full_name'], franchise_id: 8)
end
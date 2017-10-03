Team.delete_all()
Player.delete_all()
Manager.delete_all()
Sponsor.delete_all()

t1 = Team.create({name: 'Oilers'})
t2 = Team.create({name: 'Oilers'})
t3 = Team.create({name: 'Canucks'})
t4 = Team.create({name: 'Canucks'})

p1 = Player.create({team: t1, name: 'Wayne Gretzki'})
p2 = Player.create({team: t2, name: 'Mark Messier'})
p3 = Player.create({team: t3, name: 'Trevor Linden'})
p4 = Player.create({team: t4, name: 'Pavel Bure'})

s1 = Sponsor.create({name: 'Safeway'})
s2 = Sponsor.create({name: 'North Shore Credit Union'})

Manager.create({name: 'Frank', firm_name: 'Houston', player_id: p1.id, sponsor_id: s1.id})
Manager.create({name: 'Sam', firm_name: 'Whoppers', player_id: p3.id, sponsor_id: s2.id})



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hyde = House.create(address: "Hyde St, San Francisco, CA").valid?
fillmore = House.create(address: "Fillmore St, San Francisco, CA").valid?

fariba = Person.create(name: "Fariba", house_id: hyde.id).valid?
miad = Person.create(name: "Miad", house_id: hyde.id).valid?
omid = Person.create(name: "Omid", house_id: fillmore.id).valid?

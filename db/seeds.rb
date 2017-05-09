# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


FavouriteShow.delete_all
User.delete_all
Show.delete_all

s1 = Show.create({title:"Call of Duty", series: "3", description: "bit of an unknown", image: "placeholder.png", programmeID: "xx345490"})
s2 = Show.create({title:"Car Share", series: "2", description: "daft", image: "placeholder.png", programmeID: "xxbyt87"})
s3 = Show.create({title:"AC12", series: "5", description: "police drama", image: "placeholder.png", programmeID: "xxbyt34"})

u1 = User.create({name: "Jane"})
u2 = User.create({name: "Karen"})
u3 = User.create({name: "John"})

FavouriteShow.create({show: s1, user: u1})
FavouriteShow.create({show: s2, user: u2})
FavouriteShow.create({show: s3, user: u3})
FavouriteShow.create({show: s1, user: u3})
FavouriteShow.create({show: s2, user: u1})
FavouriteShow.create({show: s3, user: u2})
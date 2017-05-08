# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Show.delete_all
Show.create({title:"Call of Duty", series: "3", description: "bit of an unknown", image: "placeholder.png", programmeID: "xx345490"})
Show.create({title:"Car Share", series: "2", description: "daft", image: "placeholder.png", programmeID: "xxbyt87"})
Show.create({title:"AC12", series: "5", description: "police drama", image: "placeholder.png", programmeID: "xxbyt34"})
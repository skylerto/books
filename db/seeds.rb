# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Book.create(:title => "Release It!: Design and Deploy Production-Ready Software", :description => "Whether it's in Java, .NET, or Ruby on Rails, getting your application ready to ship is only half the battle. Did you design your system to survivef a sudden rush of visitors from Digg or Slashdot? Or an influx of real world customers from 100 different countries? Are you ready for a world filled with flakey networks, tangled databases, and impatient users?", :price => 37.72, :author => "Michael T. Nygard", :isbn => "0978739213", :category => "science")

Book.create(:title =>"Design Patterns: Elements of Reusable Object-Oriented Software", :description =>  "This book isn't an introduction to object-oriented technology or design. Many books already do a good job of that. This book assumes you are reasonably proficient in at least one object-oriented programming language, and you should have some experience in object-oriented design as well. You definitely shouldn't have to rush to the nearest dictionary the moment we mention types and polymorphism, or interface as opposed to implementation inheritance.On the other hand, this isn't an advanced ", :price => 74.00, :author => "Erich Gamma", :isbn => "0201633612", :category => "engineering")

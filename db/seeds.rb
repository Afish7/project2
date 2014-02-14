# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

item = Item.create([{name: "Banana", quantity: 3, price: 1.00, is_acquired: false}])
item = Item.create([{name: "Avacado", quantity: 2, price: 1.00, is_acquired: false}])
item = Item.create([{name: "Mac N Cheese", quantity: 1, price: 2.00, is_acquired: false}])
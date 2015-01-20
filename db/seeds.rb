# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#init products
3.times do |index|
  Product.create name: "site 1", url: "http://www.awwwards.com/", description: "We're a close team of creatives, designers & developers who work together to create beautiful, engaging digital experiences. Our team is specially designed to create successful, custom, innovative digital products from the initial concept through full product launch."
end

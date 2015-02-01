# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#init products

# data clear
Round.destroy_all
Product.destroy_all
User.destroy_all

#create user
admin = User.create(email: 'admin@zuiux.com', password: 'admin')
admin.confirm!

# create round
finish_round = Round.create(start_at: 1.week.ago, end_at: 1.day.ago)
turn_round = Round.create(start_at: 1.day.ago, end_at: 1.week.from_now)

product_basic_info = {
  user: admin,
  url: "http://www.awwwards.com/",
  description: "We're a close team of creatives, designers & developers who work together to create beautiful, engaging digital experiences. Our team is specially designed to create successful, custom, innovative digital products from the initial concept through full product launch."
}
# create best product
finish_round.products.create product_basic_info.merge(name: "finish rating site", best: true)

3.times do |index|
  turn_round.products.create product_basic_info.merge(name: "site #{index}")
end



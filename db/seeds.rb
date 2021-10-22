# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

group = Group.new(name: "ray and the koreas", image: "https://images1.apartments.com/i2/7OUL8eNa4oJC8QDYcrpY9PfS-eSF4Wga0NC3kGQGdhA/112/4601-pickford-st-los-angeles-ca-primary-photo.jpg?p=1")
group.save 
listing = Listing.new(
  address: "8961 Cadillac Avenue",
  group_id: 1,
  status: "pending contact",
  url: "https://www.zillow.com/homedetails/8961-Cadillac-Ave-Los-Angeles-CA-90034/20491254_zpid/"
)
listing.save
listing = Listing.new(
  address: "4650 Mascot Street",
  group_id: 1,
  status: "denied",
  url: "https://www.zillow.com/homedetails/4650-Mascot-St-Los-Angeles-CA-90019/2115431785_zpid/"
)
listing.save
listing = Listing.new(
  address: "4603 Pickford Street",
  group_id: 1,
  status: "confirmed",
  url: "https://www.apartments.com/4601-pickford-st-los-angeles-ca/bj308e8/"
)
listing.save
listing = Listing.new(
  address: "1233 S Westgate Avenue",
  group_id: 1,
  status: "pending walkthrough",
  url: "https://www.zillow.com/b/westgate-wonder-los-angeles-ca-BJmtgw/"
)
listing.save
comment = Comment.new(
  text: "real nice",
  listing_id: 1,
  user_id: 3
)
comment.save
comment = Comment.new(
  text: "i like this",
  listing_id: 1,
  user_id: 4
)
comment.save
comment = Comment.new(
  text: "apparently not interested in 4 tenants??",
  listing_id: 1,
  user_id: 4
)
comment.save
comment = Comment.new(
  text: "big place with 5 rooms, kinda cheap",
  listing_id: 2,
  user_id: 4
)
comment.save
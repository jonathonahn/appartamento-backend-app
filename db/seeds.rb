# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Group.create!([
  {
    name: "pickfordians",
    image: "https://media.istockphoto.com/photos/group-of-active-mature-friends-in-park-stacking-hands-after-workout-picture-id1319764588?b=1&k=20&m=1319764588&s=170667a&w=0&h=4UREEAMGkABBhFUSh5-EdOgtX4Pl6lJHChx5MYSZ8X0="
  },
  {
    name: "dani group",
    image: "https://media.istockphoto.com/photos/group-of-active-mature-friends-in-park-stacking-hands-after-workout-picture-id1319764588?b=1&k=20&m=1319764588&s=170667a&w=0&h=4UREEAMGkABBhFUSh5-EdOgtX4Pl6lJHChx5MYSZ8X0="
  }
])

User.create!([
  {
    name: "raymond",
    email: "raymond@gmail.com",
    password: "password",
    password_confirmation: "password",
    group_id: 1,
    image: "https://i.kym-cdn.com/photos/images/newsfeed/000/970/542/3cd.jpg",
},
{
  name: "james",
  email: "james@gmail.com",
  password: "password",
  password_confirmation: "password",
  group_id: 1,
  image: "https://i.kym-cdn.com/photos/images/newsfeed/000/970/542/3cd.jpg",
},
{
  name: "jon",
  email: "jon@gmail.com",
  password: "password",
  password_confirmation: "password",
  group_id: 1,
  image: "https://i.kym-cdn.com/photos/images/newsfeed/000/970/542/3cd.jpg",
},
{
  name: "nathan",
  email: "nathan@gmail.com",
  password: "password",
  password_confirmation: "password",
  group_id: 1,
  image: "https://i.kym-cdn.com/photos/images/newsfeed/000/970/542/3cd.jpg",
},
{
  name: "dani",
  email: "dani@gmail.com",
  password: "password",
  password_confirmation: "password",
  group_id: 2,
  image: "https://i.kym-cdn.com/photos/images/newsfeed/000/970/542/3cd.jpg",
},
])

Listing.create!([
  {
    address: "8961 cadillac ave",
    group_id: 1,
    status: "pending contact",
    url: "https://www.apartments.com/8961-cadillac-ave-los-angeles-ca/5r85qzq/",
    image: "https://images1.apartments.com/i2/r-2i-_80D6viKkNuzcxAu_cytXWt7HrLNOLTx-cSeTE/116/8961-cadillac-ave-los-angeles-ca-primary-photo.jpg?p=1",
    bed: 4,
    bath: 3,
    squarefeet: 1432,
  },
  {
    address: "4650 mascot  st",
    group_id: 1,
    status: "denied",
    url: "https://www.zillow.com/homedetails/4650-Mascot-St-Los-Angeles-CA-90019/2115431785_zpid/",
    image: "https://photos.zillowstatic.com/fp/6bbea42bb41b7d27de40057ca969dcf2-uncropped_scaled_within_1536_1152.webp",
    bed: 5,
    bath: 4,
    squarefeet: 1500,
  },
  {
    address: "4603 pickford st",
    group_id: 1,
    status: "confirmed",
    url: "https://www.zillow.com/homedetails/4601-Pickford-St-Los-Angeles-CA-90019/20602010_zpid/",
    image: "https://photos.zillowstatic.com/fp/d6aaa12b78cb6cd02460e9976b5080ca-uncropped_scaled_within_1536_1152.webp",
    bed: 4,
    bath: 4,
    squarefeet: 1645,
  },
  {
    address: "1233 s westgate ave",
    group_id: 1,
    status: "pending walkthrough",
    url: "https://www.apartments.com/1233-s-westgate-ave-los-angeles-ca/y14z29r/",
    image: "https://images1.apartments.com/i2/Q9tz0Bb7coDqI38JXn-tciJXDWqCG5rPoYbjwCYiTNs/116/1233-s-westgate-ave-los-angeles-ca-building-photo.jpg?p=1",
    bed: 3,
    bath: 3,
    squarefeet: 1476,
  },
  {
    address: "1234 test street",
    group_id: 2,
    status: "does not exist",
    url: "whatever.com",
    bed: 69,
    bath: 420,
    squarefeet: 69420,
  },
])

Comment.create!([
  {
    text: "real nice",
    listing_id: 1,
    user_id: 1
  },
  {
    text: "i like this",
    listing_id: 1,
    user_id: 2
  },
  {
    text: "apparently not interested in 4 tenants???",
    listing_id: 1,
    user_id: 2
  },
  {
    text: "big place iwht 5 rooms, kinda cheap",
    listing_id: 2,
    user_id: 2
  },
  {
    text: "this place doesn't even exist",
    listing_id: 5,
    user_id: 5
  }
])
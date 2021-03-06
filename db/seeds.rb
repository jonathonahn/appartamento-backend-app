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
    image: "https://i.pinimg.com/originals/85/57/8a/85578ad88c95b86231fbd13d852047af.jpg",
},
{
  name: "james",
  email: "james@gmail.com",
  password: "password",
  password_confirmation: "password",
  group_id: 1,
  image: "https://i80sportsblog.com/wp-content/uploads/2013/08/james-harden-beard-gif.gif",
},
{
  name: "jon",
  email: "jon@gmail.com",
  password: "password",
  password_confirmation: "password",
  group_id: 1,
  image: "https://melmagazine.com/wp-content/uploads/2021/01/66f-1.jpg",
},
{
  name: "nathan",
  email: "nathan@gmail.com",
  password: "password",
  password_confirmation: "password",
  group_id: 1,
  image: "https://m.media-amazon.com/images/M/MV5BNjYzODk1NTE5NF5BMl5BanBnXkFtZTgwNzUzMTY2MjE@._V1_UY1200_CR485,0,630,1200_AL_.jpg",
},
{
  name: "dani",
  email: "dani@gmail.com",
  password: "password",
  password_confirmation: "password",
  group_id: 2,
  image: "https://i.kym-cdn.com/photos/images/newsfeed/000/970/542/3cd.jpg",
},
{
  name: "dwayne",
  email: "dwayne@therock.com",
  password: "password",
  password_confirmation: "password",
  group_id: 1,
  image: "https://i.kym-cdn.com/photos/images/newsfeed/000/970/542/3cd.jpg",
},
])

Listing.create!([
  {
    address: "8961 cadillac ave",
    group_id: 1,
    status: "Application Submitted",
    url: "https://www.apartments.com/8961-cadillac-ave-los-angeles-ca/5r85qzq/",
    image: "https://images1.apartments.com/i2/r-2i-_80D6viKkNuzcxAu_cytXWt7HrLNOLTx-cSeTE/116/8961-cadillac-ave-los-angeles-ca-primary-photo.jpg?p=1",
    beds: 4,
    baths: 3,
    squarefeet: 1432,
    rent: 4026,
  },
  {
    address: "4650 mascot  st",
    group_id: 1,
    status: "Denied",
    url: "https://www.zillow.com/homedetails/4650-Mascot-St-Los-Angeles-CA-90019/2115431785_zpid/",
    image: "https://photos.zillowstatic.com/fp/6bbea42bb41b7d27de40057ca969dcf2-uncropped_scaled_within_1536_1152.webp",
    beds: 5,
    baths: 4,
    squarefeet: 1500,
    rent: 4650,
  },
  {
    address: "4603 pickford st",
    group_id: 1,
    status: "Confirmed",
    url: "https://www.zillow.com/homedetails/4601-Pickford-St-Los-Angeles-CA-90019/20602010_zpid/",
    image: "https://photos.zillowstatic.com/fp/d6aaa12b78cb6cd02460e9976b5080ca-uncropped_scaled_within_1536_1152.webp",
    beds: 4,
    baths: 4,
    squarefeet: 1645,
    rent: 4600,
  },
  {
    address: "1233 s westgate ave",
    group_id: 1,
    status: "Pending Walkthrough",
    url: "https://www.apartments.com/1233-s-westgate-ave-los-angeles-ca/y14z29r/",
    image: "https://images1.apartments.com/i2/Q9tz0Bb7coDqI38JXn-tciJXDWqCG5rPoYbjwCYiTNs/116/1233-s-westgate-ave-los-angeles-ca-building-photo.jpg?p=1",
    beds: 3,
    baths: 3,
    squarefeet: 1476,
    rent: 4495,
  },
  {
    address: "2410 carmona ave",
    group_id: 1,
    status: "Pending Walkthrough",
    url: "https://www.apartments.com/2410-carmona-ave-los-angeles-ca/xxhsg0n/",
    image: "https://images1.apartments.com/i2/LxmeraqjUocgjmbrVWI1qmYCPPc7rxM7dGSNqYKhARE/113/2410-carmona-ave-los-angeles-ca-primary-photo.jpg?p=1",
    beds: 4,
    baths: 4.5,
    squarefeet: 1613,
    rent: 5000,
  },
  {
    address: "3869 s la cienega blvd",
    group_id: 1,
    status: "Application Submitted",
    url: "https://www.zillow.com/homedetails/3689-S-La-Cienega-Blvd-Los-Angeles-CA-90016/111916585_zpid/",
    image: "https://photos.zillowstatic.com/fp/2c6c4868518e9ac20da0cd6bd10b17cb-uncropped_scaled_within_1344_1008.webp",
    beds: 3,
    baths: 2.5,
    squarefeet: 2070,
    rent: 4984,
  },
  {
    address: "5535 Westlawn Ave",
    group_id: 1,
    status: "Application Submitted",
    url: "https://www.apartments.com/avalon-playa-vista-los-angeles-ca/ywt6vxr/",
    image: "https://images1.apartments.com/i2/3MWkih06hpYwVXcohBfipFQdS0sD84eXIvLG9cCOFLg/113/avalon-playa-vista-los-angeles-ca-finish-package-ii-kitchen-with-quartz-co.jpg?p=1",
    beds: 3,
    baths: 2,
    squarefeet: 1420,
    rent: 4815,
  },
  {
    address: "748 Grace Ave",
    group_id: 1,
    status: "Denied",
    url: "https://www.zillow.com/homedetails/748-Grace-Ave-Inglewood-CA-90301/2069296365_zpid/",
    image: "https://photos.zillowstatic.com/fp/29daf92a24ff848945fb07a2918294c9-uncropped_scaled_within_1344_1008.webp",
    beds: 4,
    baths: 3.5,
    squarefeet: 2355,
    rent: 5499,
  },
  {
    address: "4250 Glencoe Ave",
    group_id: 1,
    status: "Additional Information Requested",
    url: "https://www.apartments.com/tierra-del-rey-marina-del-rey-ca/gl53nfw/",
    image: "https://images1.apartments.com/i2/ov4eho2VSTWa0hh1JefbyonPxUXaOPfNBh_rAZO10Jk/113/tierra-del-rey-marina-del-rey-ca-building-photo.jpg?p=1",
    beds: 3,
    baths: 2,
    squarefeet: 1670,
    rent: 5379,
  },
  {
    address: "1234 test street",
    group_id: 2,
    status: "does not exist",
    url: "whatever.com",
    beds: 5,
    baths: 5,
    squarefeet: 69420,
    rent: 42069,
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
    listing_id: 10,
    user_id: 5
  },
  {
    text: "nathan and james checked out. spacious rooms, good view. highway noise. trafficy. kitchen small.",
    listing_id: 5,
    user_id: 4
  },

])
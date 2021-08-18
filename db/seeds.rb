# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Property.create(address1: '1544 W Satinwood Dr', city: 'Phoenix', state: 'AZ', zipcode: 85048, price: '')
user = User.create(email: "ken@test.com", firstName: "Kenyada", lastName: "Ijiwoye", middleName: "", title: "Agent", about: "The about me section", workPhone: 555872559, mobilePhone: 778799282, skype: "kenijiwoye", facebook: "kenijiwoye", twitter: "kenijiwoye", instagram: "kenijiwoye", youtube: "kenijiwoye", pinterest: "kenijiwoye")

user.avatar.attach(io: File.open(Rails.root.join('app/assets/images/seed_img/profile_pic_demo.jpg')),filename:'profile_pic_demo.jpg')

Amenity.create(name:'large yard')
Amenity.create(name:'washer & dryer')
Amenity.create(name:'microwave')
Amenity.create(name:'outdoor kitchen')
Amenity.create(name:'balcony')

amenities = Amenity.all

property = Property.create( address1: "1544 W Satinwood Dr",
address2: "",
city: "Phoenix",
state: "AZ",
zipcode: 85048,
description:
 "Offers will be reviewed after 8/18. Please submit your best offer by 8/18 at 11:59 pm. Prepare to be impressed with this gorgeous 4 bedroom, 3 bathroom home in Phoenix that is waiting for you! Head inside to view the open layout, perfect for entertaining or a live, work, play lifestyle. The household chef will adore cooking in this kitchen, thanks to the granite countertops, large kitchen island, and gas stovetop. Don't miss the primary bedroom with its en-suite bathroom with a dual sink vanity, private balcony, and roomy walk-in closet. ",
price: 511900,
propertyType: "house",
status: "sale",
area: 1977,
beds: 4,
baths: 3,
garage: 1,
user_id: user.last.id,)

property.amenities.update([amenities])

property.images.attach([
    io: File.open(Rails.root.join('app/assets/images/seed_img/1.webp')),filename:'1.webp',
    io: File.open(Rails.root.join('app/assets/images/seed_img/2.webp')),filename:'2.webp',
    io: File.open(Rails.root.join('app/assets/images/seed_img/3.webp')),filename:'3.webp',
    io: File.open(Rails.root.join('app/assets/images/seed_img/4.webp')),filename:'4.webp',
    io: File.open(Rails.root.join('app/assets/images/seed_img/5.webp')),filename:'5.webp',
    io: File.open(Rails.root.join('app/assets/images/seed_img/6.webp')),filename:'6.webp',
    io: File.open(Rails.root.join('app/assets/images/seed_img/7.webp')),filename:'7.webp',
    io: File.open(Rails.root.join('app/assets/images/seed_img/8.webp')),filename:'8.webp',
    io: File.open(Rails.root.join('app/assets/images/seed_img/9.webp')),filename:'9.webp',
])
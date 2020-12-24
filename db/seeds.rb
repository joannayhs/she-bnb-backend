# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

joanna = User.create(email:"joannayuhas@gmail.com", first_name: "Joanna", last_name: "Yuhas", password: "password")
ruff = joanna.listings.create(title: "The Ruff House", description: "Beautiful farm house in Lambertville.", type_of: "Private Room", max_guests: 1, num_of_beds: 1, price: 50.00)
ruff_address = Property.create(street: "389 Rock Road E", city: "Lambertville", state: "NJ", zip: "08530", listing_id: 1)
hannah = User.create(email: "hannah@gmail.com", first_name: "Hannah", last_name: "Smith", password: "password")
chattanooga = hannah.listings.create(title: "Urban Cottage", description: "The Urban Cottage has a farmhouse feel with bead board throughout the cottage. It is cute and yet simple designed with a cozy feel- mixed with old and new elements. It is also conveniently located less than 10 minutes from downtown.", type_of: "Entire guesthouse", max_guests: 2, num_of_beds: 1, price: 38.00)
chattanooga_prop = Property.create(street: "937 Shallowford Road", city: "Chattanooga", state: "TN", zip: "37411", listing_id: 2)
chattanooga.images.create(description: "Kitchen", url: "https://a0.muscache.com/im/pictures/545757a2-d51e-4818-bcce-51a5cb30cac0.jpg?im_w=1200")
chattanooga.images.create(description: "Bedroom", url: "https://a0.muscache.com/im/pictures/15e4c520-a096-4fcf-af8d-07283dd7aca0.jpg?im_w=1200")
chattanooga.images.create(description: "Bathroom", url: "https://a0.muscache.com/im/pictures/d4b67869-226f-4824-a4ff-05eb59b12e77.jpg?im_w=720")
joanna.reservations.create(listing_id: 2, start_date: "2020-10-22", end_date: "2020-10-23")
joanna.reviews.create(content: "This place was great! It was clean and the host was great!", stars: 5, listing_id:2)

chattanooga.amenities.create(name: "Wifi")
chattanooga.amenities.create(name: "Kitchen")
chattanooga.amenities.create(name: "Parking")
chattanooga.amenities.create(name: "TV")
chattanooga.amenities.create(name: "Iron")
chattanooga.amenities.create(name: "Hair Dryer")
chattanooga.amenities.create(name: "Dedicated Workspace")
chattanooga.amenities.create(name: "Hangers")
chattanooga.amenities.create(name: "Dryer")
chattanooga.amenities.create(name: "Washer")
Amenity.create(name: "Indoor Fireplace")
Amenity.create(name: "Heating")
Amenity.create(name: "Air Conditioning")
Amenity.create(name: "Dishwasher")
Amenity.create(name: "Coffee Maker")
Amenity.create(name: "Private Entrance")
Amenity.create(name: "Lockbox")
Amenity.create(name: "Shampoo")
Amenity.create(name: "Conditioner")
Amenity.create(name: "Patio or Balcony")








# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

joanna = User.create(email:"joannayuhas@gmail.com", first_name: "Joanna", last_name: "Yuhas", password: "password")
ruff = joanna.listing.create(title: "The Ruff House", description: "Beautiful farm house in Lambertville.", type: "Private Room", max_guests: 1, num_of_beds: 1, price: 50.00)
ruff_address = Property.create(street: "389 Rock Road E", city: "Lambertville", state: "NJ", zip: 08530, listing_id: 1)
chattanooga = Listing.create(title: "Urban Cottage", description: "The Urban Cottage has a farmhouse feel with bead board throughout the cottage. It is cute and yet simple designed with a cozy feel- mixed with old and new elements. It is also conveniently located less than 10 minutes from downtown.", type: "Entire guesthouse", max_guests: 2, num_of_beds: 1, price: 38.00)
chattanooga_prop = Property.create(street: "937 Shallowford Road", city: "Chattanooga", state: "TN", zip: 37411, listing_id: 2)
joanna.reservations.create(listing_id: 2, start_date: "2020-10-22", end_date: "2020-10-23")
joanna.reviews.create(content: "This place was great! It was clean and the host was great!", stars: 5, listing_id:2)
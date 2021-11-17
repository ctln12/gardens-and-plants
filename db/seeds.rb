puts 'Cleaning database...'
Garden.destroy_all if Rails.env.development?

puts 'Creating gardens...'
my_garden = Garden.create!(
  name: 'My Little Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
)
puts "Created #{my_garden.name}"

other_garden = Garden.create!(
  name: 'Another Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
)
puts "Created #{my_garden.name}"

puts 'Finished!'

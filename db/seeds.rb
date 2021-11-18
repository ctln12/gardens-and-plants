puts 'Cleaning database...'
Garden.destroy_all if Rails.env.development?

puts 'Creating gardens...'
my_garden = Garden.create!(
  name: 'My Little Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
)
puts "  Created #{my_garden.name}"

other_garden = Garden.create!(
  name: 'Another Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
)
puts "  Created #{my_garden.name}"

puts 'Creating plants...'
monstera = Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: my_garden
)
puts "  Created #{monstera.name}"

philo = Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: my_garden
)
puts "  Created #{philo.name}"

dieff = Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: other_garden
)
puts "  Created #{dieff.name}"

puts 'Finished!'

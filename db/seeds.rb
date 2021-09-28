puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'french' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian' }
chintok = { name: "Chintok", address: "88, Route Royal, China", category: 'chinese' }
sushi_world =  { name: "Sushi World", address: "99, South Korea", category: 'japanese' }
choco_world = { name: "Choco World", address: "7 Boundary St, Belgium", category: 'belgian' }


[ dishoom, pizza_east, chintok, sushi_world, choco_world].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

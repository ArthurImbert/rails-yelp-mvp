puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dumpling = { name: "Dumpling Legend", address: "7 Boundary St, London E2 7JE", phone_number: "0612121212", category: "chinese" }
pizza_east = { name: "Pizza East", address: "8 Boundary St, Manchester E2 7JE", phone_number: "0613131313", category: "italian" }
escargot = { name: "Escargot", address: "7 Boundary St, Paris E2 7JE", phone_number: "0614141414", category: "french" }
sushiz = { name: "Suchiz", address: "7 Boundary St, Tokyo E2 7JE", phone_number: "0615151515", category: "japanese" }
fritoz = { name: "Fritoz", address: "7 Boundary St, Brussel E2 7JE", phone_number: "0616161616", category: "belgian" }

[ dumpling, pizza_east, escargot, sushiz, fritoz ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
City.delete_all
Sense.delete_all
Attraction.delete_all
Profile.delete_all
Specific.delete_all

# Create the cities
puts "Creating cities..."
newyork = City.create(city_name: "New York", city_description: "The Big Apple", city_image: "newyork.jpg", hear_attraction: "Lion King on Broadway", see_attraction: "New York Skyline from Staten Island Ferry", smell_attraction: "True NY Style Pizza", taste_attraction: "Cronut", touch_attraction: "Central Park")
chicago = City.create(city_name: "Chicago", city_description: "City of Broad Shoulders", city_image: "chicago.jpg", hear_attraction: "El Train", see_attraction: "Willis Tower Skydeck", smell_attraction: "Garrett Mix Popcorn", taste_attraction: "Gibson's Steak", touch_attraction: "Wrigley Field Ivy")
orlando = City.create(city_name: "Orlando", city_description: "The Happiest Place on Earth!", city_image: "orlando.jpg", hear_attraction: "It's a Small World After All", see_attraction: "Epcot Center Fireworks", smell_attraction: "Soarin' Scents", taste_attraction: "Harry Potter World Butter Beer", touch_attraction: "High Five with Mickey Mouse")
philadelphia = City.create(city_name: "Philadelphia", city_description: "City of Brotherly Love", city_image: "philadelphia.jpg", hear_attraction: "Philadelphia Philharmonic", see_attraction: "Liberty Bell", smell_attraction: "Inside of Independence Hall", taste_attraction: "Pat's King of Cheese Steaks", touch_attraction: "Rocky Steps")
lasvegas = City.create(city_name: "Las Vegas", city_description: "Vegas, Baby!", city_image: "lasvegas.jpg",  hear_attraction: "World Series of Poker 'All-In' Call", see_attraction: "Bellagio Fountains", smell_attraction: "Aria Lobby Smell", taste_attraction: "Holstein's Gold Standard Burger", touch_attraction: "Blackjack Felt")

# Create the senses
puts "Creating senses..."
see = Sense.create(sense_name: "See")
smell = Sense.create(sense_name: "Smell")
taste = Sense.create(sense_name: "Taste")
touch = Sense.create(sense_name: "Touch")
hear = Sense.create(sense_name: "Hear")

# Create the attractions
puts "Creating attractions..."
liberty = Attraction.create(attraction_name: "Liberty Bell")
philly = Attraction.create(attraction_name: "Inside of Independence Hall")
cheesesteak = Attraction.create(attraction_name: "Pat's King of Cheese Steaks")
philly2 = Attraction.create(attraction_name: "Rocky Steps")
philly3 = Attraction.create(attraction_name: "Philadelphia Philharmonic")

willis = Attraction.create(attraction_name: "Willis Tower Skydeck")
garrett = Attraction.create(attraction_name: "Garrett Mix Popcorn")
gibsons = Attraction.create(attraction_name: "Gibson's Steak")
ivy = Attraction.create(attraction_name: "Wrigley Field Ivy")
el = Attraction.create(attraction_name: "El Train")

ferry = Attraction.create(attraction_name: "New York Skyline from Staten Island Ferry")
ny = Attraction.create(attraction_name: "True NY Style Pizza")
cronut = Attraction.create(attraction_name: "Cronut")
ny2 = Attraction.create(attraction_name: "Central Park")
broadway = Attraction.create(attraction_name: "Lion King on Broadway")

bellagio = Attraction.create(attraction_name: "Bellagio Fountains")
lv = Attraction.create(attraction_name: "Aria Lobby Smell")
holsteins = Attraction.create(attraction_name: "Holstein's Gold Standard Burger")
felt = Attraction.create(attraction_name: "Blackjack Felt")
allin = Attraction.create(attraction_name: "World Series of Poker All-In")

fireworks = Attraction.create(attraction_name: "Epcot Center Fireworks")
soarin = Attraction.create(attraction_name: "Soarin' Scents")
california = Attraction.create(attraction_name: "Harry Potter World Butter Beer")
orlando_touch = Attraction.create(attraction_name: "High Five with Mickey Mouse")
small = Attraction.create(attraction_name: "It's a Small World After All")

# Create the profiles
puts "Creating profiles..."
adventurer = Profile.create(profile_name: "Adventurer")
historian = Profile.create(profile_name: "Historian")
techy = Profile.create(profile_name: "Techy")
zen = Profile.create(profile_name: "Zen Master")
lifestyler = Profile.create(profile_name: "Lifestyler")

puts "Creating specific sense attractions..."

# Create the specific sense attractions for Philadelphia
Specific.create(city_id: philadelphia.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: liberty.id)
Specific.create(city_id: philadelphia.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: philly.id)
Specific.create(city_id: philadelphia.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: cheesesteak.id)
Specific.create(city_id: philadelphia.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: philly2.id)
Specific.create(city_id: philadelphia.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: philly3.id)

# Create the specific sense attractions for Chicago
Specific.create(city_id: chicago.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: willis.id)
Specific.create(city_id: chicago.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: garrett.id)
Specific.create(city_id: chicago.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: gibsons.id)
Specific.create(city_id: chicago.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: ivy.id)
Specific.create(city_id: chicago.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: el.id)

# Create the specific sense attractions for New York
Specific.create(city_id: newyork.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: ferry.id)
Specific.create(city_id: newyork.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: ny.id)
Specific.create(city_id: newyork.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: cronut.id)
Specific.create(city_id: newyork.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: ny2.id)
Specific.create(city_id: newyork.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: broadway.id)

# Create the specific sense attractions for Las Vegas
Specific.create(city_id: lasvegas.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: bellagio.id)
Specific.create(city_id: lasvegas.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: lv.id)
Specific.create(city_id: lasvegas.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: holsteins.id)
Specific.create(city_id: lasvegas.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: felt.id)
Specific.create(city_id: lasvegas.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: allin.id)

# Create the specific sense attractions for Orlando
Specific.create(city_id: orlando.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: fireworks.id)
Specific.create(city_id: orlando.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: soarin.id)
Specific.create(city_id: orlando.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: california.id)
Specific.create(city_id: orlando.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: orlando_touch.id)
Specific.create(city_id: orlando.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: small.id)

puts "There are now #{City.count} cities, #{Attraction.count} attractions, and #{Specific.count} specific sense attractions in the database."
